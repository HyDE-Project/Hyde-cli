_Hyde () {
    if [[ $(type -t _get_comp_words_by_ref) != function ]]; then
        echo _get_comp_words_by_ref: function not defined.  Make sure the bash-completions system package is installed
        return 1
    fi

    local words cword
    _get_comp_words_by_ref -n "$COMP_WORDBREAKS" words cword

    local -a literals=("revert" "--uninstall" "wallbash" "--copy" "--opacity" "-j" "save" "unset" "3" "--stop" "--animations" "backup" "BackUp" "list" "cursor" "-p" "--no-custom" "Config" "--install" "--scan" "--record-focus" "theme" "bookmarks" "0" "-freeze" "--reset" "toggle" "pastebin" "1" "systeminfo" "--all" "theme" "--delete" "upgrade" "toggle" "waybar" "reload" "update" "all" "glyph" "--wipe" "--print-monitor" "game" "shell" "Config" "info" "search" "set" "reload" "reset" "--animations" "--site" "version" "select" "--blur" "variety" "theme" "clean" "-f" "reload" "--print-snip" "--reset" "reload" "Clone" "check" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "show" "inject" "power" "binds" "rebuild" "screencap" "man" "asus_patch" "events" "override" "--rebuild" "--blur" "restore" "-d" "emoji" "--browser" "sddm" "run" "--option" "cache" "control" "prev" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "audio_idle" "Link" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "next" "size" "flatpak" "Config" "screencap" "--record-snip" "prev" "2" "--revert" "set" "patch" "select" "Package" "control")

    declare -A literal_transitions
    literal_transitions[0]="([35]=24 [64]=2 [37]=3 [52]=4 [2]=5 [36]=25 [21]=7 [87]=8 [88]=9 [107]=10 [90]=11 [43]=12 [91]=13 [77]=14 [29]=15 [11]=16 [69]=17 [14]=18 [71]=19 [72]=20 [80]=21 [33]=23 [73]=1 [83]=6)"
    literal_transitions[1]="([26]=26 [42]=26 [6]=34 [49]=26 [7]=29)"
    literal_transitions[2]="([120]=26 [44]=39)"
    literal_transitions[5]="([34]=26 [95]=32)"
    literal_transitions[6]="([99]=26 [17]=26 [12]=26 [63]=26)"
    literal_transitions[7]="([53]=26 [101]=26 [118]=26 [92]=26 [117]=26)"
    literal_transitions[8]="([56]=26)"
    literal_transitions[9]="([98]=26 [79]=26 [112]=27)"
    literal_transitions[11]="([75]=26 [62]=26)"
    literal_transitions[12]="([119]=26)"
    literal_transitions[13]="([111]=26)"
    literal_transitions[16]="([13]=26 [38]=26 [57]=26 [0]=26)"
    literal_transitions[17]="([55]=30 [103]=26 [47]=26 [106]=26 [67]=26)"
    literal_transitions[18]="([59]=26 [45]=26 [105]=26 [31]=26)"
    literal_transitions[19]="([85]=26 [76]=26 [27]=33 [46]=31 [39]=26 [74]=36 [22]=37)"
    literal_transitions[20]="([78]=26 [110]=26 [93]=35)"
    literal_transitions[24]="([109]=28 [114]=26 [48]=26 [108]=26 [121]=26)"
    literal_transitions[27]="([9]=26 [113]=26 [20]=26 [41]=26 [24]=26 [97]=26 [60]=26 [100]=26 [19]=26)"
    literal_transitions[28]="([30]=26)"
    literal_transitions[29]="([4]=26 [50]=26 [70]=26 [82]=26)"
    literal_transitions[30]="([61]=26)"
    literal_transitions[31]="([25]=26 [51]=26 [86]=26)"
    literal_transitions[32]="([23]=26 [28]=26 [115]=26 [8]=26)"
    literal_transitions[33]="([89]=26 [32]=26 [40]=26 [3]=26)"
    literal_transitions[34]="([10]=26 [54]=26 [68]=26 [96]=26)"
    literal_transitions[35]="([1]=26 [18]=26 [116]=26)"
    literal_transitions[36]="([5]=26 [102]=26 [15]=26 [58]=26 [84]=26)"
    literal_transitions[37]="([81]=26 [16]=26)"
    literal_transitions[38]="([65]=26)"
    literal_transitions[39]="([104]=26 [94]=26 [66]=26)"

    declare -A match_anything_transitions
    match_anything_transitions=([23]=26 [10]=26 [3]=26 [14]=26 [0]=22 [15]=26 [21]=26 [4]=26 [22]=38 [25]=26)
    declare -A subword_transitions

    local state=0
    local word_index=1
    while [[ $word_index -lt $cword ]]; do
        local word=${words[$word_index]}

        if [[ -v "literal_transitions[$state]" ]]; then
            declare -A state_transitions
            eval "state_transitions=${literal_transitions[$state]}"

            local word_matched=0
            for literal_id in $(seq 0 $((${#literals[@]} - 1))); do
                if [[ ${literals[$literal_id]} = "$word" ]]; then
                    if [[ -v "state_transitions[$literal_id]" ]]; then
                        state=${state_transitions[$literal_id]}
                        word_index=$((word_index + 1))
                        word_matched=1
                        break
                    fi
                fi
            done
            if [[ $word_matched -ne 0 ]]; then
                continue
            fi
        fi

        if [[ -v "match_anything_transitions[$state]" ]]; then
            state=${match_anything_transitions[$state]}
            word_index=$((word_index + 1))
            continue
        fi

        return 1
    done


    local prefix="${words[$cword]}"

    local shortest_suffix="$word"
    for ((i=0; i < ${#COMP_WORDBREAKS}; i++)); do
        local char="${COMP_WORDBREAKS:$i:1}"
        local candidate="${word##*$char}"
        if [[ ${#candidate} -lt ${#shortest_suffix} ]]; then
            shortest_suffix=$candidate
        fi
    done
    local superfluous_prefix=""
    if [[ "$shortest_suffix" != "$word" ]]; then
        local superfluous_prefix=${word%$shortest_suffix}
    fi

    if [[ -v "literal_transitions[$state]" ]]; then
        local state_transitions_initializer=${literal_transitions[$state]}
        declare -A state_transitions
        eval "state_transitions=$state_transitions_initializer"

        for literal_id in "${!state_transitions[@]}"; do
            local literal="${literals[$literal_id]}"
            if [[ $literal = "${prefix}"* ]]; then
                local completion=${literal#"$superfluous_prefix"}
                COMPREPLY+=("$completion ")
            fi
        done
    fi

    return 0
}

complete -o nospace -F _Hyde Hyde
