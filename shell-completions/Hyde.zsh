_Hyde () {
    local -a literals=("control" "Clone" "wallbash" "::=" "--mismatch" "prev" "--opacity" "-j" "save" "Config" "3" "Config" "--animations" "--borderangle" "unset" "backup" "--stop" "BackUp" "list" "wallpaper" "--borderangle" "-p" "Config" "-w" "power" "d" "--scan" "inject" "--record-focus" "set" "theme" "binds" "rebuild" "0" "screencap" "-freeze" "size" "pastebin" "c" "man" "1" "systeminfo" "events" "asus_patch" "--blur" "toggle" "waybar" "upgrade" "restore" "toggle" "update" "all" "-d" "sddm" "emoji" "w" "game" "cache" "glyph" "control" "shell" "show" "prev" "--less" "--presrve" "sync" "--print-monitor" "reload" "mode" "check" "--opacity" "--reset" "Link" "reload" "audio_idle" "reset" "--print-all" "next" "--animations" "version" "next" "select" "branch" "select" "--blur" "-h" "run" "flatpak" "screencap" "--record-snip" "theme" "clean" "2" "-f" "set" "patch" "select" "--print-snip" "chaotic_aur" "reload" "revert")

    local -A descriptions
    descriptions[1]=" Edit waybar control file"
    descriptions[2]=" Restores dots from a clone repository "
    descriptions[3]=" Toggle to use wallpaper accent themes"
    descriptions[5]="   Diff mismatched dotfiles"
    descriptions[6]=" Previous wallpaper"
    descriptions[7]=" Default tranparency"
    descriptions[8]="  Show the JSON format"
    descriptions[9]=" [*] Save power by disabling features"
    descriptions[10]=" Manage restore control list"
    descriptions[11]=" wallbash light mode"
    descriptions[12]=" [*] check up Config File/Directory"
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
    descriptions[53]="  Add custom delimiter symbol (default '>')"
    descriptions[54]=" Sddm commands"
    descriptions[55]=" Emoji selector"
    descriptions[56]=" cliphist wipe database"
    descriptions[57]=" Toggle game mode"
    descriptions[58]=" Manages Hyde's cache"
    descriptions[59]=" Glyph selector"
    descriptions[60]=" Interactive control file"
    descriptions[61]=" Shell commands"
    descriptions[62]=" Some Hypr GUI you might want to use"
    descriptions[63]=" Previous theme"
    descriptions[64]="   Pipes stdouts to less"
    descriptions[65]="   Diff preserved dotfiles"
    descriptions[66]=" Overwrite current dots from the user "
    descriptions[67]="  Print focused monitor"
    descriptions[68]=" Just reload"
    descriptions[69]=" [*] Set wallbash mode. [0] [1] [2] [3] "
    descriptions[70]=" health checker"
    descriptions[71]=" Disable tranparency"
    descriptions[72]="  Reinitialize screencap"
    descriptions[73]=" Links a clone directory. Useful if you want to change your CloneDir"
    descriptions[74]=" Reloads waybar"
    descriptions[75]=" Inhibits idle when player status: 'Playing"
    descriptions[76]=" Reset changes"
    descriptions[77]="  Print all outputs"
    descriptions[78]=" Next theme"
    descriptions[79]=" Default animations"
    descriptions[80]=" Hyde-cli version"
    descriptions[81]=" Next wallppaer"
    descriptions[82]=" Wallpaper selector"
    descriptions[83]=" Set preavailable Hyde branch"
    descriptions[84]=" Theme selector"
    descriptions[85]=" Disable blur"
    descriptions[86]="  Display this help message"
    descriptions[87]=" Executables"
    descriptions[88]=" Flatpak setup for HyDE"
    descriptions[89]=" [*] Screenshot and screenrecord tool"
    descriptions[90]="  Drag to manually snip an area to screen record it"
    descriptions[91]=" Select sddm theme"
    descriptions[92]=" Clear some storage by deleting old backups"
    descriptions[93]=" wallbash dark mode"
    descriptions[94]="  Add custom file"
    descriptions[95]=" Set theme"
    descriptions[96]=" Patch a theme from different repository."
    descriptions[97]=" Shell selector"
    descriptions[98]="  Drag to manually snip an area"
    descriptions[99]=" Add chaotic aur to you mirror"
    descriptions[100]=" Reload wallpaper cache"
    descriptions[101]=" Revert to a previous backup run by 'Hyde backup all'. "

    local -A literal_transitions
    literal_transitions[1]="([49]=24 [25]=25 [51]=4 [80]=5 [3]=6 [31]=7 [54]=8 [83]=9 [58]=11 [87]=12 [62]=15 [60]=13 [61]=14 [66]=16 [40]=17 [16]=18 [42]=19 [20]=20 [70]=21 [28]=22 [48]=23 [47]=2 [68]=3)"
    literal_transitions[2]="([74]=27 [37]=27 [1]=27)"
    literal_transitions[6]="([46]=27 [69]=31)"
    literal_transitions[7]="([78]=27 [84]=27 [96]=27 [63]=27 [95]=27)"
    literal_transitions[8]="([91]=27)"
    literal_transitions[11]="([33]=27 [100]=27)"
    literal_transitions[12]="([75]=27 [43]=27 [89]=26)"
    literal_transitions[13]="([10]=27)"
    literal_transitions[14]="([97]=27)"
    literal_transitions[15]="([55]=27 [35]=27 [59]=27 [32]=32 [38]=33)"
    literal_transitions[18]="([19]=27 [52]=27 [92]=27 [101]=27)"
    literal_transitions[20]="([82]=27 [81]=27 [30]=27 [6]=27)"
    literal_transitions[21]="([12]=34)"
    literal_transitions[22]="([44]=27 [88]=27 [99]=27)"
    literal_transitions[24]="([73]=27 [23]=27 [18]=27 [2]=27)"
    literal_transitions[25]="([50]=27 [57]=27 [9]=29 [76]=27 [15]=30)"
    literal_transitions[26]="([17]=27 [90]=27 [29]=27 [67]=27 [36]=27 [72]=27 [98]=27 [77]=27 [27]=27)"
    literal_transitions[28]="([4]=27)"
    literal_transitions[29]="([13]=27 [85]=27 [14]=27 [71]=27)"
    literal_transitions[30]="([7]=27 [21]=27 [79]=27 [45]=27)"
    literal_transitions[31]="([34]=27 [41]=27 [93]=27 [11]=27)"
    literal_transitions[32]="([8]=27 [86]=27 [22]=27 [53]=27 [94]=27 [24]=27)"
    literal_transitions[33]="([39]=27 [26]=27 [56]=27)"
    literal_transitions[34]="([64]=27 [65]=27 [5]=27)"

    local -A match_anything_transitions
    match_anything_transitions=([4]=27 [19]=27 [3]=27 [17]=27 [1]=10 [16]=27 [10]=28 [9]=27 [5]=27 [23]=27)

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
