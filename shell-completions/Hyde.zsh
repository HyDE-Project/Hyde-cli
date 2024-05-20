_Hyde () {
    local -a literals=("revert" "--uninstall" "--install" "wallbash" "--opacity" "-j" "save" "unset" "3" "--stop" "--animations" "backup" "BackUp" "list" "cursor" "-p" "Config" "d" "--scan" "--record-focus" "theme" "-freeze" "0" "pastebin" "1" "systeminfo" "--all" "theme" "toggle" "upgrade" "waybar" "toggle" "reload" "update" "all" "glyph" "--print-monitor" "w" "game" "shell" "Config" "info" "reload" "reset" "--animations" "version" "select" "--blur" "run" "theme" "clean" "size" "-f" "--print-snip" "reload" "Clone" "check" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "-w" "inject" "power" "set" "binds" "rebuild" "screencap" "c" "man" "asus_patch" "events" "--blur" "restore" "-d" "emoji" "sddm" "cache" "control" "show" "prev" "sync" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "flatpak" "Config" "screencap" "--record-snip" "2" "--revert" "set" "patch" "select" "Package" "control")

    local -A descriptions
    descriptions[1]=" Revert to a previous backup run by 'Hyde backup all'. "
    descriptions[2]=" Removes Chaotic Aur"
    descriptions[3]=" Setup Choatic Aur, append [fresh] to run in fresh install mode"
    descriptions[4]=" Toggle to use wallpaper accent themes"
    descriptions[5]=" Default tranparency"
    descriptions[6]="  Show the JSON format"
    descriptions[7]=" [*] Save power by disabling features"
    descriptions[8]=" [*] Unset specific changes"
    descriptions[9]=" wallbash light mode"
    descriptions[10]="  Stop every instance of Screencap"
    descriptions[11]=" Disable animations"
    descriptions[12]=" Backing up commands"
    descriptions[13]=" Restores dots from previous backup"
    descriptions[14]=" List the backup"
    descriptions[15]=" Cursor setting"
    descriptions[16]="  Show the pretty format"
    descriptions[17]=" Only restores dots from default '/Configs'"
    descriptions[18]=" cliphist list and delete selected"
    descriptions[19]="  Use 'tesseract' to scan image then add to clipboard"
    descriptions[20]="  Record focused monitor"
    descriptions[21]=" Theme commands"
    descriptions[22]="  Frozen screen, drag to manually snip an area"
    descriptions[23]=" wallbash disabled"
    descriptions[24]=" [*] Pastebin manager "
    descriptions[25]=" wallbash auto"
    descriptions[26]=" System information"
    descriptions[27]=" Change all the pre-set sizes"
    descriptions[28]=" Set cursor theme"
    descriptions[29]=" Cycles wallbash [0] off [1] auto [2] dark [3] light"
    descriptions[30]=" Upgrades dots from the repository"
    descriptions[31]=" Waybar commands"
    descriptions[32]=" Toggle ﯦ Set/unset current changes'"
    descriptions[33]=" Just reload"
    descriptions[34]=" Pull updates from Hyde repository"
    descriptions[35]=" Backs up the current configuration"
    descriptions[36]=" Glyph selector"
    descriptions[37]="  Print focused monitor"
    descriptions[38]=" cliphist wipe database"
    descriptions[39]=" Toggle game mode"
    descriptions[40]=" Shell commands"
    descriptions[41]=" [*] Hyde Config File & Directory status"
    descriptions[42]=" Check active cursor status (only gsettings)"
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
    descriptions[57]=" Information about Hyde and its components"
    descriptions[59]="   Diff mismatched dotfiles"
    descriptions[60]=" Previous wallpaper"
    descriptions[61]=" Disable border angle animation"
    descriptions[62]=" Wallpaper commands"
    descriptions[63]=" Default border angle animation"
    descriptions[64]="  Custom width"
    descriptions[65]=" User/Device specific scripts that might be useful"
    descriptions[66]=" Power Options"
    descriptions[67]=" Set /Path/to/Wallpapers as new wallpaper directory"
    descriptions[68]=" [*] Show keybind hints"
    descriptions[69]=" Force rebuild cache"
    descriptions[70]=" Use rofi to select screenshot options "
    descriptions[71]=" cliphist list and copy selected"
    descriptions[72]=" Show Manual"
    descriptions[73]=" Fixes issues for asus devices"
    descriptions[74]=" Watches hyprland events and executes actions"
    descriptions[75]=" Default blur"
    descriptions[76]=" Restore dots"
    descriptions[77]="  Add custom delimiter symbol (default '>')"
    descriptions[78]=" Emoji selector"
    descriptions[79]=" Sddm commands"
    descriptions[80]=" Manages Hyde's cache"
    descriptions[81]=" Interactive control file"
    descriptions[82]=" Some Hypr GUI you might want to use"
    descriptions[83]=" Previous theme"
    descriptions[84]=" Overwrite current dots from the user "
    descriptions[85]=" [*] Add chaotic aur to you mirror"
    descriptions[86]="   Pipes STDOUT to less"
    descriptions[87]=" [*] Set wallbash mode. [0] [1] [2] [3] "
    descriptions[88]=" Disable tranparency"
    descriptions[89]="  Reinitialize screencap"
    descriptions[90]=" Links a clone directory. Useful if you want to change your CloneDir"
    descriptions[91]=" Inhibits idle when player status: 'Playing"
    descriptions[92]="  Print all outputs"
    descriptions[93]=" Next theme"
    descriptions[94]="  Display this help message"
    descriptions[95]=" Wallpaper selector"
    descriptions[96]="   Diff preserved dotfiles"
    descriptions[97]=" Set cursor size"
    descriptions[98]=" Next wallppaer"
    descriptions[99]=" Set preavailable Hyde branch"
    descriptions[100]=" Flatpak setup for HyDE"
    descriptions[101]=" Manage users restore control list"
    descriptions[102]=" [*] Screenshot and screenrecord tool"
    descriptions[103]="  Drag to manually snip an area to screen record it"
    descriptions[104]=" wallbash dark mode"
    descriptions[105]=" Converts chaotic aur packages to AUR"
    descriptions[106]=" Set theme"
    descriptions[107]=" Patch a theme from different repository."
    descriptions[108]=" Shell selector"
    descriptions[109]=" Hyde core Package status"
    descriptions[110]=" Edit waybar control file"

    local -A literal_transitions
    literal_transitions[1]="([31]=25 [57]=3 [34]=4 [46]=5 [4]=6 [33]=26 [21]=8 [79]=9 [99]=10 [80]=11 [49]=12 [82]=15 [40]=13 [81]=14 [84]=16 [72]=17 [26]=18 [12]=19 [62]=20 [15]=21 [65]=22 [30]=24 [66]=2 [76]=7)"
    literal_transitions[2]="([32]=28 [39]=28 [7]=33 [44]=28 [8]=34)"
    literal_transitions[3]="([109]=28 [41]=31)"
    literal_transitions[6]="([29]=28 [87]=32)"
    literal_transitions[7]="([90]=28 [17]=28 [13]=28 [56]=28)"
    literal_transitions[8]="([47]=28 [93]=28 [107]=28 [83]=28 [106]=28)"
    literal_transitions[9]="([50]=28)"
    literal_transitions[11]="([69]=28 [55]=28)"
    literal_transitions[12]="([91]=28 [74]=28 [102]=35)"
    literal_transitions[13]="([108]=28)"
    literal_transitions[14]="([101]=28)"
    literal_transitions[15]="([78]=28 [70]=28 [36]=28 [68]=37 [24]=36)"
    literal_transitions[19]="([14]=28 [35]=28 [51]=28 [1]=28)"
    literal_transitions[20]="([95]=28 [98]=28 [67]=28 [60]=28)"
    literal_transitions[21]="([42]=28 [97]=28 [28]=28)"
    literal_transitions[22]="([73]=28 [100]=28 [85]=30)"
    literal_transitions[25]="([43]=28 [52]=27 [110]=28)"
    literal_transitions[27]="([27]=28)"
    literal_transitions[29]="([58]=28)"
    literal_transitions[30]="([2]=28 [105]=28 [3]=28)"
    literal_transitions[31]="([96]=28 [86]=28 [59]=28)"
    literal_transitions[32]="([23]=28 [25]=28 [104]=28 [9]=28)"
    literal_transitions[33]="([11]=28 [48]=28 [61]=28 [88]=28)"
    literal_transitions[34]="([5]=28 [45]=28 [63]=28 [75]=28)"
    literal_transitions[35]="([10]=28 [103]=28 [20]=28 [37]=28 [22]=28 [89]=28 [54]=28 [92]=28 [19]=28)"
    literal_transitions[36]="([38]=28 [18]=28 [71]=28)"
    literal_transitions[37]="([6]=28 [94]=28 [16]=28 [64]=28 [77]=28 [53]=28)"

    local -A match_anything_transitions
    match_anything_transitions=([24]=28 [4]=28 [17]=28 [1]=23 [18]=28 [10]=28 [16]=28 [5]=28 [23]=29 [26]=28)

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
