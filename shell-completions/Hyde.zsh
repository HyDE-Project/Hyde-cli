_Hyde () {
    local -a literals=("--uninstall" "revert" "--install" "wallbash" "--opacity" "-j" "save" "Config" "3" "Config" "--animations" "unset" "--stop" "backup" "BackUp" "list" "-p" "Config" "d" "--scan" "--record-focus" "theme" "-freeze" "0" "pastebin" "1" "systeminfo" "--all" "toggle" "waybar" "upgrade" "toggle" "reload" "update" "all" "glyph" "--print-monitor" "w" "game" "shell" "--less" "--presrve" "reload" "reset" "--animations" "version" "select" "--blur" "run" "theme" "clean" "size" "-f" "--print-snip" "reload" "Clone" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "-w" "inject" "power" "set" "binds" "rebuild" "screencap" "c" "man" "asus_patch" "events" "--blur" "restore" "-d" "emoji" "sddm" "cache" "control" "show" "prev" "sync" "chaotic_aur" "mode" "check" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "next" "branch" "flatpak" "screencap" "--record-snip" "2" "--revert" "set" "patch" "select" "control")

    local -A descriptions
    descriptions[1]=" Removes Chaotic Aur"
    descriptions[2]=" Revert to a previous backup run by 'Hyde backup all'. "
    descriptions[3]=" Setup Choatic Aur, append [fresh] to run in fresh install mode"
    descriptions[4]=" Toggle to use wallpaper accent themes"
    descriptions[5]=" Default tranparency"
    descriptions[6]="  Show the JSON format"
    descriptions[7]=" [*] Save power by disabling features"
    descriptions[8]=" Manage restore control list"
    descriptions[9]=" wallbash light mode"
    descriptions[10]=" [*] check up Config File/Directory"
    descriptions[11]=" Disable animations"
    descriptions[12]=" [*] Unset specific changes"
    descriptions[13]="  Stop every instance of Screencap"
    descriptions[14]=" Backing up commands"
    descriptions[15]=" Restores dots from previous backup"
    descriptions[16]=" List the backup"
    descriptions[17]="  Show the pretty format"
    descriptions[18]=" Only restores dots from default '/Configs'"
    descriptions[19]=" cliphist list and delete selected"
    descriptions[20]="  Use 'tesseract' to scan image then add to clipboard"
    descriptions[21]="  Record focused monitor"
    descriptions[22]=" Theme commands"
    descriptions[23]="  Frozen screen, drag to manually snip an area"
    descriptions[24]=" wallbash disabled"
    descriptions[25]=" [*] Pastebin manager "
    descriptions[26]=" wallbash auto"
    descriptions[27]=" System information"
    descriptions[28]=" Change all the pre-set sizes"
    descriptions[29]=" Cycles wallbash [0] off [1] auto [2] dark [3] light"
    descriptions[30]=" Waybar commands"
    descriptions[31]=" Upgrades dots from the repository"
    descriptions[32]=" Toggle ﯦ Set/unset current changes'"
    descriptions[33]=" Just reload"
    descriptions[34]=" Pull updates from Hyde repository"
    descriptions[35]=" Backs up the current configuration"
    descriptions[36]=" Glyph selector"
    descriptions[37]="  Print focused monitor"
    descriptions[38]=" cliphist wipe database"
    descriptions[39]=" Toggle game mode"
    descriptions[40]=" Shell commands"
    descriptions[41]="   Pipes stdouts to less"
    descriptions[42]="   Diff preserved dotfiles"
    descriptions[43]=" Reloads waybar"
    descriptions[44]=" Reset changes"
    descriptions[45]=" Default animations"
    descriptions[46]=" Hyde-cli version"
    descriptions[47]=" Theme selector"
    descriptions[48]=" Disable blur"
    descriptions[49]=" Executables"
    descriptions[50]=" Select sddm theme"
    descriptions[51]=" Clear some storage by deleting old backups"
    descriptions[52]=" [*]Set waybar size"
    descriptions[53]="  Add custom file"
    descriptions[54]="  Drag to manually snip an area"
    descriptions[55]=" Reload wallpaper cache"
    descriptions[56]=" Restores dots from a clone repository "
    descriptions[58]="   Diff mismatched dotfiles"
    descriptions[59]=" Previous wallpaper"
    descriptions[60]=" Disable border angle animation"
    descriptions[61]=" Wallpaper commands"
    descriptions[62]=" Default border angle animation"
    descriptions[63]="  Custom width"
    descriptions[64]=" User/Device specific scripts that might be useful"
    descriptions[65]=" Power Options"
    descriptions[66]=" Set /Path/to/Wallpapers as new wallpaper directory"
    descriptions[67]=" [*] Show keybind hints"
    descriptions[68]=" Force rebuild cache"
    descriptions[69]=" Use rofi to select screenshot options "
    descriptions[70]=" cliphist list and copy selected"
    descriptions[71]=" Show Manual"
    descriptions[72]=" Fixes issues for asus devices"
    descriptions[73]=" Watches hyprland events and executes actions"
    descriptions[74]=" Default blur"
    descriptions[75]=" Restore dots"
    descriptions[76]="  Add custom delimiter symbol (default '>')"
    descriptions[77]=" Emoji selector"
    descriptions[78]=" Sddm commands"
    descriptions[79]=" Manages Hyde's cache"
    descriptions[80]=" Interactive control file"
    descriptions[81]=" Some Hypr GUI you might want to use"
    descriptions[82]=" Previous theme"
    descriptions[83]=" Overwrite current dots from the user "
    descriptions[84]=" [*] Add chaotic aur to you mirror"
    descriptions[85]=" [*] Set wallbash mode. [0] [1] [2] [3] "
    descriptions[86]=" health checker"
    descriptions[87]=" Disable tranparency"
    descriptions[88]="  Reinitialize screencap"
    descriptions[89]=" Links a clone directory. Useful if you want to change your CloneDir"
    descriptions[90]=" Inhibits idle when player status: 'Playing"
    descriptions[91]="  Print all outputs"
    descriptions[92]=" Next theme"
    descriptions[93]="  Display this help message"
    descriptions[94]=" Wallpaper selector"
    descriptions[95]=" Next wallppaer"
    descriptions[96]=" Set preavailable Hyde branch"
    descriptions[97]=" Flatpak setup for HyDE"
    descriptions[98]=" [*] Screenshot and screenrecord tool"
    descriptions[99]="  Drag to manually snip an area to screen record it"
    descriptions[100]=" wallbash dark mode"
    descriptions[101]=" Converts chaotic aur packages to AUR"
    descriptions[102]=" Set theme"
    descriptions[103]=" Patch a theme from different repository."
    descriptions[104]=" Shell selector"
    descriptions[105]=" Edit waybar control file"

    local -A literal_transitions
    literal_transitions[1]="([30]=24 [33]=25 [34]=4 [46]=5 [4]=6 [22]=7 [78]=8 [96]=9 [79]=10 [49]=11 [81]=14 [40]=12 [80]=13 [83]=15 [71]=16 [14]=17 [27]=18 [61]=19 [86]=20 [64]=21 [31]=23 [65]=2 [75]=3)"
    literal_transitions[2]="([32]=27 [39]=27 [7]=30 [44]=27 [12]=28)"
    literal_transitions[3]="([89]=27 [18]=27 [15]=27 [56]=27)"
    literal_transitions[6]="([29]=27 [85]=26)"
    literal_transitions[7]="([47]=27 [92]=27 [103]=27 [82]=27 [102]=27)"
    literal_transitions[8]="([50]=27)"
    literal_transitions[10]="([68]=27 [55]=27)"
    literal_transitions[11]="([90]=27 [73]=27 [98]=29)"
    literal_transitions[12]="([104]=27)"
    literal_transitions[13]="([8]=27)"
    literal_transitions[14]="([77]=27 [69]=27 [36]=27 [67]=36 [25]=34)"
    literal_transitions[17]="([16]=27 [35]=27 [51]=27 [2]=27)"
    literal_transitions[19]="([94]=27 [95]=27 [66]=27 [59]=27)"
    literal_transitions[20]="([10]=33)"
    literal_transitions[21]="([72]=27 [97]=27 [84]=31)"
    literal_transitions[24]="([43]=27 [52]=32 [105]=27)"
    literal_transitions[26]="([24]=27 [26]=27 [100]=27 [9]=27)"
    literal_transitions[28]="([5]=27 [45]=27 [62]=27 [74]=27)"
    literal_transitions[29]="([13]=27 [99]=27 [21]=27 [37]=27 [23]=27 [88]=27 [54]=27 [91]=27 [20]=27)"
    literal_transitions[30]="([11]=27 [48]=27 [60]=27 [87]=27)"
    literal_transitions[31]="([1]=27 [101]=27 [3]=27)"
    literal_transitions[32]="([28]=27)"
    literal_transitions[33]="([41]=27 [42]=27 [58]=27)"
    literal_transitions[34]="([38]=27 [19]=27 [70]=27)"
    literal_transitions[35]="([57]=27)"
    literal_transitions[36]="([6]=27 [93]=27 [17]=27 [63]=27 [76]=27 [53]=27)"

    local -A match_anything_transitions
    match_anything_transitions=([4]=27 [15]=27 [25]=27 [1]=22 [18]=27 [16]=27 [9]=27 [22]=35 [5]=27 [23]=27)

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
