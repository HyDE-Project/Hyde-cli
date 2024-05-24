_Hyde () {
    if [[ $(type -t _get_comp_words_by_ref) != function ]]; then
        echo _get_comp_words_by_ref: function not defined.  Make sure the bash-completions system package is installed
        return 1
    fi

    local words cword
    _get_comp_words_by_ref -n "$COMP_WORDBREAKS" words cword

    local -a literals=("revert" "--uninstall" "--install" "wallbash" "--opacity" "-j" "save" "unset" "3" "--rebuild" "--animations" "--stop" "backup" "BackUp" "list" "cursor" "-p" "Config" "d" "--scan" "--record-focus" "theme" "bookmarks" "0" "-freeze" "pastebin" "1" "systeminfo" "--all" "theme" "toggle" "upgrade" "waybar" "toggle" "reload" "update" "all" "glyph" "--print-monitor" "w" "game" "shell" "Config" "info" "reload" "reset" "--animations" "version" "select" "--blur" "theme" "clean" "size" "reload" "-f" "--print-snip" "reload" "Clone" "check" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "show" "-w" "inject" "power" "set" "binds" "rebuild" "screencap" "c" "man" "asus_patch" "events" "--blur" "restore" "-d" "emoji" "sddm" "run" "cache" "control" "prev" "sync" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "flatpak" "Config" "screencap" "--record-snip" "2" "--revert" "set" "patch" "select" "Package" "control")

    declare -A literal_transitions
    literal_transitions[0]="([32]=24 [58]=2 [35]=3 [47]=4 [3]=5 [34]=25 [21]=7 [81]=8 [82]=9 [101]=10 [83]=11 [41]=12 [84]=13 [86]=14 [74]=15 [27]=16 [12]=17 [63]=18 [15]=19 [65]=20 [67]=21 [31]=23 [68]=1 [78]=6)"
    literal_transitions[1]="([33]=26 [40]=26 [6]=29 [45]=26 [7]=30)"
    literal_transitions[2]="([111]=26 [42]=37)"
    literal_transitions[5]="([30]=26 [89]=32)"
    literal_transitions[6]="([92]=26 [17]=26 [13]=26 [57]=26)"
    literal_transitions[7]="([48]=26 [95]=26 [109]=26 [85]=26 [108]=26)"
    literal_transitions[8]="([50]=26)"
    literal_transitions[9]="([93]=26 [76]=26 [104]=31)"
    literal_transitions[11]="([71]=26 [56]=26)"
    literal_transitions[12]="([110]=26)"
    literal_transitions[13]="([103]=26)"
    literal_transitions[17]="([14]=26 [36]=26 [51]=26 [0]=26)"
    literal_transitions[18]="([97]=26 [100]=26 [69]=26 [61]=26)"
    literal_transitions[19]="([53]=26 [43]=26 [99]=26 [29]=26)"
    literal_transitions[20]="([80]=26 [72]=26 [25]=35 [37]=26 [70]=33 [22]=36)"
    literal_transitions[21]="([75]=26 [102]=26 [87]=28)"
    literal_transitions[24]="([44]=26 [52]=34 [112]=26)"
    literal_transitions[27]="([59]=26)"
    literal_transitions[28]="([1]=26 [107]=26 [2]=26)"
    literal_transitions[29]="([10]=26 [49]=26 [62]=26 [90]=26)"
    literal_transitions[30]="([4]=26 [46]=26 [64]=26 [77]=26)"
    literal_transitions[31]="([11]=26 [105]=26 [20]=26 [38]=26 [24]=26 [91]=26 [55]=26 [94]=26 [19]=26)"
    literal_transitions[32]="([23]=26 [26]=26 [106]=26 [8]=26)"
    literal_transitions[33]="([5]=26 [96]=26 [16]=26 [66]=26 [79]=26 [54]=26)"
    literal_transitions[34]="([28]=26)"
    literal_transitions[35]="([39]=26 [18]=26 [73]=26)"
    literal_transitions[36]="([9]=26)"
    literal_transitions[37]="([98]=26 [88]=26 [60]=26)"

    declare -A match_anything_transitions
    match_anything_transitions=([25]=26 [23]=26 [10]=26 [3]=26 [14]=26 [16]=26 [0]=22 [15]=26 [4]=26 [22]=27)
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
