_Hyde () {
    local -a literals=("binds" "save" "game" "::=" "version" "all" "update" "wallpaper" "shell" "reload" "Link" "restore" "revert" "cache" "list" "prev" "control" "monitors" "next" "power" "next" "Config" "systeminfo" "BackUp" "mode" "theme" "branch" "wallbash" "unset" "prev" "backup" "reset" "events" "select" "toggle" "glyph" "set" "patch" "emoji" "pastebin" "set" "clean" "rebuild" "inject" "screencap" "select" "screencap" "reload" "sddm" "show" "run" "Clone" "theme" "select" "waybar" "upgrade" "chaotic" "man")

    local -A descriptions
    descriptions[1]="Keybind hints"
    descriptions[2]="Save power by disabling features"
    descriptions[3]="Toggle game mode"
    descriptions[5]="Hyde-cli version"
    descriptions[6]="Backs up the current configuration"
    descriptions[7]="Pull Updates From Hyde repository"
    descriptions[8]="Wallpaper Commands"
    descriptions[9]="Shell commands"
    descriptions[10]="Just Reload"
    descriptions[11]="Links a clone directory. Useful if you want to change your CloneDir"
    descriptions[12]="Restore dots"
    descriptions[13]="Revert to a previous backup run by 'Hyde backup all'"
    descriptions[14]="Manages Hyde's cache"
    descriptions[15]="List the backup"
    descriptions[16]="Previous wallpaper"
    descriptions[18]="Manages Monitors using nwg-displays"
    descriptions[19]="Next theme"
    descriptions[20]="Power options"
    descriptions[21]="Next wallpaper"
    descriptions[22]="Only restores dots from default"
    descriptions[23]="System information"
    descriptions[24]="Restores dots from previous backup"
    descriptions[25]="Set wallbash mode. [0] [1] [2] [3] "
    descriptions[27]="Set pref Hyde branch"
    descriptions[28]="Toggle to use wallpaper accent themes"
    descriptions[29]="Unset specific changes"
    descriptions[30]="Previous theme"
    descriptions[31]="Backing up commands"
    descriptions[32]="Reset changes"
    descriptions[33]="Watches hyprland events and executes actions"
    descriptions[35]="Cycles wallbash [0] off [1] auto [2] dark [3] light"
    descriptions[36]="Glyph selector"
    descriptions[37]="Set theme"
    descriptions[38]="Patch a theme from different repository"
    descriptions[39]="Emoji selector "
    descriptions[40]="Pastebin manager"
    descriptions[41]="Set /Path/to/Wallpapers as new wallpaper directory"
    descriptions[42]="Clear some storage by deleting old backups"
    descriptions[43]="Force rebuild cache"
    descriptions[44]="User/Device specific scripts that might be useful"
    descriptions[45]="Use rofi to select screenshot options"
    descriptions[46]="Theme selector"
    descriptions[47]="Screenshot and screenrecord tool"
    descriptions[48]="Wallpaper Cache"
    descriptions[49]="Sddm commands"
    descriptions[50]="Some Hypr GUI you might want to use"
    descriptions[51]="Executables"
    descriptions[52]="Restores dots from a clone repository"
    descriptions[53]="Theme commands"
    descriptions[54]="Wallpaper selector"
    descriptions[55]="Waybar commands"
    descriptions[56]="Upgrades dots from the repository "
    descriptions[58]="Show manual"

    local -A literal_transitions
    literal_transitions[1]="([44]=2 [5]=4 [20]=5 [49]=6 [7]=4 [50]=7 [8]=8 [23]=4 [51]=9 [9]=10 [53]=11 [55]=12 [10]=4 [27]=4 [56]=4 [28]=13 [12]=14 [31]=15 [14]=16)"
    literal_transitions[2]="([57]=4)"
    literal_transitions[5]="([32]=4 [29]=4 [3]=4 [2]=4)"
    literal_transitions[6]="([26]=4)"
    literal_transitions[7]="([18]=4 [36]=4 [1]=4 [45]=4 [39]=4 [40]=4)"
    literal_transitions[8]="([41]=4 [54]=4 [21]=4 [16]=4)"
    literal_transitions[9]="([33]=4 [47]=4)"
    literal_transitions[10]="([34]=4)"
    literal_transitions[11]="([46]=4 [19]=4 [30]=4 [37]=4 [38]=4)"
    literal_transitions[12]="([17]=4)"
    literal_transitions[13]="([35]=4 [25]=4)"
    literal_transitions[14]="([11]=4 [22]=4 [52]=4 [24]=4)"
    literal_transitions[15]="([15]=4 [42]=4 [6]=4 [13]=4)"
    literal_transitions[16]="([48]=4 [43]=4)"
    literal_transitions[17]="([4]=18)"
    literal_transitions[18]="([58]=4)"

    local -A match_anything_transitions
    match_anything_transitions=([1]=3 [3]=17)

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
