_Hyde () {
    if [[ $(type -t _get_comp_words_by_ref) != function ]]; then
        echo _get_comp_words_by_ref: function not defined.  Make sure the bash-completions system package is installed
        return 1
    fi

    local words cword
    _get_comp_words_by_ref -n "$COMP_WORDBREAKS" words cword

    local -a literals=("binds" "save" "game" "::=" "version" "all" "update" "wallpaper" "shell" "reload" "Link" "restore" "revert" "cache" "list" "prev" "control" "monitors" "next" "power" "next" "Config" "systeminfo" "BackUp" "mode" "theme" "branch" "wallbash" "unset" "prev" "backup" "reset" "events" "select" "toggle" "glyph" "set" "patch" "emoji" "pastebin" "set" "clean" "rebuild" "inject" "screencap" "select" "screencap" "reload" "sddm" "show" "run" "Clone" "theme" "select" "waybar" "upgrade" "chaotic" "man")

    declare -A literal_transitions
    literal_transitions[0]="([43]=1 [4]=3 [19]=4 [48]=5 [6]=3 [49]=6 [7]=7 [22]=3 [50]=8 [8]=9 [52]=10 [54]=11 [9]=3 [26]=3 [55]=3 [27]=12 [11]=13 [30]=14 [13]=15)"
    literal_transitions[1]="([56]=3)"
    literal_transitions[4]="([31]=3 [28]=3 [2]=3 [1]=3)"
    literal_transitions[5]="([25]=3)"
    literal_transitions[6]="([17]=3 [35]=3 [0]=3 [44]=3 [38]=3 [39]=3)"
    literal_transitions[7]="([40]=3 [53]=3 [20]=3 [15]=3)"
    literal_transitions[8]="([32]=3 [46]=3)"
    literal_transitions[9]="([33]=3)"
    literal_transitions[10]="([45]=3 [18]=3 [29]=3 [36]=3 [37]=3)"
    literal_transitions[11]="([16]=3)"
    literal_transitions[12]="([34]=3 [24]=3)"
    literal_transitions[13]="([10]=3 [21]=3 [51]=3 [23]=3)"
    literal_transitions[14]="([14]=3 [41]=3 [5]=3 [12]=3)"
    literal_transitions[15]="([47]=3 [42]=3)"
    literal_transitions[16]="([3]=17)"
    literal_transitions[17]="([57]=3)"

    declare -A match_anything_transitions
    match_anything_transitions=([0]=2 [2]=16)
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
