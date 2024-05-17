_Hyde () {
    if [[ $(type -t _get_comp_words_by_ref) != function ]]; then
        echo _get_comp_words_by_ref: function not defined.  Make sure the bash-completions system package is installed
        return 1
    fi

    local words cword
    _get_comp_words_by_ref -n "$COMP_WORDBREAKS" words cword

    local -a literals=("--uninstall" "revert" "--install" "wallbash" "--opacity" "-j" "save" "unset" "3" "--stop" "--animations" "backup" "BackUp" "list" "-p" "Config" "d" "--scan" "--record-focus" "theme" "-freeze" "0" "pastebin" "1" "systeminfo" "--all" "toggle" "waybar" "upgrade" "toggle" "reload" "update" "all" "glyph" "--print-monitor" "w" "game" "shell" "Config" "reload" "reset" "--animations" "version" "select" "--blur" "run" "theme" "clean" "size" "-f" "--print-snip" "reload" "Clone" "check" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "-w" "inject" "power" "set" "binds" "rebuild" "screencap" "c" "man" "asus_patch" "events" "--blur" "restore" "-d" "emoji" "sddm" "cache" "control" "show" "prev" "sync" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "next" "branch" "flatpak" "Config" "screencap" "--record-snip" "2" "--revert" "set" "patch" "select" "Package" "control")

    declare -A literal_transitions
    literal_transitions[0]="([27]=23 [53]=2 [31]=3 [42]=4 [3]=5 [30]=24 [19]=7 [75]=8 [94]=9 [76]=10 [45]=11 [78]=14 [37]=12 [77]=13 [80]=15 [68]=16 [11]=17 [24]=18 [58]=19 [61]=20 [28]=22 [62]=1 [72]=6)"
    literal_transitions[1]="([29]=25 [36]=25 [6]=32 [40]=25 [7]=34)"
    literal_transitions[2]="([104]=25 [38]=35)"
    literal_transitions[5]="([26]=25 [83]=30)"
    literal_transitions[6]="([86]=25 [15]=25 [12]=25 [52]=25)"
    literal_transitions[7]="([43]=25 [89]=25 [102]=25 [79]=25 [101]=25)"
    literal_transitions[8]="([46]=25)"
    literal_transitions[10]="([65]=25 [51]=25)"
    literal_transitions[11]="([87]=25 [70]=25 [97]=29)"
    literal_transitions[12]="([103]=25)"
    literal_transitions[13]="([96]=25)"
    literal_transitions[14]="([74]=25 [66]=25 [33]=25 [64]=26 [22]=27)"
    literal_transitions[17]="([13]=25 [32]=25 [47]=25 [1]=25)"
    literal_transitions[19]="([91]=25 [93]=25 [63]=25 [56]=25)"
    literal_transitions[20]="([69]=25 [95]=25 [81]=28)"
    literal_transitions[23]="([39]=25 [48]=33 [105]=25)"
    literal_transitions[26]="([5]=25 [90]=25 [14]=25 [60]=25 [73]=25 [49]=25)"
    literal_transitions[27]="([35]=25 [16]=25 [67]=25)"
    literal_transitions[28]="([0]=25 [100]=25 [2]=25)"
    literal_transitions[29]="([9]=25 [98]=25 [18]=25 [34]=25 [20]=25 [85]=25 [50]=25 [88]=25 [17]=25)"
    literal_transitions[30]="([21]=25 [23]=25 [99]=25 [8]=25)"
    literal_transitions[31]="([54]=25)"
    literal_transitions[32]="([10]=25 [44]=25 [57]=25 [84]=25)"
    literal_transitions[33]="([25]=25)"
    literal_transitions[34]="([4]=25 [41]=25 [59]=25 [71]=25)"
    literal_transitions[35]="([92]=25 [82]=25 [55]=25)"

    declare -A match_anything_transitions
    match_anything_transitions=([3]=25 [18]=25 [16]=25 [24]=25 [0]=21 [15]=25 [9]=25 [21]=31 [4]=25 [22]=25)
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
