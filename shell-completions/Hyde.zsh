_Hyde () {
    local -a literals=("revert" "--uninstall" "wallbash" "--copy" "--opacity" "-j" "save" "unset" "3" "--stop" "--animations" "backup" "BackUp" "list" "cursor" "-p" "--no-custom" "Config" "--install" "--scan" "--record-focus" "theme" "bookmarks" "0" "-freeze" "--reset" "toggle" "pastebin" "1" "systeminfo" "--all" "theme" "--delete" "upgrade" "toggle" "waybar" "reload" "update" "all" "glyph" "--wipe" "--print-monitor" "game" "shell" "Config" "info" "search" "set" "reload" "reset" "--style" "--animations" "--site" "version" "select" "--blur" "variety" "theme" "clean" "-f" "reload" "--browser" "--print-snip" "--reset" "reload" "Clone" "check" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "show" "inject" "power" "binds" "rebuild" "screencap" "man" "asus_patch" "events" "override" "--rebuild" "--blur" "restore" "-d" "--browser" "sddm" "run" "--option" "cache" "control" "prev" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "next" "size" "flatpak" "Config" "screencap" "emoji" "--record-snip" "prev" "2" "--revert" "set" "patch" "select" "Package" "control")

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
    descriptions[26]="	Reset cache"
    descriptions[27]=" Toggle ﯦ  Set/unset current changes'"
    descriptions[28]=" [*] Pastebin manager "
    descriptions[29]=" wallbash auto"
    descriptions[30]=" System information"
    descriptions[31]=" Change all the pre-set sizes"
    descriptions[32]=" Set cursor theme"
    descriptions[33]="	list and delete selected"
    descriptions[34]=" Upgrades dots from the repository"
    descriptions[35]=" Cycles wallbash [0] off [1] auto [2] dark [3] light"
    descriptions[36]=" Waybar commands"
    descriptions[37]=" Just reload"
    descriptions[38]=" Pull updates from Hyde repository"
    descriptions[39]=" Backs up the current configuration"
    descriptions[40]=" Glyph selector"
    descriptions[41]="	wipe database"
    descriptions[42]="  Print focused monitor"
    descriptions[43]=" Toggle game mode"
    descriptions[44]=" Shell commands"
    descriptions[45]=" [*] Hyde Config File & Directory status"
    descriptions[46]=" Check active cursor status (only gsettings)"
    descriptions[47]=" [*] Web Search"
    descriptions[48]=" Set /Path/to/Wallpaper"
    descriptions[49]=" Reloads waybar"
    descriptions[50]=" Reset changes"
    descriptions[51]="   use style [ 1 | 2 ]"
    descriptions[52]=" Default animations"
    descriptions[53]=" Search engine to use"
    descriptions[54]=" Hyde-cli version"
    descriptions[55]=" Theme selector"
    descriptions[56]=" Disable blur"
    descriptions[57]=" [*] Use variety package to manage wallpapers"
    descriptions[58]=" Select sddm theme"
    descriptions[59]=" Clear some storage by deleting old backups"
    descriptions[60]="  Add custom file"
    descriptions[61]=" Reload cursors"
    descriptions[62]="   Set Browser can also set 'BROWSER' env"
    descriptions[63]="  Drag to manually snip an area"
    descriptions[64]=" reset hyde profile"
    descriptions[65]=" Reload wallpaper cache"
    descriptions[66]=" Restores dots from a clone repository "
    descriptions[67]=" Information about Hyde and its components"
    descriptions[69]="   Diff mismatched dotfiles"
    descriptions[70]=" Previous wallpaper"
    descriptions[71]=" Disable border angle animation"
    descriptions[72]=" Wallpaper commands"
    descriptions[73]=" Default border angle animation"
    descriptions[74]=" Useful GUI util"
    descriptions[75]=" User/Device specific scripts that might be useful"
    descriptions[76]=" Power Options"
    descriptions[77]=" [*] Show keybind hints"
    descriptions[78]=" Force rebuild cache"
    descriptions[79]=" Use rofi to select screenshot options "
    descriptions[80]=" Show Manual"
    descriptions[81]=" Fixes issues for asus devices"
    descriptions[82]=" Watches hyprland events and executes actions"
    descriptions[83]=" Overwrite current dots from the preferred user dir "
    descriptions[84]="   force rebuild cached bookmark paths"
    descriptions[85]=" Default blur"
    descriptions[86]=" Restore dots"
    descriptions[87]="  Add custom delimiter symbol (default '>')"
    descriptions[88]=" Browser to use"
    descriptions[89]=" Sddm commands"
    descriptions[90]=" Executable utilities"
    descriptions[91]="	options"
    descriptions[92]=" Manages Hyde's cache"
    descriptions[93]=" Interactive control file"
    descriptions[94]=" Previous theme"
    descriptions[95]=" [*] Add chaotic aur to you mirror"
    descriptions[96]="   Pipes STDOUT to less"
    descriptions[97]=" [*] Set wallbash mode. [0] [1] [2] [3] "
    descriptions[98]=" Disable tranparency"
    descriptions[99]="  Reinitialize screencap"
    descriptions[100]=" Links a clone directory. Useful if you want to change your CloneDir"
    descriptions[101]=" Inhibits idle when player status: 'Playing"
    descriptions[102]="  Print all outputs"
    descriptions[103]=" Next theme"
    descriptions[104]="  Display this help message"
    descriptions[105]=" Wallpaper selector"
    descriptions[106]="   Diff preserved dotfiles"
    descriptions[107]=" Set cursor size"
    descriptions[108]=" Next wallppaer"
    descriptions[109]=" Set preavailable Hyde branch"
    descriptions[110]=" Next waybar layout"
    descriptions[111]=" [*] Set waybar size"
    descriptions[112]=" Flatpak setup for HyDE"
    descriptions[113]=" Manage users restore control list"
    descriptions[114]=" [*] Screenshot and screenrecord tool"
    descriptions[115]=" [*] Emoji selector"
    descriptions[116]="  Drag to manually snip an area to screen record it"
    descriptions[117]=" Previous waybar layout"
    descriptions[118]=" wallbash dark mode"
    descriptions[119]=" Converts chaotic aur packages to AUR"
    descriptions[120]=" Set theme"
    descriptions[121]=" Patch a theme from different repository."
    descriptions[122]=" Shell selector"
    descriptions[123]=" Hyde core Package status"
    descriptions[124]=" Edit waybar control file"

    local -A literal_transitions
    literal_transitions[1]="([36]=25 [67]=3 [38]=4 [54]=5 [3]=6 [37]=26 [22]=8 [89]=9 [90]=10 [109]=11 [92]=12 [44]=13 [93]=14 [80]=15 [30]=16 [12]=17 [72]=18 [15]=19 [74]=20 [75]=21 [83]=22 [34]=24 [76]=2 [86]=7)"
    literal_transitions[2]="([27]=28 [43]=28 [7]=27 [50]=28 [8]=33)"
    literal_transitions[3]="([123]=28 [45]=35)"
    literal_transitions[6]="([35]=28 [97]=34)"
    literal_transitions[7]="([100]=28 [18]=28 [13]=28 [66]=28)"
    literal_transitions[8]="([55]=28 [103]=28 [121]=28 [94]=28 [120]=28)"
    literal_transitions[9]="([58]=28)"
    literal_transitions[10]="([101]=28 [82]=28 [114]=38)"
    literal_transitions[12]="([78]=28 [65]=28)"
    literal_transitions[13]="([122]=28)"
    literal_transitions[14]="([113]=28)"
    literal_transitions[17]="([14]=28 [39]=28 [59]=28 [1]=28)"
    literal_transitions[18]="([57]=37 [105]=28 [48]=28 [108]=28 [70]=28)"
    literal_transitions[19]="([61]=28 [46]=28 [107]=28 [32]=28)"
    literal_transitions[20]="([115]=32 [79]=28 [28]=40 [47]=29 [40]=28 [77]=31 [23]=30)"
    literal_transitions[21]="([81]=28 [112]=28 [95]=36)"
    literal_transitions[25]="([111]=41 [117]=28 [49]=28 [110]=28 [124]=28)"
    literal_transitions[27]="([11]=28 [56]=28 [71]=28 [98]=28)"
    literal_transitions[29]="([26]=28 [53]=28 [88]=28)"
    literal_transitions[30]="([84]=28 [17]=28 [62]=28)"
    literal_transitions[31]="([6]=28 [104]=28 [16]=28 [60]=28 [87]=28)"
    literal_transitions[32]="([51]=28)"
    literal_transitions[33]="([5]=28 [52]=28 [73]=28 [85]=28)"
    literal_transitions[34]="([24]=28 [29]=28 [118]=28 [9]=28)"
    literal_transitions[35]="([106]=28 [96]=28 [69]=28)"
    literal_transitions[36]="([2]=28 [19]=28 [119]=28)"
    literal_transitions[37]="([64]=28)"
    literal_transitions[38]="([10]=28 [116]=28 [21]=28 [42]=28 [25]=28 [99]=28 [63]=28 [102]=28 [20]=28)"
    literal_transitions[39]="([68]=28)"
    literal_transitions[40]="([91]=28 [33]=28 [41]=28 [4]=28)"
    literal_transitions[41]="([31]=28)"

    local -A match_anything_transitions
    match_anything_transitions=([11]=28 [4]=28 [15]=28 [1]=23 [16]=28 [22]=28 [5]=28 [23]=39 [26]=28 [24]=28)

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
