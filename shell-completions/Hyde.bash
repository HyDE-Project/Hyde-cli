_Hyde () {
    if [[ $(type -t _get_comp_words_by_ref) != function ]]; then
        echo _get_comp_words_by_ref: function not defined.  Make sure the bash-completions system package is installed
        return 1
    fi

    local words cword
    _get_comp_words_by_ref -n "$COMP_WORDBREAKS" words cword

    local -a literals=("revert" "--uninstall" "--install" "wallbash" "--opacity" "-j" "save" "unset" "3" "--stop" "--animations" "backup" "BackUp" "list" "cursor" "-p" "Config" "d" "--scan" "--record-focus" "theme" "-freeze" "0" "pastebin" "1" "systeminfo" "--all" "theme" "toggle" "upgrade" "waybar" "toggle" "reload" "update" "all" "glyph" "--print-monitor" "w" "game" "shell" "Config" "info" "reload" "reset" "--animations" "version" "select" "--blur" "run" "theme" "clean" "size" "reload" "-f" "--print-snip" "reload" "Clone" "check" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "-w" "inject" "power" "set" "binds" "rebuild" "screencap" "c" "man" "asus_patch" "events" "--blur" "restore" "-d" "emoji" "sddm" "cache" "control" "show" "prev" "sync" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "flatpak" "Config" "screencap" "--record-snip" "2" "--revert" "set" "patch" "select" "Package" "control")

    declare -A literal_transitions
    literal_transitions[0]="([30]=24 [57]=2 [33]=3 [45]=4 [3]=5 [32]=25 [20]=7 [79]=8 [99]=9 [80]=10 [48]=11 [82]=14 [39]=12 [81]=13 [84]=15 [72]=16 [25]=17 [11]=18 [62]=19 [14]=20 [65]=21 [29]=23 [66]=1 [76]=6)"
    literal_transitions[1]="([31]=26 [38]=26 [6]=32 [43]=26 [7]=33)"
    literal_transitions[2]="([109]=26 [40]=30)"
    literal_transitions[5]="([28]=26 [87]=29)"
    literal_transitions[6]="([90]=26 [16]=26 [12]=26 [56]=26)"
    literal_transitions[7]="([46]=26 [93]=26 [107]=26 [83]=26 [106]=26)"
    literal_transitions[8]="([49]=26)"
    literal_transitions[10]="([69]=26 [55]=26)"
    literal_transitions[11]="([91]=26 [74]=26 [102]=27)"
    literal_transitions[12]="([108]=26)"
    literal_transitions[13]="([101]=26)"
    literal_transitions[14]="([78]=26 [70]=26 [35]=26 [68]=36 [23]=35)"
    literal_transitions[18]="([13]=26 [34]=26 [50]=26 [0]=26)"
    literal_transitions[19]="([95]=26 [98]=26 [67]=26 [60]=26)"
    literal_transitions[20]="([52]=26 [41]=26 [97]=26 [27]=26)"
    literal_transitions[21]="([73]=26 [100]=26 [85]=31)"
    literal_transitions[24]="([42]=26 [51]=28 [110]=26)"
    literal_transitions[27]="([9]=26 [103]=26 [19]=26 [36]=26 [21]=26 [89]=26 [54]=26 [92]=26 [18]=26)"
    literal_transitions[28]="([26]=26)"
    literal_transitions[29]="([22]=26 [24]=26 [104]=26 [8]=26)"
    literal_transitions[30]="([96]=26 [86]=26 [59]=26)"
    literal_transitions[31]="([1]=26 [105]=26 [2]=26)"
    literal_transitions[32]="([10]=26 [47]=26 [61]=26 [88]=26)"
    literal_transitions[33]="([4]=26 [44]=26 [63]=26 [75]=26)"
    literal_transitions[34]="([58]=26)"
    literal_transitions[35]="([37]=26 [17]=26 [71]=26)"
    literal_transitions[36]="([5]=26 [94]=26 [15]=26 [64]=26 [77]=26 [53]=26)"

    declare -A match_anything_transitions
    match_anything_transitions=([23]=26 [3]=26 [16]=26 [0]=22 [15]=26 [17]=26 [9]=26 [4]=26 [22]=34 [25]=26)
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
