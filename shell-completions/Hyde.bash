_Hyde () {
    if [[ $(type -t _get_comp_words_by_ref) != function ]]; then
        echo _get_comp_words_by_ref: function not defined.  Make sure the bash-completions system package is installed
        return 1
    fi

    local words cword
    _get_comp_words_by_ref -n "$COMP_WORDBREAKS" words cword

    local -a literals=("control" "revert" "wallbash" "::=" "prev" "--opacity" "-j" "chaotic_aur" "branch" "save" "3" "--borderangle" "--animations" "unset" "backup" "BackUp" "list" "wallpaper" "--borderangle" "-p" "Config" "-w" "power" "d" "inject" "set" "theme" "binds" "rebuild" "0" "screencap" "pastebin" "c" "man" "1" "systeminfo" "events" "asus_patch" "--blur" "toggle" "restore" "waybar" "upgrade" "toggle" "update" "all" "-d" "sddm" "emoji" "w" "game" "cache" "glyph" "shell" "show" "audio_idle" "prev" "sync" "reload" "mode" "--opacity" "Link" "reset" "next" "--animations" "version" "next" "select" "-h" "select" "--blur" "run" "screencap" "theme" "clean" "2" "-f" "set" "patch" "select" "reload" "Clone")

    declare -A literal_transitions
    literal_transitions[0]="([41]=21 [22]=22 [44]=3 [65]=4 [2]=5 [26]=6 [47]=7 [51]=9 [71]=10 [54]=13 [53]=11 [8]=12 [57]=14 [33]=15 [14]=16 [35]=17 [17]=18 [24]=19 [42]=20 [40]=1 [58]=2)"
    literal_transitions[1]="([61]=23 [20]=23 [15]=23 [81]=23)"
    literal_transitions[5]="([39]=23 [59]=26)"
    literal_transitions[6]="([63]=23 [69]=23 [78]=23 [56]=23 [77]=23)"
    literal_transitions[7]="([73]=23)"
    literal_transitions[9]="([28]=23 [80]=23)"
    literal_transitions[10]="([36]=23 [55]=23 [72]=23)"
    literal_transitions[11]="([79]=23)"
    literal_transitions[13]="([48]=23 [30]=23 [52]=23 [27]=28 [31]=24)"
    literal_transitions[16]="([16]=23 [45]=23 [74]=23 [1]=23)"
    literal_transitions[18]="([67]=23 [66]=23 [25]=23 [4]=23)"
    literal_transitions[19]="([7]=23 [37]=23)"
    literal_transitions[21]="([0]=23)"
    literal_transitions[22]="([43]=23 [50]=23 [9]=27 [62]=23 [13]=29)"
    literal_transitions[24]="([32]=23 [23]=23 [49]=23)"
    literal_transitions[25]="([3]=23)"
    literal_transitions[26]="([29]=23 [34]=23 [75]=23 [10]=23)"
    literal_transitions[27]="([12]=23 [70]=23 [11]=23 [60]=23)"
    literal_transitions[28]="([6]=23 [68]=23 [19]=23 [46]=23 [76]=23 [21]=23)"
    literal_transitions[29]="([5]=23 [18]=23 [64]=23 [38]=23)"

    declare -A match_anything_transitions
    match_anything_transitions=([3]=23 [12]=23 [14]=23 [2]=23 [0]=8 [17]=23 [15]=23 [20]=23 [8]=25 [4]=23)
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
