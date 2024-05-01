_Hyde () {
    if [[ $(type -t _get_comp_words_by_ref) != function ]]; then
        echo _get_comp_words_by_ref: function not defined.  Make sure the bash-completions system package is installed
        return 1
    fi

    local words cword
    _get_comp_words_by_ref -n "$COMP_WORDBREAKS" words cword

    local -a literals=("binds" "game" "::=" "version" "all" "update" "wallpaper" "shell" "0" "Link" "reload" "--blur" "restore" "revert" "cache" "--opacity" "list" "prev" "3" "next" "control" "monitors" "save" "unset" "power" "next" "1" "2" "Config" "systeminfo" "--borderangle" "BackUp" "mode" "theme" "branch" "wallbash" "prev" "backup" "reset" "events" "select" "toggle" "--opacity" "glyph" "set" "patch" "--borderangle" "emoji" "pastebin" "set" "toggle" "clean" "rebuild" "--animations" "inject" "screencap" "select" "screencap" "reload" "sddm" "Clone" "theme" "show" "select" "waybar" "--animations" "upgrade" "run" "chaotic" "--blur" "man")

    declare -A literal_transitions
    literal_transitions[0]="([54]=1 [3]=3 [24]=4 [59]=5 [5]=3 [61]=6 [6]=7 [29]=3 [62]=8 [7]=9 [64]=10 [66]=3 [10]=3 [34]=3 [67]=11 [35]=12 [12]=13 [37]=14 [14]=15)"
    literal_transitions[1]="([68]=3)"
    literal_transitions[4]="([23]=20 [38]=3 [1]=3 [50]=3 [22]=18)"
    literal_transitions[5]="([33]=3)"
    literal_transitions[6]="([56]=3 [19]=3 [36]=3 [44]=3 [45]=3)"
    literal_transitions[7]="([49]=3 [63]=3 [25]=3 [17]=3)"
    literal_transitions[8]="([21]=3 [43]=3 [0]=3 [55]=3 [47]=3 [48]=3)"
    literal_transitions[9]="([40]=3)"
    literal_transitions[10]="([20]=3)"
    literal_transitions[11]="([39]=3 [57]=3)"
    literal_transitions[12]="([41]=3 [32]=19)"
    literal_transitions[13]="([9]=3 [28]=3 [60]=3 [31]=3)"
    literal_transitions[14]="([16]=3 [51]=3 [4]=3 [13]=3)"
    literal_transitions[15]="([58]=3 [52]=3)"
    literal_transitions[16]="([2]=17)"
    literal_transitions[17]="([70]=3)"
    literal_transitions[18]="([15]=3 [11]=3 [46]=3 [65]=3)"
    literal_transitions[19]="([18]=3 [27]=3 [26]=3 [8]=3)"
    literal_transitions[20]="([42]=3 [30]=3 [53]=3 [69]=3)"

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
