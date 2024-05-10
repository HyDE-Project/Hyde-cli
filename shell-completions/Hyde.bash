_Hyde () {
    if [[ $(type -t _get_comp_words_by_ref) != function ]]; then
        echo _get_comp_words_by_ref: function not defined.  Make sure the bash-completions system package is installed
        return 1
    fi

    local words cword
    _get_comp_words_by_ref -n "$COMP_WORDBREAKS" words cword

    local -a literals=("control" "revert" "wallbash" "::=" "prev" "--opacity" "-j" "chaotic_aur" "save" "Config" "3" "--borderangle" "--animations" "unset" "--stop" "backup" "BackUp" "list" "wallpaper" "--borderangle" "-p" "Config" "-w" "power" "d" "--scan" "inject" "--record-focus" "set" "theme" "binds" "rebuild" "0" "screencap" "audio_idle" "-freeze" "size" "pastebin" "c" "man" "1" "systeminfo" "events" "asus_patch" "--blur" "toggle" "waybar" "upgrade" "restore" "toggle" "update" "all" "-d" "sddm" "emoji" "w" "game" "cache" "glyph" "control" "shell" "show" "prev" "sync" "--print-monitor" "reload" "mode" "--opacity" "--reset" "Link" "reload" "--print-all" "reset" "next" "--animations" "version" "next" "select" "branch" "select" "--blur" "-h" "run" "screencap" "--record-snip" "theme" "clean" "2" "-f" "set" "patch" "select" "--print-snip" "reload" "Clone")

    declare -A literal_transitions
    literal_transitions[0]="([48]=22 [23]=23 [50]=3 [75]=4 [2]=5 [29]=6 [53]=7 [78]=8 [57]=10 [82]=11 [61]=14 [59]=12 [60]=13 [63]=15 [39]=16 [15]=17 [41]=18 [18]=19 [26]=20 [47]=21 [46]=1 [65]=2)"
    literal_transitions[1]="([70]=25 [36]=25 [0]=25)"
    literal_transitions[5]="([45]=25 [66]=31)"
    literal_transitions[6]="([73]=25 [79]=25 [90]=25 [62]=25 [89]=25)"
    literal_transitions[7]="([85]=25)"
    literal_transitions[10]="([31]=25 [93]=25)"
    literal_transitions[11]="([42]=25 [34]=25 [83]=30)"
    literal_transitions[12]="([9]=25)"
    literal_transitions[13]="([91]=25)"
    literal_transitions[14]="([54]=25 [33]=25 [58]=25 [30]=29 [37]=28)"
    literal_transitions[17]="([17]=25 [51]=25 [86]=25 [1]=25)"
    literal_transitions[19]="([77]=25 [76]=25 [28]=25 [4]=25)"
    literal_transitions[20]="([7]=25 [43]=25)"
    literal_transitions[22]="([69]=25 [21]=25 [16]=25 [94]=25)"
    literal_transitions[23]="([49]=25 [56]=25 [8]=26 [72]=25 [13]=27)"
    literal_transitions[24]="([3]=25)"
    literal_transitions[26]="([12]=25 [80]=25 [11]=25 [67]=25)"
    literal_transitions[27]="([5]=25 [19]=25 [74]=25 [44]=25)"
    literal_transitions[28]="([38]=25 [24]=25 [55]=25)"
    literal_transitions[29]="([6]=25 [81]=25 [20]=25 [52]=25 [88]=25 [22]=25)"
    literal_transitions[30]="([14]=25 [84]=25 [27]=25 [64]=25 [35]=25 [68]=25 [92]=25 [71]=25 [25]=25)"
    literal_transitions[31]="([32]=25 [40]=25 [87]=25 [10]=25)"

    declare -A match_anything_transitions
    match_anything_transitions=([3]=25 [2]=25 [18]=25 [16]=25 [0]=9 [15]=25 [9]=24 [8]=25 [21]=25 [4]=25)
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
