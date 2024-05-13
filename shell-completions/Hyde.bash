_Hyde () {
    if [[ $(type -t _get_comp_words_by_ref) != function ]]; then
        echo _get_comp_words_by_ref: function not defined.  Make sure the bash-completions system package is installed
        return 1
    fi

    local words cword
    _get_comp_words_by_ref -n "$COMP_WORDBREAKS" words cword

    local -a literals=("control" "Clone" "wallbash" "::=" "--mismatch" "prev" "--opacity" "-j" "save" "Config" "3" "Config" "--animations" "--borderangle" "unset" "backup" "--stop" "BackUp" "list" "wallpaper" "--borderangle" "-p" "Config" "power" "-w" "d" "--scan" "--record-focus" "inject" "set" "theme" "binds" "rebuild" "0" "screencap" "-freeze" "pastebin" "c" "man" "1" "systeminfo" "--all" "events" "asus_patch" "--blur" "toggle" "waybar" "upgrade" "restore" "toggle" "update" "all" "-d" "sddm" "emoji" "w" "game" "cache" "glyph" "control" "shell" "show" "prev" "--less" "--presrve" "sync" "--print-monitor" "reload" "mode" "check" "--opacity" "--reset" "Link" "reload" "audio_idle" "reset" "--print-all" "next" "--animations" "version" "next" "select" "branch" "select" "-h" "--blur" "run" "flatpak" "screencap" "--record-snip" "theme" "clean" "2" "size" "set" "patch" "select" "-f" "--print-snip" "chaotic_aur" "reload" "revert")

    declare -A literal_transitions
    literal_transitions[0]="([48]=23 [23]=24 [50]=3 [79]=4 [2]=5 [30]=6 [53]=7 [82]=8 [57]=9 [86]=10 [61]=13 [59]=11 [60]=12 [65]=14 [38]=15 [15]=16 [40]=17 [19]=18 [69]=19 [28]=20 [47]=22 [46]=1 [67]=2)"
    literal_transitions[1]="([73]=25 [93]=33 [0]=25)"
    literal_transitions[5]="([45]=25 [68]=29)"
    literal_transitions[6]="([77]=25 [83]=25 [95]=25 [62]=25 [94]=25)"
    literal_transitions[7]="([90]=25)"
    literal_transitions[9]="([32]=25 [100]=25)"
    literal_transitions[10]="([74]=25 [42]=25 [88]=26)"
    literal_transitions[11]="([9]=25)"
    literal_transitions[12]="([96]=25)"
    literal_transitions[13]="([54]=25 [34]=25 [58]=25 [31]=28 [36]=32)"
    literal_transitions[16]="([18]=25 [51]=25 [91]=25 [101]=25)"
    literal_transitions[18]="([81]=25 [80]=25 [29]=25 [5]=25)"
    literal_transitions[19]="([11]=31)"
    literal_transitions[20]="([43]=25 [87]=25 [99]=25)"
    literal_transitions[23]="([72]=25 [22]=25 [17]=25 [1]=25)"
    literal_transitions[24]="([49]=25 [56]=25 [8]=30 [75]=25 [14]=34)"
    literal_transitions[26]="([16]=25 [89]=25 [27]=25 [66]=25 [35]=25 [71]=25 [98]=25 [76]=25 [26]=25)"
    literal_transitions[27]="([3]=25)"
    literal_transitions[28]="([7]=25 [84]=25 [21]=25 [52]=25 [97]=25 [24]=25)"
    literal_transitions[29]="([33]=25 [39]=25 [92]=25 [10]=25)"
    literal_transitions[30]="([12]=25 [85]=25 [13]=25 [70]=25)"
    literal_transitions[31]="([63]=25 [64]=25 [4]=25)"
    literal_transitions[32]="([37]=25 [25]=25 [55]=25)"
    literal_transitions[33]="([41]=25)"
    literal_transitions[34]="([6]=25 [20]=25 [78]=25 [44]=25)"

    declare -A match_anything_transitions
    match_anything_transitions=([3]=25 [14]=25 [2]=25 [0]=21 [17]=25 [15]=25 [8]=25 [21]=27 [4]=25 [22]=25)
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
