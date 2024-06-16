_Hyde () {
    local -a literals=("revert" "--uninstall" "wallbash" "--opacity" "-j" "save" "unset" "3" "w" "--animations" "--stop" "d" "backup" "BackUp" "list" "cursor" "-p" "--no-custom" "Config" "--install" "--scan" "--record-focus" "theme" "bookmarks" "0" "-freeze" "toggle" "pastebin" "1" "systeminfo" "--all" "theme" "toggle" "upgrade" "waybar" "reload" "update" "all" "glyph" "c" "--print-monitor" "game" "shell" "Config" "info" "search" "reload" "reset" "--animations" "version" "select" "--blur" "theme" "clean" "size" "reload" "-f" "--print-snip" "reload" "Clone" "check" "s" "::=" "--mismatch" "prev" "--borderangle" "-s" "wallpaper" "--borderangle" "show" "inject" "power" "-b" "set" "binds" "rebuild" "screencap" "man" "asus_patch" "events" "override" "--rebuild" "--blur" "restore" "-d" "emoji" "sddm" "run" "cache" "control" "prev" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "flatpak" "Config" "screencap" "--record-snip" "2" "--revert" "set" "patch" "select" "Package" "control")

    local -A descriptions
    descriptions[1]=" Revert to a previous backup run by 'Hyde backup all'. "
    descriptions[2]=" Removes Chaotic Aur"
    descriptions[3]=" Toggle to use wallpaper accent themes"
    descriptions[4]=" Default tranparency"
    descriptions[5]="  Show the JSON format"
    descriptions[6]=" [*] Save power by disabling features"
    descriptions[7]=" [*] Unset specific changes"
    descriptions[8]=" wallbash light mode"
    descriptions[9]="	wipe database"
    descriptions[10]=" Disable animations"
    descriptions[11]="  Stop every instance of Screencap"
    descriptions[12]="	list and delete selected"
    descriptions[13]=" Backing up commands"
    descriptions[14]=" Restores dots from previous backup"
    descriptions[15]=" List the backup"
    descriptions[16]=" Cursor setting"
    descriptions[17]="  Show the pretty format"
    descriptions[18]="    run without custom '.lst' bookmark files"
    descriptions[19]=" Only restores dots from default '/Configs'"
    descriptions[20]=" Setup Chaotic Aur, append [fresh] to run in fresh install mode"
    descriptions[21]="  Use 'tesseract' to scan image then add to clipboard"
    descriptions[22]="  Record focused monitor"
    descriptions[23]=" Theme commands"
    descriptions[24]=" [*] Bookmark selector"
    descriptions[25]=" wallbash disabled"
    descriptions[26]="  Frozen screen, drag to manually snip an area"
    descriptions[27]=" Toggle ﯦ  Set/unset current changes'"
    descriptions[28]=" [*] Pastebin manager "
    descriptions[29]=" wallbash auto"
    descriptions[30]=" System information"
    descriptions[31]=" Change all the pre-set sizes"
    descriptions[32]=" Set cursor theme"
    descriptions[33]=" Cycles wallbash [0] off [1] auto [2] dark [3] light"
    descriptions[34]=" Upgrades dots from the repository"
    descriptions[35]=" Waybar commands"
    descriptions[36]=" Just reload"
    descriptions[37]=" Pull updates from Hyde repository"
    descriptions[38]=" Backs up the current configuration"
    descriptions[39]=" Glyph selector"
    descriptions[40]="	list and copy selected"
    descriptions[41]="  Print focused monitor"
    descriptions[42]=" Toggle game mode"
    descriptions[43]=" Shell commands"
    descriptions[44]=" [*] Hyde Config File & Directory status"
    descriptions[45]=" Check active cursor status (only gsettings)"
    descriptions[46]=" [*] Web Search"
    descriptions[47]=" Reloads waybar"
    descriptions[48]=" Reset changes"
    descriptions[49]=" Default animations"
    descriptions[50]=" Hyde-cli version"
    descriptions[51]=" Theme selector"
    descriptions[52]=" Disable blur"
    descriptions[53]=" Select sddm theme"
    descriptions[54]=" Clear some storage by deleting old backups"
    descriptions[55]=" [*]Set waybar size"
    descriptions[56]=" Reload cursors"
    descriptions[57]="  Add custom file"
    descriptions[58]="  Drag to manually snip an area"
    descriptions[59]=" Reload wallpaper cache"
    descriptions[60]=" Restores dots from a clone repository "
    descriptions[61]=" Information about Hyde and its components"
    descriptions[62]="	options"
    descriptions[64]="   Diff mismatched dotfiles"
    descriptions[65]=" Previous wallpaper"
    descriptions[66]=" Disable border angle animation"
    descriptions[67]=" search engine to use"
    descriptions[68]=" Wallpaper commands"
    descriptions[69]=" Default border angle animation"
    descriptions[70]=" Useful GUI util"
    descriptions[71]=" User/Device specific scripts that might be useful"
    descriptions[72]=" Power Options"
    descriptions[73]=" browser to use"
    descriptions[74]=" Set /Path/to/Wallpapers as new wallpaper directory"
    descriptions[75]=" [*] Show keybind hints"
    descriptions[76]=" Force rebuild cache"
    descriptions[77]=" Use rofi to select screenshot options "
    descriptions[78]=" Show Manual"
    descriptions[79]=" Fixes issues for asus devices"
    descriptions[80]=" Watches hyprland events and executes actions"
    descriptions[81]=" Overwrite current dots from the preferred user dir "
    descriptions[82]="   force rebuild cached bookmark paths"
    descriptions[83]=" Default blur"
    descriptions[84]=" Restore dots"
    descriptions[85]="  Add custom delimiter symbol (default '>')"
    descriptions[86]=" Emoji selector"
    descriptions[87]=" Sddm commands"
    descriptions[88]=" Executable utilities"
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
    literal_transitions[1]="([35]=25 [61]=3 [37]=4 [50]=5 [3]=6 [36]=26 [23]=8 [87]=9 [88]=10 [106]=11 [89]=12 [43]=13 [90]=14 [78]=15 [30]=16 [13]=17 [68]=18 [16]=19 [70]=20 [71]=21 [81]=22 [34]=24 [72]=2 [84]=7)"
    literal_transitions[2]="([27]=28 [42]=28 [6]=32 [48]=28 [7]=33)"
    literal_transitions[3]="([116]=28 [44]=34)"
    literal_transitions[6]="([33]=28 [94]=29)"
    literal_transitions[7]="([97]=28 [19]=28 [14]=28 [60]=28)"
    literal_transitions[8]="([51]=28 [100]=28 [114]=28 [91]=28 [113]=28)"
    literal_transitions[9]="([53]=28)"
    literal_transitions[10]="([98]=28 [80]=28 [109]=27)"
    literal_transitions[12]="([76]=28 [59]=28)"
    literal_transitions[13]="([115]=28)"
    literal_transitions[14]="([108]=28)"
    literal_transitions[17]="([15]=28 [38]=28 [54]=28 [1]=28)"
    literal_transitions[18]="([102]=28 [105]=28 [74]=28 [65]=28)"
    literal_transitions[19]="([56]=28 [45]=28 [104]=28 [32]=28)"
    literal_transitions[20]="([86]=28 [77]=28 [28]=38 [46]=37 [39]=28 [75]=35 [24]=36)"
    literal_transitions[21]="([79]=28 [107]=28 [92]=30)"
    literal_transitions[25]="([47]=28 [55]=31 [117]=28)"
    literal_transitions[27]="([11]=28 [110]=28 [22]=28 [41]=28 [26]=28 [96]=28 [58]=28 [99]=28 [21]=28)"
    literal_transitions[29]="([25]=28 [29]=28 [111]=28 [8]=28)"
    literal_transitions[30]="([2]=28 [20]=28 [112]=28)"
    literal_transitions[31]="([31]=28)"
    literal_transitions[32]="([10]=28 [52]=28 [66]=28 [95]=28)"
    literal_transitions[33]="([4]=28 [49]=28 [69]=28 [83]=28)"
    literal_transitions[34]="([103]=28 [93]=28 [64]=28)"
    literal_transitions[35]="([5]=28 [101]=28 [17]=28 [57]=28 [85]=28)"
    literal_transitions[36]="([82]=28 [18]=28)"
    literal_transitions[37]="([67]=28 [73]=28)"
    literal_transitions[38]="([40]=28 [12]=28 [9]=28 [62]=28)"
    literal_transitions[39]="([63]=28)"

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
