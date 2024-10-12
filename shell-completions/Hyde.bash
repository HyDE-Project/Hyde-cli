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

    local -a literals=("revert" "--uninstall" "wallbash" "--opacity" "-j" "theme" "save" "unset" "3" "--copy" "--animations" "--stop" "backup" "BackUp" "list" "cursor" "--deps" "-p" "--no-custom" "Config" "--freeze" "--install" "set" "--scan" "--record-focus" "theme" "bookmarks" "0" "--reset" "toggle" "pastebin" "unset" "1" "systeminfo" "--all" "theme" "--reset" "--delete" "upgrade" "toggle" "waybar" "reload" "update" "all" "--wipe" "--print-monitor" "game" "shell" "Config" "info" "--style" "reload" "code" "reset" "on" "--animations" "search" "--site" "version" "select" "--blur" "off" "variety" "clean" "calc" "airplane_mode" "--browser" "reload" "--print-snip" "--reset" "reload" "--rasi" "Clone" "--all" "check" "--all" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "show" "-f" "inject" "power" "--persist" "binds" "rebuild" "screencap" "man" "asus_patch" "events" "override" "--rebuild" "--rasi" "--blur" "restore" "install" "-d" "info" "--browser" "sddm" "run" "--option" "cache" "list" "control" "prev" "patch" "chaotic_aur" "--less" "mode" "--opacity" "Link" "audio_idle" "--print-all" "next" "-h" "set" "--preserve" "size" "next" "branch" "select" "next" "size" "test" "flatpak" "import" "Config" "screencap" "select" "emoji" "--record-snip" "prev" "2" "--revert" "set" "select" "--deps" "Package" "glyph" "control")

    declare -A literal_transitions
    literal_transitions[0]="([85]=6 [74]=2 [42]=3 [58]=4 [2]=5 [38]=25 [25]=7 [102]=9 [103]=10 [123]=12 [105]=11 [40]=26 [47]=13 [107]=14 [90]=15 [33]=16 [12]=17 [80]=18 [15]=19 [82]=20 [84]=21 [93]=22 [52]=24 [97]=8 [41]=1)"
    literal_transitions[2]="([141]=27 [48]=36)"
    literal_transitions[5]="([39]=27 [112]=37)"
    literal_transitions[6]="([29]=27 [46]=27 [6]=39 [53]=27 [7]=28)"
    literal_transitions[7]="([59]=27 [117]=27 [138]=27 [109]=27 [129]=30 [108]=27)"
    literal_transitions[8]="([114]=27 [19]=27 [13]=27 [72]=27)"
    literal_transitions[9]="([132]=27 [31]=27 [100]=27 [106]=27 [98]=27 [127]=27 [22]=27)"
    literal_transitions[10]="([65]=27 [115]=27 [92]=27 [131]=43)"
    literal_transitions[11]="([88]=27 [70]=27)"
    literal_transitions[13]="([139]=27)"
    literal_transitions[14]="([130]=27)"
    literal_transitions[17]="([14]=27 [43]=27 [63]=27 [0]=27)"
    literal_transitions[18]="([62]=35 [119]=30 [122]=27 [124]=27 [78]=27)"
    literal_transitions[19]="([67]=27 [49]=27 [121]=27 [35]=27)"
    literal_transitions[20]="([133]=38 [64]=32 [87]=40 [26]=29 [89]=27 [56]=34 [142]=41 [30]=33)"
    literal_transitions[21]="([91]=27 [128]=27 [110]=44)"
    literal_transitions[24]="([5]=27)"
    literal_transitions[26]="([126]=45 [135]=27 [51]=27 [125]=27 [143]=27)"
    literal_transitions[28]="([3]=27 [55]=27 [81]=27 [96]=27 [75]=27)"
    literal_transitions[29]="([66]=31 [94]=27 [18]=27 [86]=27 [71]=30 [16]=27)"
    literal_transitions[32]="([16]=27 [28]=27 [95]=30)"
    literal_transitions[33]="([104]=27 [37]=27 [44]=27 [9]=27 [16]=27)"
    literal_transitions[34]="([57]=27 [101]=27 [95]=30 [28]=27)"
    literal_transitions[35]="([69]=27)"
    literal_transitions[36]="([120]=27 [111]=27 [77]=27)"
    literal_transitions[37]="([27]=27 [32]=27 [136]=27 [8]=27)"
    literal_transitions[38]="([16]=27 [71]=30 [50]=27)"
    literal_transitions[39]="([54]=27 [10]=27 [60]=27 [61]=27 [79]=27 [113]=27 [73]=27)"
    literal_transitions[40]="([4]=27 [118]=27 [17]=27 [83]=30 [99]=27)"
    literal_transitions[41]="([16]=27)"
    literal_transitions[42]="([76]=27)"
    literal_transitions[43]="([11]=27 [134]=27 [24]=27 [45]=27 [20]=27 [36]=27 [68]=27 [140]=27 [116]=27 [23]=27)"
    literal_transitions[44]="([1]=27 [21]=27 [137]=27)"
    literal_transitions[45]="([34]=27)"

    declare -A match_anything_transitions
    match_anything_transitions=([1]=27 [3]=27 [30]=27 [12]=27 [16]=27 [31]=27 [0]=23 [15]=27 [4]=27 [22]=27 [25]=27 [23]=42)
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
