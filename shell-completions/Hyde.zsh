_Hyde () {
    local -a literals=("revert" "--uninstall" "wallbash" "--copy" "--opacity" "-j" "save" "unset" "3" "--stop" "--animations" "backup" "BackUp" "list" "cursor" "-p" "--no-custom" "Config" "--install" "--scan" "--record-focus" "theme" "bookmarks" "0" "-freeze" "toggle" "pastebin" "1" "systeminfo" "--all" "theme" "--delete" "toggle" "upgrade" "waybar" "reload" "update" "all" "glyph" "--wipe" "--print-monitor" "game" "--browser" "shell" "Config" "info" "search" "reload" "reset" "--animations" "version" "select" "--blur" "--site" "theme" "clean" "size" "reload" "-f" "--print-snip" "reload" "Clone" "check" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "show" "inject" "power" "set" "binds" "rebuild" "screencap" "man" "asus_patch" "events" "override" "--rebuild" "--blur" "restore" "-d" "emoji" "sddm" "run" "--option" "cache" "control" "prev" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "flatpak" "Config" "screencap" "--record-snip" "2" "--revert" "set" "patch" "select" "Package" "control")

    local -A descriptions
    descriptions[1]=" Revert to a previous backup run by 'Hyde backup all'. "
    descriptions[2]=" Removes Chaotic Aur"
    descriptions[3]=" Toggle to use wallpaper accent themes"
    descriptions[4]="	list and copy selected"
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
    descriptions[17]="    run without custom '.lst' bookmark files"
    descriptions[18]=" Only restores dots from default '/Configs'"
    descriptions[19]=" Setup Chaotic Aur, append [fresh] to run in fresh install mode"
    descriptions[20]="  Use 'tesseract' to scan image then add to clipboard"
    descriptions[21]="  Record focused monitor"
    descriptions[22]=" Theme commands"
    descriptions[23]=" [*] Bookmark selector"
    descriptions[24]=" wallbash disabled"
    descriptions[25]="  Frozen screen, drag to manually snip an area"
    descriptions[26]=" Toggle ﯦ  Set/unset current changes'"
    descriptions[27]=" [*] Pastebin manager "
    descriptions[28]=" wallbash auto"
    descriptions[29]=" System information"
    descriptions[30]=" Change all the pre-set sizes"
    descriptions[31]=" Set cursor theme"
    descriptions[32]="	list and delete selected"
    descriptions[33]=" Cycles wallbash [0] off [1] auto [2] dark [3] light"
    descriptions[34]=" Upgrades dots from the repository"
    descriptions[35]=" Waybar commands"
    descriptions[36]=" Just reload"
    descriptions[37]=" Pull updates from Hyde repository"
    descriptions[38]=" Backs up the current configuration"
    descriptions[39]=" Glyph selector"
    descriptions[40]="	wipe database"
    descriptions[41]="  Print focused monitor"
    descriptions[42]=" Toggle game mode"
    descriptions[43]=" browser to use"
    descriptions[44]=" Shell commands"
    descriptions[45]=" [*] Hyde Config File & Directory status"
    descriptions[46]=" Check active cursor status (only gsettings)"
    descriptions[47]=" [*] Web Search"
    descriptions[48]=" Reloads waybar"
    descriptions[49]=" Reset changes"
    descriptions[50]=" Default animations"
    descriptions[51]=" Hyde-cli version"
    descriptions[52]=" Theme selector"
    descriptions[53]=" Disable blur"
    descriptions[54]=" search engine to use"
    descriptions[55]=" Select sddm theme"
    descriptions[56]=" Clear some storage by deleting old backups"
    descriptions[57]=" [*]Set waybar size"
    descriptions[58]=" Reload cursors"
    descriptions[59]="  Add custom file"
    descriptions[60]="  Drag to manually snip an area"
    descriptions[61]=" Reload wallpaper cache"
    descriptions[62]=" Restores dots from a clone repository "
    descriptions[63]=" Information about Hyde and its components"
    descriptions[65]="   Diff mismatched dotfiles"
    descriptions[66]=" Previous wallpaper"
    descriptions[67]=" Disable border angle animation"
    descriptions[68]=" Wallpaper commands"
    descriptions[69]=" Default border angle animation"
    descriptions[70]=" Useful GUI util"
    descriptions[71]=" User/Device specific scripts that might be useful"
    descriptions[72]=" Power Options"
    descriptions[73]=" Set /Path/to/Wallpapers as new wallpaper directory"
    descriptions[74]=" [*] Show keybind hints"
    descriptions[75]=" Force rebuild cache"
    descriptions[76]=" Use rofi to select screenshot options "
    descriptions[77]=" Show Manual"
    descriptions[78]=" Fixes issues for asus devices"
    descriptions[79]=" Watches hyprland events and executes actions"
    descriptions[80]=" Overwrite current dots from the preferred user dir "
    descriptions[81]="   force rebuild cached bookmark paths"
    descriptions[82]=" Default blur"
    descriptions[83]=" Restore dots"
    descriptions[84]="  Add custom delimiter symbol (default '>')"
    descriptions[85]=" Emoji selector"
    descriptions[86]=" Sddm commands"
    descriptions[87]=" Executable utilities"
    descriptions[88]="	options"
    descriptions[89]=" Manages Hyde's cache"
    descriptions[90]=" Interactive control file"
    descriptions[91]=" Previous theme"
    descriptions[92]=" [*] Add chaotic aur to you mirror"
    descriptions[93]="   Pipes STDOUT to less"
    descriptions[94]=" [*] Set wallbash mode. [0] [1] [2] [3] "
    descriptions[95]=" Disable tranparency"
    descriptions[96]="  Reinitialize screencap"
    descriptions[97]=" Links a clone directory. Useful if you want to change your CloneDir"
    descriptions[98]=" Inhibits idle when player status: 'Playing"
    descriptions[99]="  Print all outputs"
    descriptions[100]=" Next theme"
    descriptions[101]="  Display this help message"
    descriptions[102]=" Wallpaper selector"
    descriptions[103]="   Diff preserved dotfiles"
    descriptions[104]=" Set cursor size"
    descriptions[105]=" Next wallppaer"
    descriptions[106]=" Set preavailable Hyde branch"
    descriptions[107]=" Flatpak setup for HyDE"
    descriptions[108]=" Manage users restore control list"
    descriptions[109]=" [*] Screenshot and screenrecord tool"
    descriptions[110]="  Drag to manually snip an area to screen record it"
    descriptions[111]=" wallbash dark mode"
    descriptions[112]=" Converts chaotic aur packages to AUR"
    descriptions[113]=" Set theme"
    descriptions[114]=" Patch a theme from different repository."
    descriptions[115]=" Shell selector"
    descriptions[116]=" Hyde core Package status"
    descriptions[117]=" Edit waybar control file"

    local -A literal_transitions
    literal_transitions[1]="([35]=25 [63]=3 [37]=4 [51]=5 [3]=6 [36]=26 [22]=8 [86]=9 [87]=10 [106]=11 [89]=12 [44]=13 [90]=14 [77]=15 [29]=16 [12]=17 [68]=18 [15]=19 [70]=20 [71]=21 [80]=22 [34]=24 [72]=2 [83]=7)"
    literal_transitions[2]="([26]=28 [42]=28 [7]=32 [49]=28 [8]=33)"
    literal_transitions[3]="([116]=28 [45]=34)"
    literal_transitions[6]="([33]=28 [94]=29)"
    literal_transitions[7]="([97]=28 [18]=28 [13]=28 [62]=28)"
    literal_transitions[8]="([52]=28 [100]=28 [114]=28 [91]=28 [113]=28)"
    literal_transitions[9]="([55]=28)"
    literal_transitions[10]="([98]=28 [79]=28 [109]=27)"
    literal_transitions[12]="([75]=28 [61]=28)"
    literal_transitions[13]="([115]=28)"
    literal_transitions[14]="([108]=28)"
    literal_transitions[17]="([14]=28 [38]=28 [56]=28 [1]=28)"
    literal_transitions[18]="([102]=28 [105]=28 [73]=28 [66]=28)"
    literal_transitions[19]="([58]=28 [46]=28 [104]=28 [31]=28)"
    literal_transitions[20]="([85]=28 [76]=28 [27]=38 [47]=37 [39]=28 [74]=35 [23]=36)"
    literal_transitions[21]="([78]=28 [107]=28 [92]=30)"
    literal_transitions[25]="([48]=28 [57]=31 [117]=28)"
    literal_transitions[27]="([10]=28 [110]=28 [21]=28 [41]=28 [25]=28 [96]=28 [60]=28 [99]=28 [20]=28)"
    literal_transitions[29]="([24]=28 [28]=28 [111]=28 [9]=28)"
    literal_transitions[30]="([2]=28 [19]=28 [112]=28)"
    literal_transitions[31]="([30]=28)"
    literal_transitions[32]="([11]=28 [53]=28 [67]=28 [95]=28)"
    literal_transitions[33]="([5]=28 [50]=28 [69]=28 [82]=28)"
    literal_transitions[34]="([103]=28 [93]=28 [65]=28)"
    literal_transitions[35]="([6]=28 [101]=28 [16]=28 [59]=28 [84]=28)"
    literal_transitions[36]="([81]=28 [17]=28)"
    literal_transitions[37]="([43]=28 [54]=28)"
    literal_transitions[38]="([88]=28 [32]=28 [40]=28 [4]=28)"
    literal_transitions[39]="([64]=28)"

    local -A match_anything_transitions
    match_anything_transitions=([24]=28 [11]=28 [4]=28 [15]=28 [1]=23 [16]=28 [22]=28 [5]=28 [23]=39 [26]=28)

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
