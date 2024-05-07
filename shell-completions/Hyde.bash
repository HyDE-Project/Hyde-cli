_Hyde () {
    if [[ $(type -t _get_comp_words_by_ref) != function ]]; then
        echo _get_comp_words_by_ref: function not defined.  Make sure the bash-completions system package is installed
        return 1
    fi

    local words cword
    _get_comp_words_by_ref -n "$COMP_WORDBREAKS" words cword

    local -a literals=("waybar" "update" "wallbash" "::=" "sddm" "reload" "cache" "shell" "branch" "show" "sync" "backup" "wallpaper" "inject" "power" "version" "theme" "run" "man" "shell_completion" "systeminfo" "upgrade" "restore")

    declare -A literal_transitions
    literal_transitions[0]="([14]=22 [5]=23 [1]=3 [15]=4 [2]=5 [4]=6 [16]=7 [6]=9 [17]=10 [9]=11 [8]=13 [7]=12 [10]=14 [18]=15 [19]=16 [11]=17 [20]=18 [12]=19 [13]=20 [21]=21 [0]=1 [22]=2)"
    literal_transitions[25]="([3]=24)"

    declare -A match_anything_transitions
    match_anything_transitions=([1]=24 [21]=24 [0]=8 [19]=24 [10]=24 [6]=24 [15]=24 [9]=24 [3]=24 [17]=24 [5]=24 [20]=24 [8]=25 [2]=24 [12]=24 [11]=24 [7]=24 [18]=24 [13]=24 [14]=24 [16]=24 [4]=24 [22]=24 [23]=24)
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
