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

    local -a literals=("revert" "--uninstall" "wallbash" "--copy" "--opacity" "-j" "theme" "save" "unset" "3" "--stop" "--animations" "backup" "BackUp" "list" "cursor" "--freeze" "-p" "--no-custom" "Config" "--install" "--scan" "--record-focus" "theme" "bookmarks" "0" "--reset" "toggle" "pastebin" "1" "systeminfo" "--all" "theme" "--delete" "upgrade" "toggle" "waybar" "reload" "update" "all" "glyph" "--wipe" "--print-monitor" "game" "shell" "Config" "info" "--style" "set" "reload" "reset" "code" "--animations" "search" "--site" "version" "select" "--blur" "variety" "clean" "calc" "airplane_mode" "reload" "--browser" "--print-snip" "--reset" "reload" "--rasi" "Clone" "check" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "show" "-f" "inject" "power" "--persist" "binds" "rebuild" "screencap" "man" "asus_patch" "events" "override" "--rebuild" "--rasi" "--blur" "restore" "install" "-d" "--browser" "sddm" "run" "set" "--option" "cache" "list" "control" "prev" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "next" "size" "flatpak" "Config" "screencap" "emoji" "--record-snip" "prev" "2" "--revert" "set" "patch" "select" "Package" "control")

    declare -A literal_transitions
    literal_transitions[0]="([79]=6 [69]=2 [38]=3 [55]=4 [2]=5 [34]=25 [23]=7 [95]=9 [96]=10 [117]=12 [99]=11 [36]=26 [44]=13 [101]=14 [84]=15 [30]=16 [12]=17 [74]=18 [15]=19 [76]=20 [78]=21 [87]=22 [51]=24 [91]=8 [37]=1)"
    literal_transitions[2]="([131]=27 [45]=36)"
    literal_transitions[5]="([35]=27 [105]=37)"
    literal_transitions[6]="([27]=27 [43]=27 [7]=41 [50]=27 [8]=43)"
    literal_transitions[7]="([56]=27 [111]=27 [129]=27 [102]=27 [128]=27)"
    literal_transitions[8]="([108]=27 [19]=27 [13]=27 [68]=27)"
    literal_transitions[9]="([97]=27 [92]=27 [100]=27)"
    literal_transitions[10]="([61]=27 [109]=27 [86]=27 [122]=35)"
    literal_transitions[11]="([82]=27 [66]=27)"
    literal_transitions[13]="([130]=27)"
    literal_transitions[14]="([121]=27)"
    literal_transitions[17]="([14]=27 [39]=27 [59]=27 [0]=27)"
    literal_transitions[18]="([58]=29 [113]=27 [48]=27 [116]=27 [72]=27)"
    literal_transitions[19]="([62]=27 [46]=27 [115]=27 [32]=27)"
    literal_transitions[20]="([123]=39 [60]=34 [40]=27 [81]=31 [24]=40 [83]=27 [53]=33 [28]=30)"
    literal_transitions[21]="([85]=27 [120]=27 [103]=44)"
    literal_transitions[24]="([6]=27)"
    literal_transitions[26]="([119]=42 [125]=27 [49]=27 [118]=27 [132]=27)"
    literal_transitions[29]="([65]=27)"
    literal_transitions[30]="([98]=27 [33]=27 [41]=27 [3]=27)"
    literal_transitions[31]="([5]=27 [112]=27 [17]=27 [77]=32 [93]=27)"
    literal_transitions[33]="([54]=27 [94]=27 [89]=32 [26]=27)"
    literal_transitions[34]="([26]=27 [89]=32)"
    literal_transitions[35]="([10]=27 [124]=27 [22]=27 [42]=27 [16]=27 [107]=27 [64]=27 [110]=27 [21]=27)"
    literal_transitions[36]="([114]=27 [104]=27 [71]=27)"
    literal_transitions[37]="([25]=27 [29]=27 [126]=27 [9]=27)"
    literal_transitions[38]="([70]=27)"
    literal_transitions[39]="([47]=27 [67]=32)"
    literal_transitions[40]="([88]=27 [18]=27 [80]=27 [67]=32 [63]=28)"
    literal_transitions[41]="([11]=27 [57]=27 [73]=27 [106]=27)"
    literal_transitions[42]="([31]=27)"
    literal_transitions[43]="([4]=27 [52]=27 [75]=27 [90]=27)"
    literal_transitions[44]="([1]=27 [20]=27 [127]=27)"

    declare -A match_anything_transitions
    match_anything_transitions=([1]=27 [3]=27 [28]=27 [16]=27 [12]=27 [0]=23 [15]=27 [32]=27 [4]=27 [22]=27 [25]=27 [23]=38)
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
    specialized_commands=([32]=0)
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
