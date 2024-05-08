_Hyde () {
    local -a literals=("control" "revert" "wallbash" "::=" "prev" "--opacity" "-j" "chaotic_aur" "branch" "save" "3" "--borderangle" "--animations" "unset" "backup" "BackUp" "list" "wallpaper" "--borderangle" "-p" "Config" "-w" "power" "d" "inject" "set" "theme" "binds" "rebuild" "0" "screencap" "pastebin" "c" "man" "1" "systeminfo" "events" "asus_patch" "--blur" "toggle" "restore" "waybar" "upgrade" "toggle" "update" "all" "-d" "sddm" "emoji" "w" "game" "cache" "glyph" "shell" "show" "audio_idle" "prev" "sync" "reload" "mode" "--opacity" "Link" "reset" "next" "--animations" "version" "next" "select" "-h" "select" "--blur" "run" "screencap" "theme" "clean" "2" "-f" "set" "patch" "select" "reload" "Clone")

    local -A descriptions
    descriptions[1]=" Edit waybar control file"
    descriptions[2]=" Revert to a previous backup run by 'Hyde backup all'. "
    descriptions[3]=" Toggle to use wallpaper accent themes"
    descriptions[5]=" Previous wallpaper"
    descriptions[6]=" Default tranparency"
    descriptions[7]="  Show the JSON format"
    descriptions[8]=" Add chaotic aur"
    descriptions[9]=" Set preavailable Hyde branch "
    descriptions[10]=" [*] Save power by disabling features"
    descriptions[11]=" wallbash light mode"
    descriptions[12]=" Disable border angle animation"
    descriptions[13]=" Disable animations"
    descriptions[14]=" [*] Unset specific changes"
    descriptions[15]=" Backing up commands"
    descriptions[16]=" Restores dots from previous backup"
    descriptions[17]=" List the backup"
    descriptions[18]=" Wallpaper commands"
    descriptions[19]=" Default border angle animation"
    descriptions[20]="  Show the pretty format"
    descriptions[21]=" Only restores dots from default '/Configs'"
    descriptions[22]="  Custom width"
    descriptions[23]=" Power Options"
    descriptions[24]=" cliphist list and delete selected"
    descriptions[25]=" User/Device specific scripts that might be useful"
    descriptions[26]=" Set /Path/to/Wallpapers as new wallpaper directory"
    descriptions[27]=" Theme commands"
    descriptions[28]=" [*] Show keybind hints"
    descriptions[29]=" Force rebuild cache"
    descriptions[30]=" wallbash disabled"
    descriptions[31]=" Use rofi to select screenshot options "
    descriptions[32]=" [*] Pastebin manager "
    descriptions[33]=" cliphist list and copy selected"
    descriptions[34]=" Show Manual"
    descriptions[35]=" wallbash auto"
    descriptions[36]=" System information"
    descriptions[37]=" Watches hyprland events and executes actions"
    descriptions[38]=" Fixes issues for asus devices"
    descriptions[39]=" Default blur"
    descriptions[40]=" Cycles wallbash [0] off [1] auto [2] dark [3] light"
    descriptions[41]=" Restore dots"
    descriptions[42]=" Waybar commands"
    descriptions[43]=" Upgrades dots from the repository"
    descriptions[44]=" Toggle ﯦ Set/unset current changes'"
    descriptions[45]=" Pull updates from Hyde repository"
    descriptions[46]=" Backs up the current configuration"
    descriptions[47]="  Add custom delimiter symbol (default '>')"
    descriptions[48]=" Sddm commands"
    descriptions[49]=" Emoji selector"
    descriptions[50]=" cliphist wipe database"
    descriptions[51]=" Toggle game mode"
    descriptions[52]=" Manages Hyde's cache"
    descriptions[53]=" Glyph selector"
    descriptions[54]=" Shell commands"
    descriptions[55]=" Some Hypr GUI you might want to use"
    descriptions[56]=" Inhibits idle when player is 'Playing'"
    descriptions[57]=" Previous theme"
    descriptions[58]=" Overwrite current dots from the user "
    descriptions[59]=" Just reload"
    descriptions[60]=" [*] Set wallbash mode. [0] [1] [2] [3] "
    descriptions[61]=" Disable tranparency"
    descriptions[62]=" Links a clone directory. Useful if you want to change your CloneDir"
    descriptions[63]=" Reset changes"
    descriptions[64]=" Next theme"
    descriptions[65]=" Default animations"
    descriptions[66]=" Hyde-cli version"
    descriptions[67]=" Next wallppaer"
    descriptions[68]=" Wallpaper selector"
    descriptions[69]="  Display this help message"
    descriptions[70]=" Theme selector"
    descriptions[71]=" Disable blur"
    descriptions[72]=" Executables"
    descriptions[73]=" Screenshot and screenrecord tool"
    descriptions[74]=" Select sddm theme"
    descriptions[75]=" Clear some storage by deleting old backups"
    descriptions[76]=" wallbash dark mode"
    descriptions[77]="  Add custom file"
    descriptions[78]=" Set theme"
    descriptions[79]=" Patch a theme from different repository."
    descriptions[80]=" Shell selector"
    descriptions[81]=" Reload wallpaper cache"
    descriptions[82]=" Restores dots from a clone repository "

    local -A literal_transitions
    literal_transitions[1]="([42]=22 [23]=23 [45]=4 [66]=5 [3]=6 [27]=7 [48]=8 [52]=10 [72]=11 [55]=14 [54]=12 [9]=13 [58]=15 [34]=16 [15]=17 [36]=18 [18]=19 [25]=20 [43]=21 [41]=2 [59]=3)"
    literal_transitions[2]="([62]=24 [21]=24 [16]=24 [82]=24)"
    literal_transitions[6]="([40]=24 [60]=27)"
    literal_transitions[7]="([64]=24 [70]=24 [79]=24 [57]=24 [78]=24)"
    literal_transitions[8]="([74]=24)"
    literal_transitions[10]="([29]=24 [81]=24)"
    literal_transitions[11]="([37]=24 [56]=24 [73]=24)"
    literal_transitions[12]="([80]=24)"
    literal_transitions[14]="([49]=24 [31]=24 [53]=24 [28]=29 [32]=25)"
    literal_transitions[17]="([17]=24 [46]=24 [75]=24 [2]=24)"
    literal_transitions[19]="([68]=24 [67]=24 [26]=24 [5]=24)"
    literal_transitions[20]="([8]=24 [38]=24)"
    literal_transitions[22]="([1]=24)"
    literal_transitions[23]="([44]=24 [51]=24 [10]=28 [63]=24 [14]=30)"
    literal_transitions[25]="([33]=24 [24]=24 [50]=24)"
    literal_transitions[26]="([4]=24)"
    literal_transitions[27]="([30]=24 [35]=24 [76]=24 [11]=24)"
    literal_transitions[28]="([13]=24 [71]=24 [12]=24 [61]=24)"
    literal_transitions[29]="([7]=24 [69]=24 [20]=24 [47]=24 [77]=24 [22]=24)"
    literal_transitions[30]="([6]=24 [19]=24 [65]=24 [39]=24)"

    local -A match_anything_transitions
    match_anything_transitions=([4]=24 [13]=24 [15]=24 [3]=24 [1]=9 [18]=24 [16]=24 [21]=24 [9]=26 [5]=24)

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
