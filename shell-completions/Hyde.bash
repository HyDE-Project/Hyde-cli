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

    local -a literals=("revert" "--uninstall" "wallbash" "--copy" "--opacity" "-j" "theme" "save" "unset" "3" "--stop" "--animations" "backup" "BackUp" "list" "cursor" "--freeze" "-p" "--no-custom" "Config" "--install" "--scan" "--record-focus" "theme" "bookmarks" "0" "--reset" "toggle" "pastebin" "1" "systeminfo" "--all" "theme" "--delete" "upgrade" "toggle" "waybar" "reload" "update" "all" "glyph" "--wipe" "--print-monitor" "game" "shell" "Config" "info" "--style" "set" "reload" "reset" "code" "--animations" "search" "--site" "version" "select" "--blur" "variety" "theme" "clean" "calc" "airplane_mode" "reload" "--browser" "--print-snip" "--reset" "reload" "--rasi" "Clone" "check" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "show" "-f" "inject" "power" "--persist" "binds" "rebuild" "screencap" "man" "asus_patch" "events" "override" "--rebuild" "--rasi" "--blur" "restore" "-d" "--browser" "sddm" "run" "--option" "cache" "control" "prev" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "next" "size" "flatpak" "Config" "screencap" "emoji" "--record-snip" "prev" "2" "--revert" "set" "patch" "select" "Package" "control")

    declare -A literal_transitions
    literal_transitions[0]="([80]=6 [70]=2 [38]=3 [55]=4 [2]=5 [34]=25 [23]=7 [95]=9 [96]=10 [115]=12 [98]=11 [36]=26 [44]=13 [99]=14 [85]=15 [30]=16 [12]=17 [75]=18 [15]=19 [77]=20 [79]=21 [88]=22 [51]=24 [92]=8 [37]=1)"
    literal_transitions[2]="([129]=28 [45]=30)"
    literal_transitions[5]="([35]=28 [103]=31)"
    literal_transitions[6]="([27]=28 [43]=28 [7]=33 [50]=28 [8]=42)"
    literal_transitions[7]="([56]=28 [109]=28 [127]=28 [100]=28 [126]=28)"
    literal_transitions[8]="([106]=28 [19]=28 [13]=28 [69]=28)"
    literal_transitions[9]="([59]=28)"
    literal_transitions[10]="([62]=28 [107]=28 [87]=28 [120]=41)"
    literal_transitions[11]="([83]=28 [67]=28)"
    literal_transitions[13]="([128]=28)"
    literal_transitions[14]="([119]=28)"
    literal_transitions[17]="([14]=28 [39]=28 [60]=28 [0]=28)"
    literal_transitions[18]="([58]=43 [111]=28 [48]=28 [114]=28 [73]=28)"
    literal_transitions[19]="([63]=28 [46]=28 [113]=28 [32]=28)"
    literal_transitions[20]="([121]=27 [61]=32 [40]=28 [82]=36 [24]=37 [84]=28 [53]=38 [28]=39)"
    literal_transitions[21]="([86]=28 [118]=28 [101]=40)"
    literal_transitions[24]="([6]=28)"
    literal_transitions[26]="([117]=44 [123]=28 [49]=28 [116]=28 [130]=28)"
    literal_transitions[27]="([47]=28 [68]=29)"
    literal_transitions[30]="([112]=28 [102]=28 [72]=28)"
    literal_transitions[31]="([25]=28 [29]=28 [124]=28 [9]=28)"
    literal_transitions[32]="([26]=28 [90]=29)"
    literal_transitions[33]="([11]=28 [57]=28 [74]=28 [104]=28)"
    literal_transitions[34]="([71]=28)"
    literal_transitions[36]="([5]=28 [110]=28 [17]=28 [78]=29 [93]=28)"
    literal_transitions[37]="([89]=28 [18]=28 [81]=28 [68]=29 [64]=35)"
    literal_transitions[38]="([54]=28 [94]=28 [90]=29 [26]=28)"
    literal_transitions[39]="([97]=28 [33]=28 [41]=28 [3]=28)"
    literal_transitions[40]="([1]=28 [20]=28 [125]=28)"
    literal_transitions[41]="([10]=28 [122]=28 [22]=28 [42]=28 [16]=28 [105]=28 [65]=28 [108]=28 [21]=28)"
    literal_transitions[42]="([4]=28 [52]=28 [76]=28 [91]=28)"
    literal_transitions[43]="([66]=28)"
    literal_transitions[44]="([31]=28)"

    declare -A match_anything_transitions
    match_anything_transitions=([23]=34 [29]=28 [1]=28 [3]=28 [12]=28 [16]=28 [0]=23 [15]=28 [35]=28 [4]=28 [22]=28 [25]=28)
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
