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

    local -a literals=("revert" "--uninstall" "wallbash" "--copy" "--opacity" "-j" "theme" "save" "unset" "3" "--stop" "--animations" "backup" "BackUp" "list" "cursor" "--freeze" "-p" "--no-custom" "Config" "--install" "--scan" "--record-focus" "theme" "bookmarks" "0" "--reset" "toggle" "pastebin" "1" "systeminfo" "--all" "theme" "--delete" "upgrade" "toggle" "waybar" "reload" "update" "all" "glyph" "--wipe" "--print-monitor" "game" "shell" "Config" "info" "--style" "set" "reload" "reset" "on" "--animations" "code" "search" "version" "--site" "select" "--blur" "off" "variety" "clean" "calc" "airplane_mode" "reload" "--browser" "--print-snip" "--reset" "reload" "--rasi" "Clone" "--all" "check" "--all" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "show" "-f" "inject" "power" "--persist" "binds" "rebuild" "screencap" "man" "asus_patch" "events" "override" "--rebuild" "--rasi" "--blur" "restore" "install" "-d" "--browser" "sddm" "run" "set" "--option" "cache" "list" "control" "prev" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "next" "size" "flatpak" "Config" "screencap" "emoji" "--record-snip" "prev" "2" "--revert" "set" "patch" "select" "Package" "control")

    declare -A literal_transitions
    literal_transitions[0]="([83]=6 [72]=2 [38]=3 [55]=4 [2]=5 [34]=25 [23]=7 [99]=9 [100]=10 [121]=12 [103]=11 [36]=26 [44]=13 [105]=14 [88]=15 [30]=16 [12]=17 [78]=18 [15]=19 [80]=20 [82]=21 [91]=22 [53]=24 [95]=8 [37]=1)"
    literal_transitions[2]="([135]=27 [45]=28)"
    literal_transitions[5]="([35]=27 [109]=36)"
    literal_transitions[6]="([27]=27 [43]=27 [7]=40 [50]=27 [8]=41)"
    literal_transitions[7]="([57]=27 [115]=27 [133]=27 [106]=27 [132]=27)"
    literal_transitions[8]="([112]=27 [19]=27 [13]=27 [70]=27)"
    literal_transitions[9]="([101]=27 [96]=27 [104]=27)"
    literal_transitions[10]="([63]=27 [113]=27 [90]=27 [126]=34)"
    literal_transitions[11]="([86]=27 [68]=27)"
    literal_transitions[13]="([134]=27)"
    literal_transitions[14]="([125]=27)"
    literal_transitions[17]="([14]=27 [39]=27 [61]=27 [0]=27)"
    literal_transitions[18]="([60]=44 [117]=27 [48]=27 [120]=27 [76]=27)"
    literal_transitions[19]="([64]=27 [46]=27 [119]=27 [32]=27)"
    literal_transitions[20]="([127]=33 [62]=29 [40]=27 [85]=32 [24]=37 [87]=27 [54]=38 [28]=31)"
    literal_transitions[21]="([89]=27 [124]=27 [107]=43)"
    literal_transitions[24]="([6]=27)"
    literal_transitions[26]="([123]=42 [129]=27 [49]=27 [122]=27 [136]=27)"
    literal_transitions[28]="([118]=27 [108]=27 [75]=27)"
    literal_transitions[29]="([26]=27 [93]=30)"
    literal_transitions[31]="([102]=27 [33]=27 [41]=27 [3]=27)"
    literal_transitions[32]="([5]=27 [116]=27 [17]=27 [81]=30 [97]=27)"
    literal_transitions[33]="([47]=27 [69]=30)"
    literal_transitions[34]="([10]=27 [128]=27 [22]=27 [42]=27 [16]=27 [111]=27 [66]=27 [114]=27 [21]=27)"
    literal_transitions[35]="([74]=27)"
    literal_transitions[36]="([25]=27 [29]=27 [130]=27 [9]=27)"
    literal_transitions[37]="([92]=27 [18]=27 [84]=27 [69]=30 [65]=39)"
    literal_transitions[38]="([56]=27 [98]=27 [93]=30 [26]=27)"
    literal_transitions[40]="([51]=27 [11]=27 [58]=27 [59]=27 [77]=27 [110]=27 [71]=27)"
    literal_transitions[41]="([4]=27 [52]=27 [79]=27 [94]=27 [73]=27)"
    literal_transitions[42]="([31]=27)"
    literal_transitions[43]="([1]=27 [20]=27 [131]=27)"
    literal_transitions[44]="([67]=27)"

    declare -A match_anything_transitions
    match_anything_transitions=([1]=27 [39]=27 [3]=27 [30]=27 [12]=27 [16]=27 [0]=23 [15]=27 [4]=27 [22]=27 [25]=27 [23]=35)
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
    specialized_commands=([30]=0)
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
