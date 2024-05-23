_Hyde () {
    local -a literals=("revert" "--uninstall" "--install" "wallbash" "--opacity" "-j" "save" "unset" "3" "--stop" "--animations" "backup" "BackUp" "list" "cursor" "-p" "Config" "d" "--scan" "--record-focus" "theme" "-freeze" "0" "pastebin" "1" "systeminfo" "--all" "theme" "toggle" "upgrade" "waybar" "toggle" "reload" "update" "all" "glyph" "--print-monitor" "w" "game" "shell" "Config" "info" "reload" "reset" "--animations" "version" "select" "--blur" "run" "theme" "clean" "size" "reload" "-f" "--print-snip" "reload" "Clone" "check" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "-w" "inject" "power" "set" "binds" "rebuild" "screencap" "c" "man" "asus_patch" "events" "--blur" "restore" "-d" "emoji" "sddm" "cache" "control" "show" "prev" "sync" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "flatpak" "Config" "screencap" "--record-snip" "2" "--revert" "set" "patch" "select" "Package" "control")

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
    descriptions[53]=" Reload cursors"
    descriptions[54]="  Add custom file"
    descriptions[55]="  Drag to manually snip an area"
    descriptions[56]=" Reload wallpaper cache"
    descriptions[57]=" Restores dots from a clone repository "
    descriptions[58]=" Information about Hyde and its components"
    descriptions[60]="   Diff mismatched dotfiles"
    descriptions[61]=" Previous wallpaper"
    descriptions[62]=" Disable border angle animation"
    descriptions[63]=" Wallpaper commands"
    descriptions[64]=" Default border angle animation"
    descriptions[65]="  Custom width"
    descriptions[66]=" User/Device specific scripts that might be useful"
    descriptions[67]=" Power Options"
    descriptions[68]=" Set /Path/to/Wallpapers as new wallpaper directory"
    descriptions[69]=" [*] Show keybind hints"
    descriptions[70]=" Force rebuild cache"
    descriptions[71]=" Use rofi to select screenshot options "
    descriptions[72]=" cliphist list and copy selected"
    descriptions[73]=" Show Manual"
    descriptions[74]=" Fixes issues for asus devices"
    descriptions[75]=" Watches hyprland events and executes actions"
    descriptions[76]=" Default blur"
    descriptions[77]=" Restore dots"
    descriptions[78]="  Add custom delimiter symbol (default '>')"
    descriptions[79]=" Emoji selector"
    descriptions[80]=" Sddm commands"
    descriptions[81]=" Manages Hyde's cache"
    descriptions[82]=" Interactive control file"
    descriptions[83]=" Some Hypr GUI you might want to use"
    descriptions[84]=" Previous theme"
    descriptions[85]=" Overwrite current dots from the user "
    descriptions[86]=" [*] Add chaotic aur to you mirror"
    descriptions[87]="   Pipes STDOUT to less"
    descriptions[88]=" [*] Set wallbash mode. [0] [1] [2] [3] "
    descriptions[89]=" Disable tranparency"
    descriptions[90]="  Reinitialize screencap"
    descriptions[91]=" Links a clone directory. Useful if you want to change your CloneDir"
    descriptions[92]=" Inhibits idle when player status: 'Playing"
    descriptions[93]="  Print all outputs"
    descriptions[94]=" Next theme"
    descriptions[95]="  Display this help message"
    descriptions[96]=" Wallpaper selector"
    descriptions[97]="   Diff preserved dotfiles"
    descriptions[98]=" Set cursor size"
    descriptions[99]=" Next wallppaer"
    descriptions[100]=" Set preavailable Hyde branch"
    descriptions[101]=" Flatpak setup for HyDE"
    descriptions[102]=" Manage users restore control list"
    descriptions[103]=" [*] Screenshot and screenrecord tool"
    descriptions[104]="  Drag to manually snip an area to screen record it"
    descriptions[105]=" wallbash dark mode"
    descriptions[106]=" Converts chaotic aur packages to AUR"
    descriptions[107]=" Set theme"
    descriptions[108]=" Patch a theme from different repository."
    descriptions[109]=" Shell selector"
    descriptions[110]=" Hyde core Package status"
    descriptions[111]=" Edit waybar control file"

    local -A literal_transitions
    literal_transitions[1]="([31]=25 [58]=3 [34]=4 [46]=5 [4]=6 [33]=26 [21]=8 [80]=9 [100]=10 [81]=11 [49]=12 [83]=15 [40]=13 [82]=14 [85]=16 [73]=17 [26]=18 [12]=19 [63]=20 [15]=21 [66]=22 [30]=24 [67]=2 [77]=7)"
    literal_transitions[2]="([32]=27 [39]=27 [7]=33 [44]=27 [8]=34)"
    literal_transitions[3]="([110]=27 [41]=31)"
    literal_transitions[6]="([29]=27 [88]=30)"
    literal_transitions[7]="([91]=27 [17]=27 [13]=27 [57]=27)"
    literal_transitions[8]="([47]=27 [94]=27 [108]=27 [84]=27 [107]=27)"
    literal_transitions[9]="([50]=27)"
    literal_transitions[11]="([70]=27 [56]=27)"
    literal_transitions[12]="([92]=27 [75]=27 [103]=28)"
    literal_transitions[13]="([109]=27)"
    literal_transitions[14]="([102]=27)"
    literal_transitions[15]="([79]=27 [71]=27 [36]=27 [69]=37 [24]=36)"
    literal_transitions[19]="([14]=27 [35]=27 [51]=27 [1]=27)"
    literal_transitions[20]="([96]=27 [99]=27 [68]=27 [61]=27)"
    literal_transitions[21]="([53]=27 [42]=27 [98]=27 [28]=27)"
    literal_transitions[22]="([74]=27 [101]=27 [86]=32)"
    literal_transitions[25]="([43]=27 [52]=29 [111]=27)"
    literal_transitions[28]="([10]=27 [104]=27 [20]=27 [37]=27 [22]=27 [90]=27 [55]=27 [93]=27 [19]=27)"
    literal_transitions[29]="([27]=27)"
    literal_transitions[30]="([23]=27 [25]=27 [105]=27 [9]=27)"
    literal_transitions[31]="([97]=27 [87]=27 [60]=27)"
    literal_transitions[32]="([2]=27 [106]=27 [3]=27)"
    literal_transitions[33]="([11]=27 [48]=27 [62]=27 [89]=27)"
    literal_transitions[34]="([5]=27 [45]=27 [64]=27 [76]=27)"
    literal_transitions[35]="([59]=27)"
    literal_transitions[36]="([38]=27 [18]=27 [72]=27)"
    literal_transitions[37]="([6]=27 [95]=27 [16]=27 [65]=27 [78]=27 [54]=27)"

    local -A match_anything_transitions
    match_anything_transitions=([24]=27 [4]=27 [17]=27 [1]=23 [16]=27 [18]=27 [10]=27 [5]=27 [23]=35 [26]=27)

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
