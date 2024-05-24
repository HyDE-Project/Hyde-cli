_Hyde () {
    local -a literals=("revert" "--uninstall" "--install" "wallbash" "--opacity" "-j" "save" "unset" "3" "--stop" "--animations" "backup" "BackUp" "list" "cursor" "-p" "Config" "d" "--scan" "--record-focus" "theme" "-freeze" "0" "pastebin" "1" "systeminfo" "--all" "theme" "toggle" "upgrade" "waybar" "toggle" "reload" "update" "all" "glyph" "--print-monitor" "w" "game" "shell" "Config" "info" "reload" "reset" "--animations" "version" "select" "--blur" "run" "theme" "clean" "size" "reload" "-f" "--print-snip" "reload" "Clone" "check" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "-w" "inject" "power" "bookmarks" "set" "binds" "rebuild" "screencap" "c" "man" "asus_patch" "events" "--blur" "restore" "-d" "emoji" "sddm" "cache" "control" "show" "prev" "sync" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "flatpak" "Config" "screencap" "--record-snip" "2" "--revert" "set" "patch" "select" "Package" "control")

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
    descriptions[68]=" Bookmark selector"
    descriptions[69]=" Set /Path/to/Wallpapers as new wallpaper directory"
    descriptions[70]=" [*] Show keybind hints"
    descriptions[71]=" Force rebuild cache"
    descriptions[72]=" Use rofi to select screenshot options "
    descriptions[73]=" cliphist list and copy selected"
    descriptions[74]=" Show Manual"
    descriptions[75]=" Fixes issues for asus devices"
    descriptions[76]=" Watches hyprland events and executes actions"
    descriptions[77]=" Default blur"
    descriptions[78]=" Restore dots"
    descriptions[79]="  Add custom delimiter symbol (default '>')"
    descriptions[80]=" Emoji selector"
    descriptions[81]=" Sddm commands"
    descriptions[82]=" Manages Hyde's cache"
    descriptions[83]=" Interactive control file"
    descriptions[84]=" Some Hypr GUI you might want to use"
    descriptions[85]=" Previous theme"
    descriptions[86]=" Overwrite current dots from the user "
    descriptions[87]=" [*] Add chaotic aur to you mirror"
    descriptions[88]="   Pipes STDOUT to less"
    descriptions[89]=" [*] Set wallbash mode. [0] [1] [2] [3] "
    descriptions[90]=" Disable tranparency"
    descriptions[91]="  Reinitialize screencap"
    descriptions[92]=" Links a clone directory. Useful if you want to change your CloneDir"
    descriptions[93]=" Inhibits idle when player status: 'Playing"
    descriptions[94]="  Print all outputs"
    descriptions[95]=" Next theme"
    descriptions[96]="  Display this help message"
    descriptions[97]=" Wallpaper selector"
    descriptions[98]="   Diff preserved dotfiles"
    descriptions[99]=" Set cursor size"
    descriptions[100]=" Next wallppaer"
    descriptions[101]=" Set preavailable Hyde branch"
    descriptions[102]=" Flatpak setup for HyDE"
    descriptions[103]=" Manage users restore control list"
    descriptions[104]=" [*] Screenshot and screenrecord tool"
    descriptions[105]="  Drag to manually snip an area to screen record it"
    descriptions[106]=" wallbash dark mode"
    descriptions[107]=" Converts chaotic aur packages to AUR"
    descriptions[108]=" Set theme"
    descriptions[109]=" Patch a theme from different repository."
    descriptions[110]=" Shell selector"
    descriptions[111]=" Hyde core Package status"
    descriptions[112]=" Edit waybar control file"

    local -A literal_transitions
    literal_transitions[1]="([31]=25 [58]=3 [34]=4 [46]=5 [4]=6 [33]=26 [21]=8 [81]=9 [101]=10 [82]=11 [49]=12 [84]=15 [40]=13 [83]=14 [86]=16 [74]=17 [26]=18 [12]=19 [63]=20 [15]=21 [66]=22 [30]=24 [67]=2 [78]=7)"
    literal_transitions[2]="([32]=28 [39]=28 [7]=32 [44]=28 [8]=33)"
    literal_transitions[3]="([111]=28 [41]=31)"
    literal_transitions[6]="([29]=28 [89]=29)"
    literal_transitions[7]="([92]=28 [17]=28 [13]=28 [57]=28)"
    literal_transitions[8]="([47]=28 [95]=28 [109]=28 [85]=28 [108]=28)"
    literal_transitions[9]="([50]=28)"
    literal_transitions[11]="([71]=28 [56]=28)"
    literal_transitions[12]="([93]=28 [76]=28 [104]=37)"
    literal_transitions[13]="([110]=28)"
    literal_transitions[14]="([103]=28)"
    literal_transitions[15]="([80]=28 [68]=28 [72]=28 [36]=28 [70]=30 [24]=27)"
    literal_transitions[19]="([14]=28 [35]=28 [51]=28 [1]=28)"
    literal_transitions[20]="([97]=28 [100]=28 [69]=28 [61]=28)"
    literal_transitions[21]="([53]=28 [42]=28 [99]=28 [28]=28)"
    literal_transitions[22]="([75]=28 [102]=28 [87]=34)"
    literal_transitions[25]="([43]=28 [52]=36 [112]=28)"
    literal_transitions[27]="([38]=28 [18]=28 [73]=28)"
    literal_transitions[29]="([23]=28 [25]=28 [106]=28 [9]=28)"
    literal_transitions[30]="([6]=28 [96]=28 [16]=28 [65]=28 [79]=28 [54]=28)"
    literal_transitions[31]="([98]=28 [88]=28 [60]=28)"
    literal_transitions[32]="([11]=28 [48]=28 [62]=28 [90]=28)"
    literal_transitions[33]="([5]=28 [45]=28 [64]=28 [77]=28)"
    literal_transitions[34]="([2]=28 [107]=28 [3]=28)"
    literal_transitions[35]="([59]=28)"
    literal_transitions[36]="([27]=28)"
    literal_transitions[37]="([10]=28 [105]=28 [20]=28 [37]=28 [22]=28 [91]=28 [55]=28 [94]=28 [19]=28)"

    local -A match_anything_transitions
    match_anything_transitions=([4]=28 [17]=28 [1]=23 [18]=28 [10]=28 [16]=28 [5]=28 [23]=35 [26]=28 [24]=28)

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
