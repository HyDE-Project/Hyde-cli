_Hyde () {
    local -a literals=("waybar" "update" "wallbash" "::=" "sddm" "reload" "cache" "shell" "branch" "show" "sync" "backup" "wallpaper" "inject" "power" "version" "theme" "run" "man" "shell_completion" "systeminfo" "upgrade" "restore")

    local -A descriptions
    descriptions[1]=" Waybar commands"
    descriptions[2]=" Pull updates from Hyde repository"
    descriptions[3]=" Toggle to use wallpaper accent themes"
    descriptions[5]=" Sddm commands"
    descriptions[6]=" Just reload"
    descriptions[7]=" Manages Hyde's cache"
    descriptions[8]=" Shell commands"
    descriptions[9]=" Set preavailable Hyde branch "
    descriptions[10]=" Some Hypr GUI you might want to use"
    descriptions[11]=" Overwrite current dots from the user "
    descriptions[12]=" Backing up commands"
    descriptions[13]=" Wallpaper commands"
    descriptions[14]=" User/Device specific scripts that might be useful"
    descriptions[15]=" Power Options"
    descriptions[16]=" Hyde-cli version"
    descriptions[17]=" Theme commands"
    descriptions[18]=" Executables"
    descriptions[19]=" Show Manual"
    descriptions[20]=" Generate Shell Completions"
    descriptions[21]=" System information"
    descriptions[22]=" Upgrades dots from the repository"
    descriptions[23]=" Restore dots"

    local -A literal_transitions
    literal_transitions[1]="([15]=23 [6]=24 [2]=4 [16]=5 [3]=6 [5]=7 [17]=8 [7]=10 [18]=11 [10]=12 [9]=14 [8]=13 [11]=15 [19]=16 [20]=17 [12]=18 [21]=19 [13]=20 [14]=21 [22]=22 [1]=2 [23]=3)"
    literal_transitions[26]="([4]=25)"

    local -A match_anything_transitions
    match_anything_transitions=([2]=25 [22]=25 [1]=9 [20]=25 [11]=25 [7]=25 [16]=25 [10]=25 [4]=25 [18]=25 [6]=25 [21]=25 [9]=26 [3]=25 [13]=25 [12]=25 [8]=25 [19]=25 [14]=25 [15]=25 [17]=25 [5]=25 [23]=25 [24]=25)

    declare -A subword_transitions

    local state=1
    local word_index=2
    while [[ $word_index -lt $CURRENT ]]; do
        if [[ -v "literal_transitions[$state]" ]]; then
            local -A state_transitions
            eval "state_transitions=${literal_transitions[$state]}"

            local word=${words[$word_index]}
            local word_matched=0
            for ((literal_id = 1; literal_id <= $#literals; literal_id++)); do
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

    completions_no_description_trailing_space=()
    completions_no_description_no_trailing_space=()
    completions_trailing_space=()
    suffixes_trailing_space=()
    descriptions_trailing_space=()
    completions_no_trailing_space=()
    suffixes_no_trailing_space=()
    descriptions_no_trailing_space=()

    if [[ -v "literal_transitions[$state]" ]]; then
        local -A state_transitions
        eval "state_transitions=${literal_transitions[$state]}"

        for literal_id in ${(k)state_transitions}; do
            if [[ -v "descriptions[$literal_id]" ]]; then
                completions_trailing_space+=("${literals[$literal_id]}")
                suffixes_trailing_space+=("${literals[$literal_id]}")
                descriptions_trailing_space+=("${descriptions[$literal_id]}")
            else
                completions_no_description_trailing_space+=("${literals[$literal_id]}")
            fi
        done
    fi

    local maxlen=0
    for suffix in ${suffixes_trailing_space[@]}; do
        if [[ ${#suffix} -gt $maxlen ]]; then
            maxlen=${#suffix}
        fi
    done
    for suffix in ${suffixes_no_trailing_space[@]}; do
        if [[ ${#suffix} -gt $maxlen ]]; then
            maxlen=${#suffix}
        fi
    done

    for ((i = 1; i <= $#suffixes_trailing_space; i++)); do
        if [[ -z ${descriptions_trailing_space[$i]} ]]; then
            descriptions_trailing_space[$i]="${(r($maxlen)( ))${suffixes_trailing_space[$i]}}"
        else
            descriptions_trailing_space[$i]="${(r($maxlen)( ))${suffixes_trailing_space[$i]}} -- ${descriptions_trailing_space[$i]}"
        fi
    done

    for ((i = 1; i <= $#suffixes_no_trailing_space; i++)); do
        if [[ -z ${descriptions_no_trailing_space[$i]} ]]; then
            descriptions_no_trailing_space[$i]="${(r($maxlen)( ))${suffixes_no_trailing_space[$i]}}"
        else
            descriptions_no_trailing_space[$i]="${(r($maxlen)( ))${suffixes_no_trailing_space[$i]}} -- ${descriptions_no_trailing_space[$i]}"
        fi
    done

    compadd -Q -a completions_no_description_trailing_space
    compadd -Q -S ' ' -a completions_no_description_no_trailing_space
    compadd -l -Q -a -d descriptions_trailing_space completions_trailing_space
    compadd -l -Q -S '' -a -d descriptions_no_trailing_space completions_no_trailing_space
    return 0
}

compdef _Hyde Hyde
