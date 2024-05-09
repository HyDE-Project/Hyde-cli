_Hyde () {
    local -a literals=("control" "revert" "wallbash" "::=" "prev" "--opacity" "-j" "chaotic_aur" "branch" "Config" "3" "save" "--animations" "--borderangle" "unset" "backup" "--stop" "BackUp" "list" "wallpaper" "--borderangle" "-p" "Config" "-w" "power" "d" "--scan" "inject" "--record-focus" "set" "theme" "binds" "rebuild" "0" "screencap" "audio_idle" "-freeze" "size" "pastebin" "c" "man" "1" "systeminfo" "events" "asus_patch" "--blur" "toggle" "waybar" "upgrade" "restore" "toggle" "update" "all" "-d" "sddm" "emoji" "w" "game" "cache" "glyph" "control" "shell" "show" "prev" "sync" "--print-monitor" "reload" "mode" "--opacity" "--reset" "Link" "reload" "--print-all" "reset" "next" "--animations" "version" "next" "select" "-h" "select" "--blur" "run" "screencap" "--record-snip" "theme" "clean" "2" "-f" "set" "patch" "select" "--print-snip" "reload" "Clone")

    local -A descriptions
    descriptions[1]=" Edit waybar control file"
    descriptions[2]=" Revert to a previous backup run by 'Hyde backup all'. "
    descriptions[3]=" Toggle to use wallpaper accent themes"
    descriptions[5]=" Previous wallpaper"
    descriptions[6]=" Default tranparency"
    descriptions[7]="  Show the JSON format"
    descriptions[8]=" Add chaotic aur"
    descriptions[9]=" Set preavailable Hyde branch "
    descriptions[10]=" Manage restore control list"
    descriptions[11]=" wallbash light mode"
    descriptions[12]=" [*] Save power by disabling features"
    descriptions[13]=" Disable animations"
    descriptions[14]=" Disable border angle animation"
    descriptions[15]=" [*] Unset specific changes"
    descriptions[16]=" Backing up commands"
    descriptions[17]="  Stop every instance of Screencap"
    descriptions[18]=" Restores dots from previous backup"
    descriptions[19]=" List the backup"
    descriptions[20]=" Wallpaper commands"
    descriptions[21]=" Default border angle animation"
    descriptions[22]="  Show the pretty format"
    descriptions[23]=" Only restores dots from default '/Configs'"
    descriptions[24]="  Custom width"
    descriptions[25]=" Power Options"
    descriptions[26]=" cliphist list and delete selected"
    descriptions[27]="  Use 'tesseract' to scan image then add to clipboard"
    descriptions[28]=" User/Device specific scripts that might be useful"
    descriptions[29]="  Record focused monitor"
    descriptions[30]=" Set /Path/to/Wallpapers as new wallpaper directory"
    descriptions[31]=" Theme commands"
    descriptions[32]=" [*] Show keybind hints"
    descriptions[33]=" Force rebuild cache"
    descriptions[34]=" wallbash disabled"
    descriptions[35]=" Use rofi to select screenshot options "
    descriptions[36]=" Inhibits idle when player state: 'Playing"
    descriptions[37]="  Frozen screen, drag to manually snip an area"
    descriptions[38]=" Set waybar size"
    descriptions[39]=" [*] Pastebin manager "
    descriptions[40]=" cliphist list and copy selected"
    descriptions[41]=" Show Manual"
    descriptions[42]=" wallbash auto"
    descriptions[43]=" System information"
    descriptions[44]=" Watches hyprland events and executes actions"
    descriptions[45]=" Fixes issues for asus devices"
    descriptions[46]=" Default blur"
    descriptions[47]=" Cycles wallbash [0] off [1] auto [2] dark [3] light"
    descriptions[48]=" Waybar commands"
    descriptions[49]=" Upgrades dots from the repository"
    descriptions[50]=" Restore dots"
    descriptions[51]=" Toggle ﯦ Set/unset current changes'"
    descriptions[52]=" Pull updates from Hyde repository"
    descriptions[53]=" Backs up the current configuration"
    descriptions[54]="  Add custom delimiter symbol (default '>')"
    descriptions[55]=" Sddm commands"
    descriptions[56]=" Emoji selector"
    descriptions[57]=" cliphist wipe database"
    descriptions[58]=" Toggle game mode"
    descriptions[59]=" Manages Hyde's cache"
    descriptions[60]=" Glyph selector"
    descriptions[61]=" Interactive control file"
    descriptions[62]=" Shell commands"
    descriptions[63]=" Some Hypr GUI you might want to use"
    descriptions[64]=" Previous theme"
    descriptions[65]=" Overwrite current dots from the user "
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
    descriptions[80]="  Display this help message"
    descriptions[81]=" Theme selector"
    descriptions[82]=" Disable blur"
    descriptions[83]=" Executables"
    descriptions[84]=" [*] Screenshot and screenrecord tool"
    descriptions[85]="  Drag to manually snip an area to screen record it"
    descriptions[86]=" Select sddm theme"
    descriptions[87]=" Clear some storage by deleting old backups"
    descriptions[88]=" wallbash dark mode"
    descriptions[89]="  Add custom file"
    descriptions[90]=" Set theme"
    descriptions[91]=" Patch a theme from different repository."
    descriptions[92]=" Shell selector"
    descriptions[93]="  Drag to manually snip an area"
    descriptions[94]=" Reload wallpaper cache"
    descriptions[95]=" Restores dots from a clone repository "

    local -A literal_transitions
    literal_transitions[1]="([50]=23 [25]=24 [52]=4 [77]=5 [3]=6 [31]=7 [55]=8 [59]=10 [83]=11 [62]=14 [63]=15 [61]=12 [9]=13 [65]=16 [41]=17 [16]=18 [43]=19 [20]=20 [28]=21 [49]=22 [48]=2 [67]=3)"
    literal_transitions[2]="([72]=26 [38]=26 [1]=26)"
    literal_transitions[6]="([47]=26 [68]=29)"
    literal_transitions[7]="([75]=26 [81]=26 [91]=26 [64]=26 [90]=26)"
    literal_transitions[8]="([86]=26)"
    literal_transitions[10]="([33]=26 [94]=26)"
    literal_transitions[11]="([44]=26 [36]=26 [84]=28)"
    literal_transitions[12]="([10]=26)"
    literal_transitions[14]="([92]=26)"
    literal_transitions[15]="([56]=26 [35]=26 [60]=26 [32]=31 [39]=27)"
    literal_transitions[18]="([19]=26 [53]=26 [87]=26 [2]=26)"
    literal_transitions[20]="([79]=26 [78]=26 [30]=26 [5]=26)"
    literal_transitions[21]="([8]=26 [45]=26)"
    literal_transitions[23]="([71]=26 [23]=26 [18]=26 [95]=26)"
    literal_transitions[24]="([51]=26 [58]=26 [12]=30 [74]=26 [15]=32)"
    literal_transitions[25]="([4]=26)"
    literal_transitions[27]="([40]=26 [26]=26 [57]=26)"
    literal_transitions[28]="([17]=26 [85]=26 [29]=26 [66]=26 [37]=26 [70]=26 [93]=26 [73]=26 [27]=26)"
    literal_transitions[29]="([34]=26 [42]=26 [88]=26 [11]=26)"
    literal_transitions[30]="([13]=26 [82]=26 [14]=26 [69]=26)"
    literal_transitions[31]="([7]=26 [80]=26 [22]=26 [54]=26 [89]=26 [24]=26)"
    literal_transitions[32]="([6]=26 [21]=26 [76]=26 [46]=26)"

    local -A match_anything_transitions
    match_anything_transitions=([4]=26 [3]=26 [19]=26 [13]=26 [17]=26 [1]=9 [16]=26 [9]=25 [22]=26 [5]=26)

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
