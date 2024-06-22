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

    local -a literals=("revert" "--uninstall" "wallbash" "--copy" "--opacity" "-j" "save" "unset" "3" "--stop" "--animations" "backup" "BackUp" "list" "cursor" "-p" "--no-custom" "Config" "--install" "--scan" "--record-focus" "theme" "bookmarks" "0" "-freeze" "--reset" "toggle" "pastebin" "1" "systeminfo" "--all" "theme" "--delete" "upgrade" "toggle" "waybar" "reload" "update" "all" "glyph" "--wipe" "--print-monitor" "game" "shell" "Config" "info" "search" "set" "reload" "reset" "--style" "--animations" "--site" "version" "select" "--blur" "variety" "theme" "clean" "airplane_mode" "-f" "reload" "--browser" "--print-snip" "--reset" "reload" "--rasi" "Clone" "check" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "show" "inject" "power" "--persist" "binds" "rebuild" "screencap" "man" "asus_patch" "events" "override" "--rebuild" "--rasi" "--blur" "restore" "-d" "--browser" "sddm" "run" "--option" "cache" "control" "prev" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "next" "size" "flatpak" "Config" "screencap" "emoji" "--record-snip" "prev" "2" "--revert" "set" "patch" "select" "Package" "control")

    declare -A literal_transitions
    literal_transitions[0]="([35]=24 [68]=2 [37]=3 [53]=4 [2]=5 [36]=25 [21]=7 [92]=8 [93]=9 [112]=10 [95]=11 [43]=12 [96]=13 [82]=14 [29]=15 [11]=16 [73]=17 [14]=18 [75]=19 [76]=20 [85]=21 [33]=23 [77]=1 [89]=6)"
    literal_transitions[1]="([26]=27 [42]=27 [6]=26 [49]=27 [7]=33)"
    literal_transitions[2]="([126]=27 [44]=37)"
    literal_transitions[5]="([34]=27 [100]=36)"
    literal_transitions[6]="([103]=27 [17]=27 [12]=27 [67]=27)"
    literal_transitions[7]="([54]=27 [106]=27 [124]=27 [97]=27 [123]=27)"
    literal_transitions[8]="([57]=27)"
    literal_transitions[9]="([59]=27 [104]=27 [84]=27 [117]=31)"
    literal_transitions[11]="([80]=27 [65]=27)"
    literal_transitions[12]="([125]=27)"
    literal_transitions[13]="([116]=27)"
    literal_transitions[16]="([13]=27 [38]=27 [58]=27 [0]=27)"
    literal_transitions[17]="([56]=32 [108]=27 [47]=27 [111]=27 [71]=27)"
    literal_transitions[18]="([61]=27 [45]=27 [110]=27 [31]=27)"
    literal_transitions[19]="([118]=40 [81]=27 [27]=35 [46]=39 [39]=27 [79]=41 [22]=28)"
    literal_transitions[20]="([83]=27 [115]=27 [98]=38)"
    literal_transitions[24]="([114]=34 [120]=27 [48]=27 [113]=27 [127]=27)"
    literal_transitions[26]="([10]=27 [55]=27 [72]=27 [101]=27)"
    literal_transitions[28]="([86]=27 [16]=27 [78]=27 [66]=29 [62]=30)"
    literal_transitions[31]="([9]=27 [119]=27 [20]=27 [41]=27 [24]=27 [102]=27 [63]=27 [105]=27 [19]=27)"
    literal_transitions[32]="([64]=27)"
    literal_transitions[33]="([4]=27 [51]=27 [74]=27 [88]=27)"
    literal_transitions[34]="([30]=27)"
    literal_transitions[35]="([94]=27 [32]=27 [40]=27 [3]=27)"
    literal_transitions[36]="([23]=27 [28]=27 [121]=27 [8]=27)"
    literal_transitions[37]="([109]=27 [99]=27 [70]=27)"
    literal_transitions[38]="([1]=27 [18]=27 [122]=27)"
    literal_transitions[39]="([52]=27 [91]=27 [87]=29 [25]=27)"
    literal_transitions[40]="([50]=27 [66]=29)"
    literal_transitions[41]="([5]=27 [107]=27 [15]=27 [60]=29 [90]=27)"
    literal_transitions[42]="([69]=27)"

    declare -A match_anything_transitions
    match_anything_transitions=([25]=27 [10]=27 [3]=27 [30]=27 [14]=27 [0]=22 [15]=27 [21]=27 [4]=27 [22]=42 [29]=27 [23]=27)
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
