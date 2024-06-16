_Hyde () {
    if [[ $(type -t _get_comp_words_by_ref) != function ]]; then
        echo _get_comp_words_by_ref: function not defined.  Make sure the bash-completions system package is installed
        return 1
    fi

    local words cword
    _get_comp_words_by_ref -n "$COMP_WORDBREAKS" words cword

    local -a literals=("revert" "--uninstall" "wallbash" "--copy" "--opacity" "-j" "save" "unset" "3" "--stop" "--animations" "backup" "BackUp" "list" "cursor" "-p" "--no-custom" "Config" "--install" "--scan" "--record-focus" "theme" "bookmarks" "0" "-freeze" "toggle" "pastebin" "1" "systeminfo" "--all" "theme" "--delete" "toggle" "upgrade" "waybar" "reload" "update" "all" "glyph" "--wipe" "--print-monitor" "game" "--browser" "shell" "Config" "info" "search" "reload" "reset" "--animations" "version" "select" "--blur" "--site" "theme" "clean" "size" "reload" "-f" "--print-snip" "reload" "Clone" "check" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "show" "inject" "power" "set" "binds" "rebuild" "screencap" "man" "asus_patch" "events" "override" "--rebuild" "--blur" "restore" "-d" "emoji" "sddm" "run" "--option" "cache" "control" "prev" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "flatpak" "Config" "screencap" "--record-snip" "2" "--revert" "set" "patch" "select" "Package" "control")

    declare -A literal_transitions
    literal_transitions[0]="([34]=24 [62]=2 [36]=3 [50]=4 [2]=5 [35]=25 [21]=7 [85]=8 [86]=9 [105]=10 [88]=11 [43]=12 [89]=13 [76]=14 [28]=15 [11]=16 [67]=17 [14]=18 [69]=19 [70]=20 [79]=21 [33]=23 [71]=1 [82]=6)"
    literal_transitions[1]="([25]=27 [41]=27 [6]=31 [48]=27 [7]=32)"
    literal_transitions[2]="([115]=27 [44]=33)"
    literal_transitions[5]="([32]=27 [93]=28)"
    literal_transitions[6]="([96]=27 [17]=27 [12]=27 [61]=27)"
    literal_transitions[7]="([51]=27 [99]=27 [113]=27 [90]=27 [112]=27)"
    literal_transitions[8]="([54]=27)"
    literal_transitions[9]="([97]=27 [78]=27 [108]=26)"
    literal_transitions[11]="([74]=27 [60]=27)"
    literal_transitions[12]="([114]=27)"
    literal_transitions[13]="([107]=27)"
    literal_transitions[16]="([13]=27 [37]=27 [55]=27 [0]=27)"
    literal_transitions[17]="([101]=27 [104]=27 [72]=27 [65]=27)"
    literal_transitions[18]="([57]=27 [45]=27 [103]=27 [30]=27)"
    literal_transitions[19]="([84]=27 [75]=27 [26]=37 [46]=36 [38]=27 [73]=34 [22]=35)"
    literal_transitions[20]="([77]=27 [106]=27 [91]=29)"
    literal_transitions[24]="([47]=27 [56]=30 [116]=27)"
    literal_transitions[26]="([9]=27 [109]=27 [20]=27 [40]=27 [24]=27 [95]=27 [59]=27 [98]=27 [19]=27)"
    literal_transitions[28]="([23]=27 [27]=27 [110]=27 [8]=27)"
    literal_transitions[29]="([1]=27 [18]=27 [111]=27)"
    literal_transitions[30]="([29]=27)"
    literal_transitions[31]="([10]=27 [52]=27 [66]=27 [94]=27)"
    literal_transitions[32]="([4]=27 [49]=27 [68]=27 [81]=27)"
    literal_transitions[33]="([102]=27 [92]=27 [64]=27)"
    literal_transitions[34]="([5]=27 [100]=27 [15]=27 [58]=27 [83]=27)"
    literal_transitions[35]="([80]=27 [16]=27)"
    literal_transitions[36]="([42]=27 [53]=27)"
    literal_transitions[37]="([87]=27 [31]=27 [39]=27 [3]=27)"
    literal_transitions[38]="([63]=27)"

    declare -A match_anything_transitions
    match_anything_transitions=([23]=27 [10]=27 [3]=27 [14]=27 [0]=22 [15]=27 [21]=27 [4]=27 [22]=38 [25]=27)
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
