_Hyde () {
    if [[ $(type -t _get_comp_words_by_ref) != function ]]; then
        echo _get_comp_words_by_ref: function not defined.  Make sure the bash-completions system package is installed
        return 1
    fi

    local words cword
    _get_comp_words_by_ref -n "$COMP_WORDBREAKS" words cword

    local -a literals=("revert" "--uninstall" "--install" "wallbash" "--opacity" "-j" "save" "unset" "3" "--stop" "--animations" "backup" "BackUp" "list" "cursor" "-p" "Config" "d" "--scan" "--record-focus" "theme" "-freeze" "0" "pastebin" "1" "systeminfo" "--all" "theme" "toggle" "upgrade" "waybar" "toggle" "reload" "update" "all" "glyph" "--print-monitor" "w" "game" "shell" "Config" "info" "reload" "reset" "--animations" "version" "select" "--blur" "run" "theme" "clean" "size" "reload" "-f" "--print-snip" "reload" "Clone" "check" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "-w" "inject" "power" "bookmarks" "set" "binds" "rebuild" "screencap" "c" "man" "asus_patch" "events" "--blur" "restore" "-d" "emoji" "sddm" "cache" "control" "show" "prev" "sync" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "flatpak" "Config" "screencap" "--record-snip" "2" "--revert" "set" "patch" "select" "Package" "control")

    declare -A literal_transitions
    literal_transitions[0]="([30]=24 [57]=2 [33]=3 [45]=4 [3]=5 [32]=25 [20]=7 [80]=8 [100]=9 [81]=10 [48]=11 [83]=14 [39]=12 [82]=13 [85]=15 [73]=16 [25]=17 [11]=18 [62]=19 [14]=20 [65]=21 [29]=23 [66]=1 [77]=6)"
    literal_transitions[1]="([31]=27 [38]=27 [6]=31 [43]=27 [7]=32)"
    literal_transitions[2]="([110]=27 [40]=30)"
    literal_transitions[5]="([28]=27 [88]=28)"
    literal_transitions[6]="([91]=27 [16]=27 [12]=27 [56]=27)"
    literal_transitions[7]="([46]=27 [94]=27 [108]=27 [84]=27 [107]=27)"
    literal_transitions[8]="([49]=27)"
    literal_transitions[10]="([70]=27 [55]=27)"
    literal_transitions[11]="([92]=27 [75]=27 [103]=36)"
    literal_transitions[12]="([109]=27)"
    literal_transitions[13]="([102]=27)"
    literal_transitions[14]="([79]=27 [67]=27 [71]=27 [35]=27 [69]=29 [23]=26)"
    literal_transitions[18]="([13]=27 [34]=27 [50]=27 [0]=27)"
    literal_transitions[19]="([96]=27 [99]=27 [68]=27 [60]=27)"
    literal_transitions[20]="([52]=27 [41]=27 [98]=27 [27]=27)"
    literal_transitions[21]="([74]=27 [101]=27 [86]=33)"
    literal_transitions[24]="([42]=27 [51]=35 [111]=27)"
    literal_transitions[26]="([37]=27 [17]=27 [72]=27)"
    literal_transitions[28]="([22]=27 [24]=27 [105]=27 [8]=27)"
    literal_transitions[29]="([5]=27 [95]=27 [15]=27 [64]=27 [78]=27 [53]=27)"
    literal_transitions[30]="([97]=27 [87]=27 [59]=27)"
    literal_transitions[31]="([10]=27 [47]=27 [61]=27 [89]=27)"
    literal_transitions[32]="([4]=27 [44]=27 [63]=27 [76]=27)"
    literal_transitions[33]="([1]=27 [106]=27 [2]=27)"
    literal_transitions[34]="([58]=27)"
    literal_transitions[35]="([26]=27)"
    literal_transitions[36]="([9]=27 [104]=27 [19]=27 [36]=27 [21]=27 [90]=27 [54]=27 [93]=27 [18]=27)"

    declare -A match_anything_transitions
    match_anything_transitions=([3]=27 [16]=27 [0]=22 [17]=27 [9]=27 [15]=27 [4]=27 [22]=34 [25]=27 [23]=27)
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
