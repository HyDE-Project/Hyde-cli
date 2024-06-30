_Hyde_spec_0 () {
    compgen -A file "$1"
}

_Hyde () {
    if [[ $(type -t _get_comp_words_by_ref) != function ]]; then
        echo _get_comp_words_by_ref: function not defined.  Make sure the bash-completions system package is installed
        return 1
    fi

    local words cword
    _get_comp_words_by_ref -n "$COMP_WORDBREAKS" words cword

    local -a literals=("revert" "--uninstall" "wallbash" "--copy" "--opacity" "-j" "save" "unset" "3" "--stop" "--animations" "backup" "BackUp" "list" "cursor" "--freeze" "-p" "--no-custom" "Config" "--install" "--scan" "--record-focus" "theme" "bookmarks" "0" "--reset" "toggle" "pastebin" "1" "systeminfo" "--all" "theme" "--delete" "upgrade" "toggle" "waybar" "reload" "update" "all" "glyph" "--wipe" "--print-monitor" "game" "shell" "Config" "info" "--style" "set" "reload" "reset" "search" "--animations" "--site" "version" "select" "--blur" "variety" "theme" "clean" "calc" "airplane_mode" "reload" "--browser" "--print-snip" "--reset" "reload" "--rasi" "Clone" "check" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "show" "-f" "inject" "power" "--persist" "binds" "rebuild" "screencap" "man" "asus_patch" "events" "override" "--rebuild" "--rasi" "--blur" "restore" "-d" "--browser" "sddm" "run" "--option" "cache" "control" "prev" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "next" "size" "flatpak" "Config" "screencap" "emoji" "--record-snip" "prev" "2" "--revert" "set" "patch" "select" "Package" "control")

    declare -A literal_transitions
    literal_transitions[0]="([35]=24 [68]=2 [37]=3 [53]=4 [2]=5 [36]=25 [22]=7 [93]=8 [94]=9 [113]=10 [96]=11 [43]=12 [97]=13 [83]=14 [29]=15 [11]=16 [73]=17 [14]=18 [75]=19 [77]=20 [86]=21 [33]=23 [78]=1 [90]=6)"
    literal_transitions[1]="([26]=26 [42]=26 [6]=31 [49]=26 [7]=33)"
    literal_transitions[2]="([127]=26 [44]=35)"
    literal_transitions[5]="([34]=26 [101]=36)"
    literal_transitions[6]="([104]=26 [18]=26 [12]=26 [67]=26)"
    literal_transitions[7]="([54]=26 [107]=26 [125]=26 [98]=26 [124]=26)"
    literal_transitions[8]="([57]=26)"
    literal_transitions[9]="([60]=26 [105]=26 [85]=26 [118]=27)"
    literal_transitions[11]="([81]=26 [65]=26)"
    literal_transitions[12]="([126]=26)"
    literal_transitions[13]="([117]=26)"
    literal_transitions[16]="([13]=26 [38]=26 [58]=26 [0]=26)"
    literal_transitions[17]="([56]=34 [109]=26 [47]=26 [112]=26 [71]=26)"
    literal_transitions[18]="([61]=26 [45]=26 [111]=26 [31]=26)"
    literal_transitions[19]="([119]=32 [59]=40 [39]=26 [80]=28 [23]=41 [82]=26 [50]=30 [27]=38)"
    literal_transitions[20]="([84]=26 [116]=26 [99]=37)"
    literal_transitions[24]="([115]=43 [121]=26 [48]=26 [114]=26 [128]=26)"
    literal_transitions[27]="([9]=26 [120]=26 [21]=26 [41]=26 [15]=26 [103]=26 [63]=26 [106]=26 [20]=26)"
    literal_transitions[28]="([5]=26 [108]=26 [16]=26 [76]=29 [91]=26)"
    literal_transitions[30]="([52]=26 [92]=26 [88]=29 [25]=26)"
    literal_transitions[31]="([10]=26 [55]=26 [72]=26 [102]=26)"
    literal_transitions[32]="([46]=26 [66]=29)"
    literal_transitions[33]="([4]=26 [51]=26 [74]=26 [89]=26)"
    literal_transitions[34]="([64]=26)"
    literal_transitions[35]="([110]=26 [100]=26 [70]=26)"
    literal_transitions[36]="([24]=26 [28]=26 [122]=26 [8]=26)"
    literal_transitions[37]="([1]=26 [19]=26 [123]=26)"
    literal_transitions[38]="([95]=26 [32]=26 [40]=26 [3]=26)"
    literal_transitions[39]="([69]=26)"
    literal_transitions[40]="([25]=26 [88]=29)"
    literal_transitions[41]="([87]=26 [17]=26 [79]=26 [66]=29 [62]=42)"
    literal_transitions[43]="([30]=26)"

    declare -A match_anything_transitions
    match_anything_transitions=([25]=26 [42]=26 [10]=26 [3]=26 [14]=26 [0]=22 [15]=26 [21]=26 [4]=26 [22]=39 [29]=26 [23]=26)
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

    declare -A specialized_commands
    specialized_commands=([29]=0)
    if [[ -v "specialized_commands[$state]" ]]; then
        local command_id=${specialized_commands[$state]}
        local completions=()
        mapfile -t completions < <(_Hyde_spec_"${command_id}" "$prefix" | cut -f1)
        for item in "${completions[@]}"; do
            if [[ $item = "${prefix}"* ]]; then
                COMPREPLY+=("$item")
            fi
        done
    fi


    return 0
}

complete -o nospace -F _Hyde Hyde
