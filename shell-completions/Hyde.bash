_Hyde () {
    if [[ $(type -t _get_comp_words_by_ref) != function ]]; then
        echo _get_comp_words_by_ref: function not defined.  Make sure the bash-completions system package is installed
        return 1
    fi

    local words cword
    _get_comp_words_by_ref -n "$COMP_WORDBREAKS" words cword

    local -a literals=("control" "Clone" "wallbash" "::=" "--mismatch" "prev" "--opacity" "-j" "save" "Config" "3" "Config" "--animations" "--borderangle" "unset" "backup" "--stop" "BackUp" "list" "wallpaper" "--borderangle" "-p" "Config" "-w" "power" "d" "--scan" "inject" "--record-focus" "set" "theme" "binds" "rebuild" "0" "screencap" "-freeze" "size" "pastebin" "c" "man" "1" "systeminfo" "events" "asus_patch" "--blur" "toggle" "waybar" "upgrade" "restore" "toggle" "update" "all" "-d" "sddm" "emoji" "w" "game" "cache" "glyph" "control" "shell" "show" "prev" "--less" "--presrve" "sync" "--print-monitor" "reload" "mode" "check" "--opacity" "--reset" "Link" "reload" "audio_idle" "reset" "--print-all" "next" "--animations" "version" "next" "select" "branch" "select" "--blur" "-h" "run" "screencap" "--record-snip" "theme" "clean" "2" "-f" "set" "patch" "select" "--print-snip" "chaotic_aur" "reload" "revert")

    declare -A literal_transitions
    literal_transitions[0]="([48]=23 [24]=24 [50]=3 [79]=4 [2]=5 [30]=6 [53]=7 [82]=8 [57]=10 [86]=11 [61]=14 [59]=12 [60]=13 [65]=15 [39]=16 [15]=17 [41]=18 [19]=19 [69]=20 [27]=21 [47]=22 [46]=1 [67]=2)"
    literal_transitions[1]="([73]=26 [36]=26 [0]=26)"
    literal_transitions[5]="([45]=26 [68]=29)"
    literal_transitions[6]="([77]=26 [83]=26 [94]=26 [62]=26 [93]=26)"
    literal_transitions[7]="([89]=26)"
    literal_transitions[10]="([32]=26 [98]=26)"
    literal_transitions[11]="([74]=26 [42]=26 [87]=25)"
    literal_transitions[12]="([9]=26)"
    literal_transitions[13]="([95]=26)"
    literal_transitions[14]="([54]=26 [34]=26 [58]=26 [31]=30 [37]=31)"
    literal_transitions[17]="([18]=26 [51]=26 [90]=26 [99]=26)"
    literal_transitions[19]="([81]=26 [80]=26 [29]=26 [5]=26)"
    literal_transitions[20]="([11]=33)"
    literal_transitions[21]="([43]=26 [97]=26)"
    literal_transitions[23]="([72]=26 [22]=26 [17]=26 [1]=26)"
    literal_transitions[24]="([49]=26 [56]=26 [8]=27 [75]=26 [14]=28)"
    literal_transitions[25]="([16]=26 [88]=26 [28]=26 [66]=26 [35]=26 [71]=26 [96]=26 [76]=26 [26]=26)"
    literal_transitions[27]="([12]=26 [84]=26 [13]=26 [70]=26)"
    literal_transitions[28]="([6]=26 [20]=26 [78]=26 [44]=26)"
    literal_transitions[29]="([33]=26 [40]=26 [91]=26 [10]=26)"
    literal_transitions[30]="([7]=26 [85]=26 [21]=26 [52]=26 [92]=26 [23]=26)"
    literal_transitions[31]="([38]=26 [25]=26 [55]=26)"
    literal_transitions[32]="([3]=26)"
    literal_transitions[33]="([63]=26 [64]=26 [4]=26)"

    declare -A match_anything_transitions
    match_anything_transitions=([3]=26 [2]=26 [18]=26 [16]=26 [0]=9 [15]=26 [9]=32 [8]=26 [4]=26 [22]=26)
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
