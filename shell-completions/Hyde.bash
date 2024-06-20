_Hyde () {
    if [[ $(type -t _get_comp_words_by_ref) != function ]]; then
        echo _get_comp_words_by_ref: function not defined.  Make sure the bash-completions system package is installed
        return 1
    fi

    local words cword
    _get_comp_words_by_ref -n "$COMP_WORDBREAKS" words cword

    local -a literals=("revert" "--uninstall" "wallbash" "--copy" "--opacity" "-j" "save" "unset" "3" "--stop" "--animations" "backup" "BackUp" "list" "cursor" "-p" "--no-custom" "Config" "--install" "--scan" "--record-focus" "theme" "bookmarks" "0" "-freeze" "--reset" "toggle" "pastebin" "1" "systeminfo" "--all" "theme" "--delete" "upgrade" "toggle" "waybar" "reload" "update" "all" "glyph" "--wipe" "--print-monitor" "game" "shell" "Config" "info" "search" "set" "reload" "reset" "--style" "--animations" "--site" "version" "select" "--blur" "variety" "theme" "clean" "airplane_mode" "-f" "reload" "--browser" "--print-snip" "--reset" "reload" "Clone" "check" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "show" "inject" "power" "binds" "rebuild" "screencap" "man" "asus_patch" "events" "override" "--rebuild" "--blur" "restore" "-d" "--browser" "sddm" "run" "--option" "cache" "control" "prev" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "next" "size" "flatpak" "Config" "screencap" "emoji" "--record-snip" "prev" "2" "--revert" "set" "patch" "select" "Package" "control")

    declare -A literal_transitions
    literal_transitions[0]="([35]=24 [67]=2 [37]=3 [53]=4 [2]=5 [36]=25 [21]=7 [89]=8 [90]=9 [109]=10 [92]=11 [43]=12 [93]=13 [80]=14 [29]=15 [11]=16 [72]=17 [14]=18 [74]=19 [75]=20 [83]=21 [33]=23 [76]=1 [86]=6)"
    literal_transitions[1]="([26]=26 [42]=26 [6]=31 [49]=26 [7]=32)"
    literal_transitions[2]="([123]=26 [44]=33)"
    literal_transitions[5]="([34]=26 [97]=34)"
    literal_transitions[6]="([100]=26 [17]=26 [12]=26 [66]=26)"
    literal_transitions[7]="([54]=26 [103]=26 [121]=26 [94]=26 [120]=26)"
    literal_transitions[8]="([57]=26)"
    literal_transitions[9]="([59]=26 [101]=26 [82]=26 [114]=37)"
    literal_transitions[11]="([78]=26 [65]=26)"
    literal_transitions[12]="([122]=26)"
    literal_transitions[13]="([113]=26)"
    literal_transitions[16]="([13]=26 [38]=26 [58]=26 [0]=26)"
    literal_transitions[17]="([56]=30 [105]=26 [47]=26 [108]=26 [70]=26)"
    literal_transitions[18]="([61]=26 [45]=26 [107]=26 [31]=26)"
    literal_transitions[19]="([115]=29 [79]=26 [27]=28 [46]=39 [39]=26 [77]=27 [22]=36)"
    literal_transitions[20]="([81]=26 [112]=26 [95]=35)"
    literal_transitions[24]="([111]=40 [117]=26 [48]=26 [110]=26 [124]=26)"
    literal_transitions[27]="([5]=26 [104]=26 [15]=26 [60]=26 [87]=26)"
    literal_transitions[28]="([91]=26 [32]=26 [40]=26 [3]=26)"
    literal_transitions[29]="([50]=26)"
    literal_transitions[30]="([64]=26)"
    literal_transitions[31]="([10]=26 [55]=26 [71]=26 [98]=26)"
    literal_transitions[32]="([4]=26 [51]=26 [73]=26 [85]=26)"
    literal_transitions[33]="([106]=26 [96]=26 [69]=26)"
    literal_transitions[34]="([23]=26 [28]=26 [118]=26 [8]=26)"
    literal_transitions[35]="([1]=26 [18]=26 [119]=26)"
    literal_transitions[36]="([84]=26 [16]=26 [62]=26)"
    literal_transitions[37]="([9]=26 [116]=26 [20]=26 [41]=26 [24]=26 [99]=26 [63]=26 [102]=26 [19]=26)"
    literal_transitions[38]="([68]=26)"
    literal_transitions[39]="([25]=26 [52]=26 [88]=26)"
    literal_transitions[40]="([30]=26)"

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
