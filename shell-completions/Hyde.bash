_Hyde () {
    if [[ $(type -t _get_comp_words_by_ref) != function ]]; then
        echo _get_comp_words_by_ref: function not defined.  Make sure the bash-completions system package is installed
        return 1
    fi

    local words cword
    _get_comp_words_by_ref -n "$COMP_WORDBREAKS" words cword

    local -a literals=("revert" "--uninstall" "--install" "wallbash" "--opacity" "-j" "save" "unset" "3" "--rebuild" "--animations" "--stop" "backup" "BackUp" "list" "cursor" "-p" "--no-custom" "Config" "d" "--scan" "--record-focus" "theme" "bookmarks" "0" "-freeze" "pastebin" "1" "systeminfo" "--all" "theme" "toggle" "upgrade" "waybar" "toggle" "reload" "update" "all" "glyph" "--print-monitor" "w" "game" "shell" "Config" "info" "reload" "reset" "--animations" "version" "select" "--blur" "theme" "clean" "size" "reload" "-f" "--print-snip" "reload" "Clone" "check" "override" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "show" "-w" "inject" "power" "set" "binds" "rebuild" "screencap" "c" "man" "asus_patch" "events" "--blur" "restore" "-d" "emoji" "sddm" "run" "cache" "control" "prev" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "flatpak" "Config" "screencap" "--record-snip" "2" "--revert" "set" "patch" "select" "Package" "control")

    declare -A literal_transitions
    literal_transitions[0]="([33]=24 [59]=2 [36]=3 [48]=4 [3]=5 [60]=6 [22]=7 [83]=9 [84]=10 [102]=12 [85]=11 [35]=25 [42]=13 [86]=14 [76]=15 [28]=16 [12]=17 [65]=18 [15]=19 [67]=20 [69]=21 [32]=23 [70]=1 [80]=8)"
    literal_transitions[1]="([34]=27 [41]=27 [6]=35 [46]=27 [7]=34)"
    literal_transitions[2]="([112]=27 [43]=30)"
    literal_transitions[5]="([31]=27 [90]=33)"
    literal_transitions[7]="([49]=27 [96]=27 [110]=27 [87]=27 [109]=27)"
    literal_transitions[8]="([93]=27 [18]=27 [13]=27 [58]=27)"
    literal_transitions[9]="([51]=27)"
    literal_transitions[10]="([94]=27 [78]=27 [105]=26)"
    literal_transitions[11]="([73]=27 [57]=27)"
    literal_transitions[13]="([111]=27)"
    literal_transitions[14]="([104]=27)"
    literal_transitions[17]="([14]=27 [37]=27 [52]=27 [0]=27)"
    literal_transitions[18]="([98]=27 [101]=27 [71]=27 [63]=27)"
    literal_transitions[19]="([54]=27 [44]=27 [100]=27 [30]=27)"
    literal_transitions[20]="([82]=27 [74]=27 [26]=29 [38]=27 [72]=32 [23]=31)"
    literal_transitions[21]="([77]=27 [103]=27 [88]=36)"
    literal_transitions[24]="([45]=27 [53]=37 [113]=27)"
    literal_transitions[26]="([11]=27 [106]=27 [21]=27 [39]=27 [25]=27 [92]=27 [56]=27 [95]=27 [20]=27)"
    literal_transitions[28]="([61]=27)"
    literal_transitions[29]="([40]=27 [19]=27 [75]=27)"
    literal_transitions[30]="([99]=27 [89]=27 [62]=27)"
    literal_transitions[31]="([9]=27 [17]=27)"
    literal_transitions[32]="([5]=27 [97]=27 [16]=27 [68]=27 [81]=27 [55]=27)"
    literal_transitions[33]="([24]=27 [27]=27 [107]=27 [8]=27)"
    literal_transitions[34]="([4]=27 [47]=27 [66]=27 [79]=27)"
    literal_transitions[35]="([10]=27 [50]=27 [64]=27 [91]=27)"
    literal_transitions[36]="([1]=27 [108]=27 [2]=27)"
    literal_transitions[37]="([29]=27)"

    declare -A match_anything_transitions
    match_anything_transitions=([23]=27 [3]=27 [12]=27 [16]=27 [0]=22 [6]=27 [15]=27 [4]=27 [22]=28 [25]=27)
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
