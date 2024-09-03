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

    local -a literals=("revert" "--uninstall" "wallbash" "--copy" "--opacity" "-j" "theme" "save" "unset" "3" "--stop" "--animations" "backup" "BackUp" "list" "cursor" "--freeze" "-p" "--no-custom" "Config" "--install" "--scan" "--record-focus" "theme" "bookmarks" "0" "--reset" "toggle" "pastebin" "unset" "1" "systeminfo" "--all" "theme" "--delete" "upgrade" "toggle" "waybar" "reload" "update" "all" "glyph" "--wipe" "--print-monitor" "game" "shell" "Config" "info" "--style" "set" "reload" "reset" "on" "--animations" "code" "search" "version" "--site" "select" "--blur" "off" "variety" "clean" "calc" "airplane_mode" "reload" "--browser" "--print-snip" "--reset" "reload" "--rasi" "Clone" "--all" "check" "--all" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "show" "-f" "inject" "power" "--persist" "binds" "rebuild" "screencap" "man" "asus_patch" "events" "override" "--rebuild" "--rasi" "--blur" "restore" "install" "-d" "info" "--browser" "sddm" "run" "set" "--option" "cache" "list" "control" "prev" "patch" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "import" "--preserve" "size" "next" "branch" "select" "next" "size" "test" "flatpak" "Config" "screencap" "emoji" "--record-snip" "prev" "2" "--revert" "set" "select" "Package" "control")

    declare -A literal_transitions
    literal_transitions[0]="([84]=6 [73]=2 [39]=3 [56]=4 [2]=5 [35]=25 [23]=7 [101]=9 [102]=10 [124]=12 [105]=11 [37]=26 [45]=13 [107]=14 [89]=15 [31]=16 [12]=17 [79]=18 [15]=19 [81]=20 [83]=21 [92]=22 [54]=24 [96]=8 [38]=1)"
    literal_transitions[2]="([139]=27 [46]=34)"
    literal_transitions[5]="([36]=27 [112]=29)"
    literal_transitions[6]="([27]=27 [44]=27 [7]=40 [51]=27 [8]=33)"
    literal_transitions[7]="([58]=27 [118]=27 [137]=27 [120]=27 [109]=27 [108]=27)"
    literal_transitions[8]="([115]=27 [19]=27 [13]=27 [71]=27)"
    literal_transitions[9]="([103]=27 [29]=27 [99]=27 [106]=27 [128]=27 [97]=27)"
    literal_transitions[10]="([64]=27 [116]=27 [91]=27 [131]=42)"
    literal_transitions[11]="([87]=27 [69]=27)"
    literal_transitions[13]="([138]=27)"
    literal_transitions[14]="([130]=27)"
    literal_transitions[17]="([14]=27 [40]=27 [62]=27 [0]=27)"
    literal_transitions[18]="([61]=43 [125]=27 [49]=27 [123]=27 [77]=27)"
    literal_transitions[19]="([65]=27 [47]=27 [122]=27 [33]=27)"
    literal_transitions[20]="([132]=35 [63]=36 [41]=27 [86]=30 [24]=37 [88]=27 [55]=38 [28]=39)"
    literal_transitions[21]="([90]=27 [129]=27 [110]=32)"
    literal_transitions[24]="([6]=27)"
    literal_transitions[26]="([127]=44 [134]=27 [50]=27 [126]=27 [140]=27)"
    literal_transitions[29]="([25]=27 [30]=27 [135]=27 [9]=27)"
    literal_transitions[30]="([5]=27 [119]=27 [17]=27 [82]=28 [98]=27)"
    literal_transitions[32]="([1]=27 [20]=27 [136]=27)"
    literal_transitions[33]="([4]=27 [53]=27 [80]=27 [95]=27 [74]=27)"
    literal_transitions[34]="([121]=27 [111]=27 [76]=27)"
    literal_transitions[35]="([48]=27 [70]=28)"
    literal_transitions[36]="([26]=27 [94]=28)"
    literal_transitions[37]="([93]=27 [18]=27 [85]=27 [70]=28 [66]=31)"
    literal_transitions[38]="([57]=27 [100]=27 [94]=28 [26]=27)"
    literal_transitions[39]="([104]=27 [34]=27 [42]=27 [3]=27)"
    literal_transitions[40]="([52]=27 [11]=27 [59]=27 [60]=27 [78]=27 [113]=27 [72]=27)"
    literal_transitions[41]="([75]=27)"
    literal_transitions[42]="([10]=27 [133]=27 [22]=27 [43]=27 [16]=27 [114]=27 [67]=27 [117]=27 [21]=27)"
    literal_transitions[43]="([68]=27)"
    literal_transitions[44]="([32]=27)"

    declare -A match_anything_transitions
    match_anything_transitions=([25]=27 [1]=27 [3]=27 [28]=27 [16]=27 [12]=27 [31]=27 [0]=23 [15]=27 [4]=27 [22]=27 [23]=41)
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
    specialized_commands=([28]=0)
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
