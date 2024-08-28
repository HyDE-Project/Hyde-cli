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

    local -a literals=("revert" "--uninstall" "wallbash" "--copy" "--opacity" "-j" "theme" "save" "unset" "3" "--stop" "--animations" "backup" "BackUp" "list" "cursor" "--freeze" "-p" "--no-custom" "Config" "--install" "--scan" "--record-focus" "theme" "bookmarks" "0" "--reset" "toggle" "pastebin" "1" "systeminfo" "--all" "theme" "--delete" "upgrade" "toggle" "waybar" "reload" "update" "all" "glyph" "--wipe" "--print-monitor" "game" "shell" "Config" "info" "--style" "set" "reload" "reset" "on" "--animations" "code" "search" "version" "--site" "select" "--blur" "off" "variety" "clean" "calc" "airplane_mode" "reload" "--browser" "--print-snip" "--reset" "reload" "--rasi" "Clone" "--all" "check" "--all" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "show" "-f" "inject" "power" "--persist" "binds" "rebuild" "screencap" "man" "asus_patch" "unset" "override" "events" "--rebuild" "--rasi" "--blur" "restore" "install" "-d" "info" "--browser" "sddm" "run" "set" "--option" "cache" "list" "control" "prev" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "next" "size" "test" "flatpak" "Config" "screencap" "emoji" "--record-snip" "prev" "2" "--revert" "set" "patch" "select" "Package" "control")

    declare -A literal_transitions
    literal_transitions[0]="([83]=6 [72]=2 [38]=3 [55]=4 [2]=5 [34]=25 [23]=7 [101]=9 [102]=10 [123]=12 [105]=11 [36]=26 [44]=13 [107]=14 [88]=15 [30]=16 [12]=17 [78]=18 [15]=19 [80]=20 [82]=21 [91]=22 [53]=24 [96]=8 [37]=1)"
    literal_transitions[2]="([138]=27 [45]=30)"
    literal_transitions[5]="([35]=27 [111]=34)"
    literal_transitions[6]="([27]=27 [43]=27 [7]=33 [50]=27 [8]=44)"
    literal_transitions[7]="([57]=27 [117]=27 [136]=27 [108]=27 [135]=27)"
    literal_transitions[8]="([114]=27 [19]=27 [13]=27 [70]=27)"
    literal_transitions[9]="([103]=27 [99]=27 [106]=27 [90]=27 [126]=27 [97]=27)"
    literal_transitions[10]="([63]=27 [115]=27 [92]=27 [129]=42)"
    literal_transitions[11]="([86]=27 [68]=27)"
    literal_transitions[13]="([137]=27)"
    literal_transitions[14]="([128]=27)"
    literal_transitions[17]="([14]=27 [39]=27 [61]=27 [0]=27)"
    literal_transitions[18]="([60]=40 [119]=27 [48]=27 [122]=27 [76]=27)"
    literal_transitions[19]="([64]=27 [46]=27 [121]=27 [32]=27)"
    literal_transitions[20]="([130]=28 [62]=31 [40]=27 [85]=36 [24]=37 [87]=27 [54]=35 [28]=38)"
    literal_transitions[21]="([89]=27 [127]=27 [109]=43)"
    literal_transitions[24]="([6]=27)"
    literal_transitions[26]="([125]=32 [132]=27 [49]=27 [124]=27 [139]=27)"
    literal_transitions[28]="([47]=27 [69]=29)"
    literal_transitions[30]="([120]=27 [110]=27 [75]=27)"
    literal_transitions[31]="([26]=27 [94]=29)"
    literal_transitions[32]="([31]=27)"
    literal_transitions[33]="([51]=27 [11]=27 [58]=27 [59]=27 [77]=27 [112]=27 [71]=27)"
    literal_transitions[34]="([25]=27 [29]=27 [133]=27 [9]=27)"
    literal_transitions[35]="([56]=27 [100]=27 [94]=29 [26]=27)"
    literal_transitions[36]="([5]=27 [118]=27 [17]=27 [81]=29 [98]=27)"
    literal_transitions[37]="([93]=27 [18]=27 [84]=27 [69]=29 [65]=41)"
    literal_transitions[38]="([104]=27 [33]=27 [41]=27 [3]=27)"
    literal_transitions[39]="([74]=27)"
    literal_transitions[40]="([67]=27)"
    literal_transitions[42]="([10]=27 [131]=27 [22]=27 [42]=27 [16]=27 [113]=27 [66]=27 [116]=27 [21]=27)"
    literal_transitions[43]="([1]=27 [20]=27 [134]=27)"
    literal_transitions[44]="([4]=27 [52]=27 [79]=27 [95]=27 [73]=27)"

    declare -A match_anything_transitions
    match_anything_transitions=([25]=27 [1]=27 [3]=27 [41]=27 [12]=27 [16]=27 [0]=23 [15]=27 [4]=27 [22]=27 [29]=27 [23]=39)
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
