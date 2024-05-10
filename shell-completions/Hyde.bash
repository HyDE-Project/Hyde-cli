_Hyde () {
    if [[ $(type -t _get_comp_words_by_ref) != function ]]; then
        echo _get_comp_words_by_ref: function not defined.  Make sure the bash-completions system package is installed
        return 1
    fi

    local words cword
    _get_comp_words_by_ref -n "$COMP_WORDBREAKS" words cword

    local -a literals=("control" "Clone" "wallbash" "::=" "prev" "--opacity" "-j" "chaotic_aur" "save" "Config" "3" "--borderangle" "--animations" "unset" "--stop" "backup" "BackUp" "list" "wallpaper" "--borderangle" "-p" "Config" "-w" "power" "d" "--scan" "inject" "--record-focus" "set" "theme" "binds" "rebuild" "0" "screencap" "audio_idle" "-freeze" "size" "pastebin" "c" "man" "1" "systeminfo" "events" "asus_patch" "--blur" "toggle" "waybar" "upgrade" "restore" "toggle" "update" "all" "check" "sddm" "-d" "emoji" "game" "cache" "w" "control" "shell" "show" "prev" "sync" "glyph" "--print-monitor" "reload" "mode" "--opacity" "--reset" "Link" "reload" "--print-all" "reset" "next" "--animations" "version" "next" "select" "branch" "select" "--blur" "-h" "run" "screencap" "--record-snip" "theme" "clean" "2" "-f" "set" "patch" "select" "--print-snip" "Config" "reload" "revert")

    declare -A literal_transitions
    literal_transitions[0]="([48]=23 [23]=24 [50]=3 [76]=4 [2]=5 [52]=6 [29]=7 [53]=8 [79]=9 [57]=11 [83]=12 [59]=13 [60]=14 [61]=15 [63]=16 [39]=17 [15]=18 [41]=19 [18]=20 [26]=21 [47]=22 [46]=1 [66]=2)"
    literal_transitions[1]="([71]=25 [36]=25 [0]=25)"
    literal_transitions[5]="([45]=25 [67]=30)"
    literal_transitions[6]="([94]=25)"
    literal_transitions[7]="([74]=25 [80]=25 [91]=25 [62]=25 [90]=25)"
    literal_transitions[8]="([86]=25)"
    literal_transitions[11]="([31]=25 [95]=25)"
    literal_transitions[12]="([42]=25 [34]=25 [84]=26)"
    literal_transitions[13]="([9]=25)"
    literal_transitions[14]="([92]=25)"
    literal_transitions[15]="([55]=25 [33]=25 [64]=25 [30]=32 [37]=29)"
    literal_transitions[18]="([17]=25 [51]=25 [87]=25 [96]=25)"
    literal_transitions[20]="([78]=25 [77]=25 [28]=25 [4]=25)"
    literal_transitions[21]="([7]=25 [43]=25)"
    literal_transitions[23]="([70]=25 [21]=25 [16]=25 [1]=25)"
    literal_transitions[24]="([49]=25 [56]=25 [8]=27 [73]=25 [13]=28)"
    literal_transitions[26]="([14]=25 [85]=25 [27]=25 [65]=25 [35]=25 [69]=25 [93]=25 [72]=25 [25]=25)"
    literal_transitions[27]="([12]=25 [81]=25 [11]=25 [68]=25)"
    literal_transitions[28]="([5]=25 [19]=25 [75]=25 [44]=25)"
    literal_transitions[29]="([38]=25 [24]=25 [58]=25)"
    literal_transitions[30]="([32]=25 [40]=25 [88]=25 [10]=25)"
    literal_transitions[31]="([3]=25)"
    literal_transitions[32]="([6]=25 [82]=25 [20]=25 [54]=25 [89]=25 [22]=25)"

    declare -A match_anything_transitions
    match_anything_transitions=([10]=31 [3]=25 [2]=25 [16]=25 [0]=10 [19]=25 [17]=25 [9]=25 [4]=25 [22]=25)
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
