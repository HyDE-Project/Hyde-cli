_Hyde () {
    local -a literals=("revert" "--uninstall" "wallbash" "--opacity" "-j" "save" "unset" "3" "--stop" "--animations" "backup" "BackUp" "list" "cursor" "-p" "--no-custom" "Config" "d" "--install" "--scan" "--record-focus" "theme" "bookmarks" "0" "-freeze" "pastebin" "search" "1" "systeminfo" "--all" "theme" "toggle" "upgrade" "waybar" "toggle" "reload" "update" "all" "glyph" "--print-monitor" "w" "game" "shell" "Config" "info" "reload" "reset" "--animations" "version" "select" "--blur" "theme" "clean" "size" "reload" "-f" "--print-snip" "reload" "Clone" "check" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "show" "-w" "inject" "power" "set" "binds" "rebuild" "screencap" "c" "man" "asus_patch" "events" "override" "--rebuild" "--blur" "restore" "-d" "emoji" "sddm" "run" "cache" "control" "prev" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "flatpak" "Config" "screencap" "--record-snip" "2" "--revert" "set" "patch" "select" "Package" "control")

    local -A descriptions
    descriptions[1]=" Revert to a previous backup run by 'Hyde backup all'. "
    descriptions[2]=" Removes Chaotic Aur"
    descriptions[3]=" Toggle to use wallpaper accent themes"
    descriptions[4]=" Default tranparency"
    descriptions[5]="  Show the JSON format"
    descriptions[6]=" [*] Save power by disabling features"
    descriptions[7]=" [*] Unset specific changes"
    descriptions[8]=" wallbash light mode"
    descriptions[9]="  Stop every instance of Screencap"
    descriptions[10]=" Disable animations"
    descriptions[11]=" Backing up commands"
    descriptions[12]=" Restores dots from previous backup"
    descriptions[13]=" List the backup"
    descriptions[14]=" Cursor setting"
    descriptions[15]="  Show the pretty format"
    descriptions[16]="    run without custom '.lst' bookmark files"
    descriptions[17]=" Only restores dots from default '/Configs'"
    descriptions[18]=" cliphist list and delete selected"
    descriptions[19]=" Setup Chaotic Aur, append [fresh] to run in fresh install mode"
    descriptions[20]="  Use 'tesseract' to scan image then add to clipboard"
    descriptions[21]="  Record focused monitor"
    descriptions[22]=" Theme commands"
    descriptions[23]=" [*] Bookmark selector"
    descriptions[24]=" wallbash disabled"
    descriptions[25]="  Frozen screen, drag to manually snip an area"
    descriptions[26]=" [*] Pastebin manager "
    descriptions[27]=" Launch google search"
    descriptions[28]=" wallbash auto"
    descriptions[29]=" System information"
    descriptions[30]=" Change all the pre-set sizes"
    descriptions[31]=" Set cursor theme"
    descriptions[32]=" Cycles wallbash [0] off [1] auto [2] dark [3] light"
    descriptions[33]=" Upgrades dots from the repository"
    descriptions[34]=" Waybar commands"
    descriptions[35]=" Toggle ﯦ Set/unset current changes'"
    descriptions[36]=" Just reload"
    descriptions[37]=" Pull updates from Hyde repository"
    descriptions[38]=" Backs up the current configuration"
    descriptions[39]=" Glyph selector"
    descriptions[40]="  Print focused monitor"
    descriptions[41]=" cliphist wipe database"
    descriptions[42]=" Toggle game mode"
    descriptions[43]=" Shell commands"
    descriptions[44]=" [*] Hyde Config File & Directory status"
    descriptions[45]=" Check active cursor status (only gsettings)"
    descriptions[46]=" Reloads waybar"
    descriptions[47]=" Reset changes"
    descriptions[48]=" Default animations"
    descriptions[49]=" Hyde-cli version"
    descriptions[50]=" Theme selector"
    descriptions[51]=" Disable blur"
    descriptions[52]=" Select sddm theme"
    descriptions[53]=" Clear some storage by deleting old backups"
    descriptions[54]=" [*]Set waybar size"
    descriptions[55]=" Reload cursors"
    descriptions[56]="  Add custom file"
    descriptions[57]="  Drag to manually snip an area"
    descriptions[58]=" Reload wallpaper cache"
    descriptions[59]=" Restores dots from a clone repository "
    descriptions[60]=" Information about Hyde and its components"
    descriptions[62]="   Diff mismatched dotfiles"
    descriptions[63]=" Previous wallpaper"
    descriptions[64]=" Disable border angle animation"
    descriptions[65]=" Wallpaper commands"
    descriptions[66]=" Default border angle animation"
    descriptions[67]=" Useful GUI util"
    descriptions[68]="  Custom width"
    descriptions[69]=" User/Device specific scripts that might be useful"
    descriptions[70]=" Power Options"
    descriptions[71]=" Set /Path/to/Wallpapers as new wallpaper directory"
    descriptions[72]=" [*] Show keybind hints"
    descriptions[73]=" Force rebuild cache"
    descriptions[74]=" Use rofi to select screenshot options "
    descriptions[75]=" cliphist list and copy selected"
    descriptions[76]=" Show Manual"
    descriptions[77]=" Fixes issues for asus devices"
    descriptions[78]=" Watches hyprland events and executes actions"
    descriptions[79]=" Overwrite current dots from the preferred user dir "
    descriptions[80]="   force rebuild cached bookmark paths"
    descriptions[81]=" Default blur"
    descriptions[82]=" Restore dots"
    descriptions[83]="  Add custom delimiter symbol (default '>')"
    descriptions[84]=" Emoji selector"
    descriptions[85]=" Sddm commands"
    descriptions[86]=" Executable utilities"
    descriptions[87]=" Manages Hyde's cache"
    descriptions[88]=" Interactive control file"
    descriptions[89]=" Previous theme"
    descriptions[90]=" [*] Add chaotic aur to you mirror"
    descriptions[91]="   Pipes STDOUT to less"
    descriptions[92]=" [*] Set wallbash mode. [0] [1] [2] [3] "
    descriptions[93]=" Disable tranparency"
    descriptions[94]="  Reinitialize screencap"
    descriptions[95]=" Links a clone directory. Useful if you want to change your CloneDir"
    descriptions[96]=" Inhibits idle when player status: 'Playing"
    descriptions[97]="  Print all outputs"
    descriptions[98]=" Next theme"
    descriptions[99]="  Display this help message"
    descriptions[100]=" Wallpaper selector"
    descriptions[101]="   Diff preserved dotfiles"
    descriptions[102]=" Set cursor size"
    descriptions[103]=" Next wallppaer"
    descriptions[104]=" Set preavailable Hyde branch"
    descriptions[105]=" Flatpak setup for HyDE"
    descriptions[106]=" Manage users restore control list"
    descriptions[107]=" [*] Screenshot and screenrecord tool"
    descriptions[108]="  Drag to manually snip an area to screen record it"
    descriptions[109]=" wallbash dark mode"
    descriptions[110]=" Converts chaotic aur packages to AUR"
    descriptions[111]=" Set theme"
    descriptions[112]=" Patch a theme from different repository."
    descriptions[113]=" Shell selector"
    descriptions[114]=" Hyde core Package status"
    descriptions[115]=" Edit waybar control file"

    local -A literal_transitions
    literal_transitions[1]="([34]=25 [60]=3 [37]=4 [49]=5 [3]=6 [36]=26 [22]=8 [85]=9 [86]=10 [104]=11 [87]=12 [43]=13 [88]=14 [76]=15 [29]=16 [11]=17 [65]=18 [14]=19 [67]=20 [69]=21 [79]=22 [33]=24 [70]=2 [82]=7)"
    literal_transitions[2]="([35]=27 [42]=27 [6]=30 [47]=27 [7]=31)"
    literal_transitions[3]="([114]=27 [44]=32)"
    literal_transitions[6]="([32]=27 [92]=35)"
    literal_transitions[7]="([95]=27 [17]=27 [12]=27 [59]=27)"
    literal_transitions[8]="([50]=27 [98]=27 [112]=27 [89]=27 [111]=27)"
    literal_transitions[9]="([52]=27)"
    literal_transitions[10]="([96]=27 [78]=27 [107]=34)"
    literal_transitions[12]="([73]=27 [58]=27)"
    literal_transitions[13]="([113]=27)"
    literal_transitions[14]="([106]=27)"
    literal_transitions[17]="([13]=27 [38]=27 [53]=27 [1]=27)"
    literal_transitions[18]="([100]=27 [103]=27 [71]=27 [63]=27)"
    literal_transitions[19]="([55]=27 [45]=27 [102]=27 [31]=27)"
    literal_transitions[20]="([27]=27 [74]=27 [84]=27 [26]=38 [39]=27 [72]=37 [23]=36)"
    literal_transitions[21]="([77]=27 [105]=27 [90]=33)"
    literal_transitions[25]="([46]=27 [54]=29 [115]=27)"
    literal_transitions[28]="([61]=27)"
    literal_transitions[29]="([30]=27)"
    literal_transitions[30]="([10]=27 [51]=27 [64]=27 [93]=27)"
    literal_transitions[31]="([4]=27 [48]=27 [66]=27 [81]=27)"
    literal_transitions[32]="([101]=27 [91]=27 [62]=27)"
    literal_transitions[33]="([2]=27 [19]=27 [110]=27)"
    literal_transitions[34]="([9]=27 [108]=27 [21]=27 [40]=27 [25]=27 [94]=27 [57]=27 [97]=27 [20]=27)"
    literal_transitions[35]="([24]=27 [28]=27 [109]=27 [8]=27)"
    literal_transitions[36]="([80]=27 [16]=27)"
    literal_transitions[37]="([5]=27 [99]=27 [15]=27 [68]=27 [83]=27 [56]=27)"
    literal_transitions[38]="([41]=27 [18]=27 [75]=27)"

    local -A match_anything_transitions
    match_anything_transitions=([24]=27 [11]=27 [4]=27 [15]=27 [1]=23 [16]=27 [22]=27 [5]=27 [23]=28 [26]=27)

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
