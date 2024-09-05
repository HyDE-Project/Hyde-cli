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

    local -a literals=("revert" "--uninstall" "wallbash" "--opacity" "-j" "theme" "save" "unset" "3" "--copy" "--animations" "--stop" "backup" "BackUp" "list" "cursor" "--deps" "-p" "--no-custom" "Config" "--freeze" "--install" "--scan" "--record-focus" "theme" "bookmarks" "0" "--reset" "toggle" "pastebin" "unset" "1" "systeminfo" "--all" "theme" "--delete" "upgrade" "toggle" "waybar" "reload" "update" "all" "--wipe" "--print-monitor" "game" "shell" "Config" "info" "--style" "reload" "code" "reset" "on" "--animations" "search" "--site" "version" "select" "--blur" "off" "variety" "clean" "calc" "airplane_mode" "reload" "--browser" "--print-snip" "--reset" "reload" "--rasi" "Clone" "--all" "check" "--all" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "show" "-f" "inject" "power" "--persist" "binds" "rebuild" "screencap" "man" "asus_patch" "events" "override" "--rebuild" "--rasi" "--blur" "restore" "install" "-d" "info" "--browser" "sddm" "run" "set" "--option" "cache" "list" "control" "prev" "patch" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "set" "--preserve" "size" "next" "branch" "select" "next" "size" "test" "flatpak" "import" "Config" "screencap" "emoji" "--record-snip" "prev" "2" "--revert" "set" "select" "Package" "glyph" "control")

    declare -A literal_transitions
    literal_transitions[0]="([83]=6 [72]=2 [40]=3 [56]=4 [2]=5 [36]=25 [24]=7 [100]=9 [101]=10 [123]=12 [104]=11 [38]=26 [45]=13 [106]=14 [88]=15 [32]=16 [12]=17 [78]=18 [15]=19 [80]=20 [82]=21 [91]=22 [50]=24 [95]=8 [39]=1)"
    literal_transitions[2]="([139]=28 [46]=27)"
    literal_transitions[5]="([37]=28 [111]=42)"
    literal_transitions[6]="([28]=28 [44]=28 [6]=44 [51]=28 [7]=35)"
    literal_transitions[7]="([57]=28 [117]=28 [137]=28 [108]=28 [129]=31 [107]=28)"
    literal_transitions[8]="([114]=28 [19]=28 [13]=28 [70]=28)"
    literal_transitions[9]="([102]=28 [30]=28 [98]=28 [105]=28 [127]=28 [96]=28)"
    literal_transitions[10]="([63]=28 [115]=28 [90]=28 [131]=34)"
    literal_transitions[11]="([86]=28 [68]=28)"
    literal_transitions[13]="([138]=28)"
    literal_transitions[14]="([130]=28)"
    literal_transitions[17]="([14]=28 [41]=28 [61]=28 [0]=28)"
    literal_transitions[18]="([60]=43 [119]=31 [122]=28 [124]=28 [76]=28)"
    literal_transitions[19]="([64]=28 [47]=28 [121]=28 [34]=28)"
    literal_transitions[20]="([132]=36 [62]=37 [85]=30 [25]=38 [87]=28 [54]=39 [140]=32 [29]=40)"
    literal_transitions[21]="([89]=28 [128]=28 [109]=41)"
    literal_transitions[24]="([5]=28)"
    literal_transitions[26]="([126]=45 [134]=28 [49]=28 [125]=28 [141]=28)"
    literal_transitions[27]="([120]=28 [110]=28 [75]=28)"
    literal_transitions[29]="([74]=28)"
    literal_transitions[30]="([4]=28 [118]=28 [17]=28 [81]=31 [97]=28)"
    literal_transitions[32]="([16]=28)"
    literal_transitions[34]="([11]=28 [133]=28 [23]=28 [43]=28 [20]=28 [113]=28 [66]=28 [116]=28 [22]=28)"
    literal_transitions[35]="([3]=28 [53]=28 [79]=28 [94]=28 [73]=28)"
    literal_transitions[36]="([16]=28 [69]=31 [48]=28)"
    literal_transitions[37]="([16]=28 [27]=28 [93]=31)"
    literal_transitions[38]="([65]=33 [92]=28 [18]=28 [84]=28 [69]=31 [16]=28)"
    literal_transitions[39]="([55]=28 [99]=28 [93]=31 [27]=28)"
    literal_transitions[40]="([103]=28 [35]=28 [42]=28 [9]=28 [16]=28)"
    literal_transitions[41]="([1]=28 [21]=28 [136]=28)"
    literal_transitions[42]="([26]=28 [31]=28 [135]=28 [8]=28)"
    literal_transitions[43]="([67]=28)"
    literal_transitions[44]="([52]=28 [10]=28 [58]=28 [59]=28 [77]=28 [112]=28 [71]=28)"
    literal_transitions[45]="([33]=28)"

    declare -A match_anything_transitions
    match_anything_transitions=([23]=29 [25]=28 [1]=28 [3]=28 [12]=28 [16]=28 [31]=28 [0]=23 [33]=28 [15]=28 [4]=28 [22]=28)
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
    specialized_commands=([31]=0)
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
