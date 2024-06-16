_Hyde () {
    if [[ $(type -t _get_comp_words_by_ref) != function ]]; then
        echo _get_comp_words_by_ref: function not defined.  Make sure the bash-completions system package is installed
        return 1
    fi

    local words cword
    _get_comp_words_by_ref -n "$COMP_WORDBREAKS" words cword

    local -a literals=("revert" "--uninstall" "wallbash" "--opacity" "-j" "save" "unset" "3" "--stop" "--animations" "backup" "BackUp" "list" "cursor" "-p" "--no-custom" "Config" "d" "--install" "--scan" "--record-focus" "theme" "bookmarks" "0" "-freeze" "pastebin" "search" "1" "systeminfo" "--all" "theme" "toggle" "upgrade" "waybar" "toggle" "reload" "update" "all" "glyph" "--print-monitor" "w" "game" "shell" "Config" "info" "reload" "reset" "--animations" "version" "select" "--blur" "theme" "clean" "size" "reload" "-f" "--print-snip" "reload" "Clone" "check" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "show" "-w" "inject" "power" "set" "binds" "rebuild" "screencap" "c" "man" "asus_patch" "events" "override" "--rebuild" "--blur" "restore" "-d" "emoji" "sddm" "run" "cache" "control" "prev" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "flatpak" "Config" "screencap" "--record-snip" "2" "--revert" "set" "patch" "select" "Package" "control")

    declare -A literal_transitions
    literal_transitions[0]="([33]=24 [59]=2 [36]=3 [48]=4 [2]=5 [35]=25 [21]=7 [84]=8 [85]=9 [103]=10 [86]=11 [42]=12 [87]=13 [75]=14 [28]=15 [10]=16 [64]=17 [13]=18 [66]=19 [68]=20 [78]=21 [32]=23 [69]=1 [81]=6)"
    literal_transitions[1]="([34]=26 [41]=26 [5]=29 [46]=26 [6]=30)"
    literal_transitions[2]="([113]=26 [43]=31)"
    literal_transitions[5]="([31]=26 [91]=34)"
    literal_transitions[6]="([94]=26 [16]=26 [11]=26 [58]=26)"
    literal_transitions[7]="([49]=26 [97]=26 [111]=26 [88]=26 [110]=26)"
    literal_transitions[8]="([51]=26)"
    literal_transitions[9]="([95]=26 [77]=26 [106]=33)"
    literal_transitions[11]="([72]=26 [57]=26)"
    literal_transitions[12]="([112]=26)"
    literal_transitions[13]="([105]=26)"
    literal_transitions[16]="([12]=26 [37]=26 [52]=26 [0]=26)"
    literal_transitions[17]="([99]=26 [102]=26 [70]=26 [62]=26)"
    literal_transitions[18]="([54]=26 [44]=26 [101]=26 [30]=26)"
    literal_transitions[19]="([26]=26 [73]=26 [83]=26 [25]=37 [38]=26 [71]=36 [22]=35)"
    literal_transitions[20]="([76]=26 [104]=26 [89]=32)"
    literal_transitions[24]="([45]=26 [53]=28 [114]=26)"
    literal_transitions[27]="([60]=26)"
    literal_transitions[28]="([29]=26)"
    literal_transitions[29]="([9]=26 [50]=26 [63]=26 [92]=26)"
    literal_transitions[30]="([3]=26 [47]=26 [65]=26 [80]=26)"
    literal_transitions[31]="([100]=26 [90]=26 [61]=26)"
    literal_transitions[32]="([1]=26 [18]=26 [109]=26)"
    literal_transitions[33]="([8]=26 [107]=26 [20]=26 [39]=26 [24]=26 [93]=26 [56]=26 [96]=26 [19]=26)"
    literal_transitions[34]="([23]=26 [27]=26 [108]=26 [7]=26)"
    literal_transitions[35]="([79]=26 [15]=26)"
    literal_transitions[36]="([4]=26 [98]=26 [14]=26 [67]=26 [82]=26 [55]=26)"
    literal_transitions[37]="([40]=26 [17]=26 [74]=26)"

    declare -A match_anything_transitions
    match_anything_transitions=([23]=26 [10]=26 [3]=26 [14]=26 [0]=22 [15]=26 [21]=26 [4]=26 [22]=27 [25]=26)
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
