_Hyde () {
    if [[ $(type -t _get_comp_words_by_ref) != function ]]; then
        echo _get_comp_words_by_ref: function not defined.  Make sure the bash-completions system package is installed
        return 1
    fi

    local words cword
    _get_comp_words_by_ref -n "$COMP_WORDBREAKS" words cword

    local -a literals=("control" "revert" "wallbash" "::=" "prev" "--opacity" "-j" "chaotic_aur" "branch" "Config" "3" "save" "--animations" "--borderangle" "unset" "backup" "--stop" "BackUp" "list" "wallpaper" "--borderangle" "-p" "Config" "-w" "power" "d" "--scan" "inject" "--record-focus" "set" "theme" "binds" "rebuild" "0" "screencap" "audio_idle" "-freeze" "size" "pastebin" "c" "man" "1" "systeminfo" "events" "asus_patch" "--blur" "toggle" "waybar" "upgrade" "restore" "toggle" "update" "all" "-d" "sddm" "emoji" "w" "game" "cache" "glyph" "control" "shell" "show" "prev" "sync" "--print-monitor" "reload" "mode" "--opacity" "--reset" "Link" "reload" "--print-all" "reset" "next" "--animations" "version" "next" "select" "-h" "select" "--blur" "run" "screencap" "--record-snip" "theme" "clean" "2" "-f" "set" "patch" "select" "--print-snip" "reload" "Clone")

    declare -A literal_transitions
    literal_transitions[0]="([49]=22 [24]=23 [51]=3 [76]=4 [2]=5 [30]=6 [54]=7 [58]=9 [82]=10 [61]=13 [62]=14 [60]=11 [8]=12 [64]=15 [40]=16 [15]=17 [42]=18 [19]=19 [27]=20 [48]=21 [47]=1 [66]=2)"
    literal_transitions[1]="([71]=25 [37]=25 [0]=25)"
    literal_transitions[5]="([46]=25 [67]=28)"
    literal_transitions[6]="([74]=25 [80]=25 [90]=25 [63]=25 [89]=25)"
    literal_transitions[7]="([85]=25)"
    literal_transitions[9]="([32]=25 [93]=25)"
    literal_transitions[10]="([43]=25 [35]=25 [83]=27)"
    literal_transitions[11]="([9]=25)"
    literal_transitions[13]="([91]=25)"
    literal_transitions[14]="([55]=25 [34]=25 [59]=25 [31]=30 [38]=26)"
    literal_transitions[17]="([18]=25 [52]=25 [86]=25 [1]=25)"
    literal_transitions[19]="([78]=25 [77]=25 [29]=25 [4]=25)"
    literal_transitions[20]="([7]=25 [44]=25)"
    literal_transitions[22]="([70]=25 [22]=25 [17]=25 [94]=25)"
    literal_transitions[23]="([50]=25 [57]=25 [11]=29 [73]=25 [14]=31)"
    literal_transitions[24]="([3]=25)"
    literal_transitions[26]="([39]=25 [25]=25 [56]=25)"
    literal_transitions[27]="([16]=25 [84]=25 [28]=25 [65]=25 [36]=25 [69]=25 [92]=25 [72]=25 [26]=25)"
    literal_transitions[28]="([33]=25 [41]=25 [87]=25 [10]=25)"
    literal_transitions[29]="([12]=25 [81]=25 [13]=25 [68]=25)"
    literal_transitions[30]="([6]=25 [79]=25 [21]=25 [53]=25 [88]=25 [23]=25)"
    literal_transitions[31]="([5]=25 [20]=25 [75]=25 [45]=25)"

    declare -A match_anything_transitions
    match_anything_transitions=([3]=25 [2]=25 [18]=25 [12]=25 [16]=25 [0]=8 [15]=25 [8]=24 [21]=25 [4]=25)
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
