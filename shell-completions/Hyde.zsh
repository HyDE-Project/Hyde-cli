_Hyde () {
    local -a literals=("revert" "--uninstall" "wallbash" "--copy" "--opacity" "-j" "save" "unset" "3" "--stop" "--animations" "backup" "BackUp" "list" "cursor" "-p" "--no-custom" "Config" "--install" "--scan" "--record-focus" "theme" "bookmarks" "0" "-freeze" "toggle" "pastebin" "1" "systeminfo" "--all" "theme" "--delete" "upgrade" "toggle" "waybar" "reload" "update" "all" "glyph" "--wipe" "--print-monitor" "game" "--browser" "shell" "Config" "info" "search" "set" "reload" "reset" "--animations" "version" "select" "--blur" "--site" "variety" "theme" "clean" "size" "reload" "-f" "--print-snip" "--reset" "reload" "Clone" "check" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "show" "inject" "power" "binds" "rebuild" "screencap" "man" "asus_patch" "events" "override" "--rebuild" "--blur" "restore" "-d" "emoji" "sddm" "run" "--option" "cache" "control" "prev" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "flatpak" "Config" "screencap" "--record-snip" "2" "--revert" "set" "patch" "select" "Package" "control")

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
    descriptions[33]=" Upgrades dots from the repository"
    descriptions[34]=" Cycles wallbash [0] off [1] auto [2] dark [3] light"
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
    descriptions[48]=" Set /Path/to/Wallpaper"
    descriptions[49]=" Reloads waybar"
    descriptions[50]=" Reset changes"
    descriptions[51]=" Default animations"
    descriptions[52]=" Hyde-cli version"
    descriptions[53]=" Theme selector"
    descriptions[54]=" Disable blur"
    descriptions[55]=" search engine to use"
    descriptions[56]=" [*] Use variety package to manage wallpapers"
    descriptions[57]=" Select sddm theme"
    descriptions[58]=" Clear some storage by deleting old backups"
    descriptions[59]=" [*]Set waybar size"
    descriptions[60]=" Reload cursors"
    descriptions[61]="  Add custom file"
    descriptions[62]="  Drag to manually snip an area"
    descriptions[63]=" reset hyde profile"
    descriptions[64]=" Reload wallpaper cache"
    descriptions[65]=" Restores dots from a clone repository "
    descriptions[66]=" Information about Hyde and its components"
    descriptions[68]="   Diff mismatched dotfiles"
    descriptions[69]=" Previous wallpaper"
    descriptions[70]=" Disable border angle animation"
    descriptions[71]=" Wallpaper commands"
    descriptions[72]=" Default border angle animation"
    descriptions[73]=" Useful GUI util"
    descriptions[74]=" User/Device specific scripts that might be useful"
    descriptions[75]=" Power Options"
    descriptions[76]=" [*] Show keybind hints"
    descriptions[77]=" Force rebuild cache"
    descriptions[78]=" Use rofi to select screenshot options "
    descriptions[79]=" Show Manual"
    descriptions[80]=" Fixes issues for asus devices"
    descriptions[81]=" Watches hyprland events and executes actions"
    descriptions[82]=" Overwrite current dots from the preferred user dir "
    descriptions[83]="   force rebuild cached bookmark paths"
    descriptions[84]=" Default blur"
    descriptions[85]=" Restore dots"
    descriptions[86]="  Add custom delimiter symbol (default '>')"
    descriptions[87]=" Emoji selector"
    descriptions[88]=" Sddm commands"
    descriptions[89]=" Executable utilities"
    descriptions[90]="	options"
    descriptions[91]=" Manages Hyde's cache"
    descriptions[92]=" Interactive control file"
    descriptions[93]=" Previous theme"
    descriptions[94]=" [*] Add chaotic aur to you mirror"
    descriptions[95]="   Pipes STDOUT to less"
    descriptions[96]=" [*] Set wallbash mode. [0] [1] [2] [3] "
    descriptions[97]=" Disable tranparency"
    descriptions[98]="  Reinitialize screencap"
    descriptions[99]=" Links a clone directory. Useful if you want to change your CloneDir"
    descriptions[100]=" Inhibits idle when player status: 'Playing"
    descriptions[101]="  Print all outputs"
    descriptions[102]=" Next theme"
    descriptions[103]="  Display this help message"
    descriptions[104]=" Wallpaper selector"
    descriptions[105]="   Diff preserved dotfiles"
    descriptions[106]=" Set cursor size"
    descriptions[107]=" Next wallppaer"
    descriptions[108]=" Set preavailable Hyde branch"
    descriptions[109]=" Flatpak setup for HyDE"
    descriptions[110]=" Manage users restore control list"
    descriptions[111]=" [*] Screenshot and screenrecord tool"
    descriptions[112]="  Drag to manually snip an area to screen record it"
    descriptions[113]=" wallbash dark mode"
    descriptions[114]=" Converts chaotic aur packages to AUR"
    descriptions[115]=" Set theme"
    descriptions[116]=" Patch a theme from different repository."
    descriptions[117]=" Shell selector"
    descriptions[118]=" Hyde core Package status"
    descriptions[119]=" Edit waybar control file"

    local -A literal_transitions
    literal_transitions[1]="([35]=25 [66]=3 [37]=4 [52]=5 [3]=6 [36]=26 [22]=8 [88]=9 [89]=10 [108]=11 [91]=12 [44]=13 [92]=14 [79]=15 [29]=16 [12]=17 [71]=18 [15]=19 [73]=20 [74]=21 [82]=22 [33]=24 [75]=2 [85]=7)"
    literal_transitions[2]="([26]=28 [42]=28 [7]=27 [50]=28 [8]=33)"
    literal_transitions[3]="([118]=28 [45]=34)"
    literal_transitions[6]="([34]=28 [96]=31)"
    literal_transitions[7]="([99]=28 [18]=28 [13]=28 [65]=28)"
    literal_transitions[8]="([53]=28 [102]=28 [116]=28 [93]=28 [115]=28)"
    literal_transitions[9]="([57]=28)"
    literal_transitions[10]="([100]=28 [81]=28 [111]=29)"
    literal_transitions[12]="([77]=28 [64]=28)"
    literal_transitions[13]="([117]=28)"
    literal_transitions[14]="([110]=28)"
    literal_transitions[17]="([14]=28 [38]=28 [58]=28 [1]=28)"
    literal_transitions[18]="([56]=32 [104]=28 [48]=28 [107]=28 [69]=28)"
    literal_transitions[19]="([60]=28 [46]=28 [106]=28 [31]=28)"
    literal_transitions[20]="([87]=28 [78]=28 [27]=37 [47]=36 [39]=28 [76]=39 [23]=38)"
    literal_transitions[21]="([80]=28 [109]=28 [94]=35)"
    literal_transitions[25]="([49]=28 [59]=30 [119]=28)"
    literal_transitions[27]="([11]=28 [54]=28 [70]=28 [97]=28)"
    literal_transitions[29]="([10]=28 [112]=28 [21]=28 [41]=28 [25]=28 [98]=28 [62]=28 [101]=28 [20]=28)"
    literal_transitions[30]="([30]=28)"
    literal_transitions[31]="([24]=28 [28]=28 [113]=28 [9]=28)"
    literal_transitions[32]="([63]=28)"
    literal_transitions[33]="([5]=28 [51]=28 [72]=28 [84]=28)"
    literal_transitions[34]="([105]=28 [95]=28 [68]=28)"
    literal_transitions[35]="([2]=28 [19]=28 [114]=28)"
    literal_transitions[36]="([43]=28 [55]=28)"
    literal_transitions[37]="([90]=28 [32]=28 [40]=28 [4]=28)"
    literal_transitions[38]="([83]=28 [17]=28)"
    literal_transitions[39]="([6]=28 [103]=28 [16]=28 [61]=28 [86]=28)"
    literal_transitions[40]="([67]=28)"

    local -A match_anything_transitions
    match_anything_transitions=([26]=28 [11]=28 [4]=28 [15]=28 [1]=23 [16]=28 [22]=28 [5]=28 [23]=40 [24]=28)

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
