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

    local -a literals=("revert" "--uninstall" "wallbash" "--copy" "--opacity" "-j" "save" "unset" "3" "--stop" "--animations" "backup" "BackUp" "list" "cursor" "-p" "--no-custom" "Config" "--install" "--scan" "--record-focus" "theme" "bookmarks" "0" "-freeze" "--reset" "toggle" "pastebin" "1" "systeminfo" "--all" "theme" "--delete" "upgrade" "toggle" "waybar" "reload" "update" "all" "glyph" "--wipe" "--print-monitor" "game" "shell" "Config" "info" "search" "set" "reload" "reset" "--style" "--animations" "--site" "version" "select" "--blur" "variety" "theme" "clean" "airplane_mode" "-f" "reload" "--browser" "--print-snip" "--reset" "reload" "--rasi" "Clone" "check" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "show" "inject" "power" "binds" "rebuild" "screencap" "man" "asus_patch" "events" "override" "--rebuild" "--rasi" "--blur" "restore" "-d" "--browser" "sddm" "run" "--option" "cache" "control" "prev" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "next" "size" "flatpak" "Config" "screencap" "emoji" "--record-snip" "prev" "2" "--revert" "set" "patch" "select" "Package" "control")

    declare -A literal_transitions
    literal_transitions[0]="([35]=24 [68]=2 [37]=3 [53]=4 [2]=5 [36]=25 [21]=7 [91]=8 [92]=9 [111]=10 [94]=11 [43]=12 [95]=13 [81]=14 [29]=15 [11]=16 [73]=17 [14]=18 [75]=19 [76]=20 [84]=21 [33]=23 [77]=1 [88]=6)"
    literal_transitions[1]="([26]=27 [42]=27 [6]=33 [49]=27 [7]=32)"
    literal_transitions[2]="([125]=27 [44]=34)"
    literal_transitions[5]="([34]=27 [99]=35)"
    literal_transitions[6]="([102]=27 [17]=27 [12]=27 [67]=27)"
    literal_transitions[7]="([54]=27 [105]=27 [123]=27 [96]=27 [122]=27)"
    literal_transitions[8]="([57]=27)"
    literal_transitions[9]="([59]=27 [103]=27 [83]=27 [116]=28)"
    literal_transitions[11]="([79]=27 [65]=27)"
    literal_transitions[12]="([124]=27)"
    literal_transitions[13]="([115]=27)"
    literal_transitions[16]="([13]=27 [38]=27 [58]=27 [0]=27)"
    literal_transitions[17]="([56]=29 [107]=27 [47]=27 [110]=27 [71]=27)"
    literal_transitions[18]="([61]=27 [45]=27 [109]=27 [31]=27)"
    literal_transitions[19]="([117]=36 [80]=27 [27]=41 [46]=37 [39]=27 [78]=40 [22]=39)"
    literal_transitions[20]="([82]=27 [114]=27 [97]=30)"
    literal_transitions[24]="([113]=38 [119]=27 [48]=27 [112]=27 [126]=27)"
    literal_transitions[28]="([9]=27 [118]=27 [20]=27 [41]=27 [24]=27 [101]=27 [63]=27 [104]=27 [19]=27)"
    literal_transitions[29]="([64]=27)"
    literal_transitions[30]="([1]=27 [18]=27 [121]=27)"
    literal_transitions[31]="([69]=27)"
    literal_transitions[32]="([4]=27 [51]=27 [74]=27 [87]=27)"
    literal_transitions[33]="([10]=27 [55]=27 [72]=27 [100]=27)"
    literal_transitions[34]="([108]=27 [98]=27 [70]=27)"
    literal_transitions[35]="([23]=27 [28]=27 [120]=27 [8]=27)"
    literal_transitions[36]="([50]=27 [86]=26)"
    literal_transitions[37]="([52]=27 [90]=27 [86]=26 [25]=27)"
    literal_transitions[38]="([30]=27)"
    literal_transitions[39]="([85]=27 [16]=27 [66]=26 [62]=42)"
    literal_transitions[40]="([5]=27 [106]=27 [15]=27 [60]=26 [89]=27)"
    literal_transitions[41]="([93]=27 [32]=27 [40]=27 [3]=27)"

    declare -A match_anything_transitions
    match_anything_transitions=([23]=27 [42]=27 [10]=27 [3]=27 [14]=27 [26]=27 [0]=22 [15]=27 [21]=27 [4]=27 [22]=31 [25]=27)
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
    specialized_commands=([26]=0)
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
