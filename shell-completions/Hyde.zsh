_Hyde () {
    local -a literals=("control" "Clone" "wallbash" "::=" "prev" "--opacity" "-j" "chaotic_aur" "save" "Config" "3" "--borderangle" "--animations" "unset" "--stop" "backup" "BackUp" "list" "wallpaper" "--borderangle" "-p" "Config" "-w" "power" "d" "--scan" "inject" "--record-focus" "set" "theme" "binds" "rebuild" "0" "screencap" "audio_idle" "-freeze" "size" "pastebin" "c" "man" "1" "systeminfo" "events" "asus_patch" "--blur" "toggle" "waybar" "upgrade" "restore" "toggle" "update" "all" "check" "sddm" "-d" "emoji" "game" "cache" "w" "control" "shell" "show" "prev" "sync" "glyph" "--print-monitor" "reload" "mode" "--opacity" "--reset" "Link" "reload" "--print-all" "reset" "next" "--animations" "version" "next" "select" "branch" "select" "--blur" "-h" "run" "screencap" "--record-snip" "theme" "clean" "2" "-f" "set" "patch" "select" "--print-snip" "Config" "reload" "revert")

    local -A descriptions
    descriptions[1]=" Edit waybar control file"
    descriptions[2]=" Restores dots from a clone repository "
    descriptions[3]=" Toggle to use wallpaper accent themes"
    descriptions[5]=" Previous wallpaper"
    descriptions[6]=" Default tranparency"
    descriptions[7]="  Show the JSON format"
    descriptions[8]=" Add chaotic aur"
    descriptions[9]=" [*] Save power by disabling features"
    descriptions[10]=" Manage restore control list"
    descriptions[11]=" wallbash light mode"
    descriptions[12]=" Disable border angle animation"
    descriptions[13]=" Disable animations"
    descriptions[14]=" [*] Unset specific changes"
    descriptions[15]="  Stop every instance of Screencap"
    descriptions[16]=" Backing up commands"
    descriptions[17]=" Restores dots from previous backup"
    descriptions[18]=" List the backup"
    descriptions[19]=" Wallpaper commands"
    descriptions[20]=" Default border angle animation"
    descriptions[21]="  Show the pretty format"
    descriptions[22]=" Only restores dots from default '/Configs'"
    descriptions[23]="  Custom width"
    descriptions[24]=" Power Options"
    descriptions[25]=" cliphist list and delete selected"
    descriptions[26]="  Use 'tesseract' to scan image then add to clipboard"
    descriptions[27]=" User/Device specific scripts that might be useful"
    descriptions[28]="  Record focused monitor"
    descriptions[29]=" Set /Path/to/Wallpapers as new wallpaper directory"
    descriptions[30]=" Theme commands"
    descriptions[31]=" [*] Show keybind hints"
    descriptions[32]=" Force rebuild cache"
    descriptions[33]=" wallbash disabled"
    descriptions[34]=" Use rofi to select screenshot options "
    descriptions[35]=" Inhibits idle when player state: 'Playing"
    descriptions[36]="  Frozen screen, drag to manually snip an area"
    descriptions[37]=" Set waybar size"
    descriptions[38]=" [*] Pastebin manager "
    descriptions[39]=" cliphist list and copy selected"
    descriptions[40]=" Show Manual"
    descriptions[41]=" wallbash auto"
    descriptions[42]=" System information"
    descriptions[43]=" Watches hyprland events and executes actions"
    descriptions[44]=" Fixes issues for asus devices"
    descriptions[45]=" Default blur"
    descriptions[46]=" Cycles wallbash [0] off [1] auto [2] dark [3] light"
    descriptions[47]=" Waybar commands"
    descriptions[48]=" Upgrades dots from the repository"
    descriptions[49]=" Restore dots"
    descriptions[50]=" Toggle ﯦ Set/unset current changes'"
    descriptions[51]=" Pull updates from Hyde repository"
    descriptions[52]=" Backs up the current configuration"
    descriptions[53]=" Hyde health Checker"
    descriptions[54]=" Sddm commands"
    descriptions[55]="  Add custom delimiter symbol (default '>')"
    descriptions[56]=" Emoji selector"
    descriptions[57]=" Toggle game mode"
    descriptions[58]=" Manages Hyde's cache"
    descriptions[59]=" cliphist wipe database"
    descriptions[60]=" Interactive control file"
    descriptions[61]=" Shell commands"
    descriptions[62]=" Some Hypr GUI you might want to use"
    descriptions[63]=" Previous theme"
    descriptions[64]=" Overwrite current dots from the user "
    descriptions[65]=" Glyph selector"
    descriptions[66]="  Print focused monitor"
    descriptions[67]=" Just reload"
    descriptions[68]=" [*] Set wallbash mode. [0] [1] [2] [3] "
    descriptions[69]=" Disable tranparency"
    descriptions[70]="  Reinitialize screencap"
    descriptions[71]=" Links a clone directory. Useful if you want to change your CloneDir"
    descriptions[72]=" Reloads waybar"
    descriptions[73]="  Print all outputs"
    descriptions[74]=" Reset changes"
    descriptions[75]=" Next theme"
    descriptions[76]=" Default animations"
    descriptions[77]=" Hyde-cli version"
    descriptions[78]=" Next wallppaer"
    descriptions[79]=" Wallpaper selector"
    descriptions[80]=" Set preavailable Hyde branch"
    descriptions[81]=" Theme selector"
    descriptions[82]=" Disable blur"
    descriptions[83]="  Display this help message"
    descriptions[84]=" Executables"
    descriptions[85]=" [*] Screenshot and screenrecord tool"
    descriptions[86]="  Drag to manually snip an area to screen record it"
    descriptions[87]=" Select sddm theme"
    descriptions[88]=" Clear some storage by deleting old backups"
    descriptions[89]=" wallbash dark mode"
    descriptions[90]="  Add custom file"
    descriptions[91]=" Set theme"
    descriptions[92]=" Patch a theme from different repository."
    descriptions[93]=" Shell selector"
    descriptions[94]="  Drag to manually snip an area"
    descriptions[95]=" Check missing File/Directory"
    descriptions[96]=" Reload wallpaper cache"
    descriptions[97]=" Revert to a previous backup run by 'Hyde backup all'. "

    local -A literal_transitions
    literal_transitions[1]="([49]=24 [24]=25 [51]=4 [77]=5 [3]=6 [53]=7 [30]=8 [54]=9 [80]=10 [58]=12 [84]=13 [60]=14 [61]=15 [62]=16 [64]=17 [40]=18 [16]=19 [42]=20 [19]=21 [27]=22 [48]=23 [47]=2 [67]=3)"
    literal_transitions[2]="([72]=26 [37]=26 [1]=26)"
    literal_transitions[6]="([46]=26 [68]=31)"
    literal_transitions[7]="([95]=26)"
    literal_transitions[8]="([75]=26 [81]=26 [92]=26 [63]=26 [91]=26)"
    literal_transitions[9]="([87]=26)"
    literal_transitions[12]="([32]=26 [96]=26)"
    literal_transitions[13]="([43]=26 [35]=26 [85]=27)"
    literal_transitions[14]="([10]=26)"
    literal_transitions[15]="([93]=26)"
    literal_transitions[16]="([56]=26 [34]=26 [65]=26 [31]=33 [38]=30)"
    literal_transitions[19]="([18]=26 [52]=26 [88]=26 [97]=26)"
    literal_transitions[21]="([79]=26 [78]=26 [29]=26 [5]=26)"
    literal_transitions[22]="([8]=26 [44]=26)"
    literal_transitions[24]="([71]=26 [22]=26 [17]=26 [2]=26)"
    literal_transitions[25]="([50]=26 [57]=26 [9]=28 [74]=26 [14]=29)"
    literal_transitions[27]="([15]=26 [86]=26 [28]=26 [66]=26 [36]=26 [70]=26 [94]=26 [73]=26 [26]=26)"
    literal_transitions[28]="([13]=26 [82]=26 [12]=26 [69]=26)"
    literal_transitions[29]="([6]=26 [20]=26 [76]=26 [45]=26)"
    literal_transitions[30]="([39]=26 [25]=26 [59]=26)"
    literal_transitions[31]="([33]=26 [41]=26 [89]=26 [11]=26)"
    literal_transitions[32]="([4]=26)"
    literal_transitions[33]="([7]=26 [83]=26 [21]=26 [55]=26 [90]=26 [23]=26)"

    local -A match_anything_transitions
    match_anything_transitions=([11]=32 [4]=26 [3]=26 [17]=26 [1]=11 [20]=26 [18]=26 [10]=26 [5]=26 [23]=26)

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
