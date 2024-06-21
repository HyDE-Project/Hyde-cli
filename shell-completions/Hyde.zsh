_Hyde_spec_0 () {
    _path_files
}

_Hyde () {
    local -a literals=("revert" "--uninstall" "wallbash" "--copy" "--opacity" "-j" "save" "unset" "3" "--stop" "--animations" "backup" "BackUp" "list" "cursor" "-p" "--no-custom" "Config" "--install" "--scan" "--record-focus" "theme" "bookmarks" "0" "-freeze" "--reset" "toggle" "pastebin" "1" "systeminfo" "--all" "theme" "--delete" "upgrade" "toggle" "waybar" "reload" "update" "all" "glyph" "--wipe" "--print-monitor" "game" "shell" "Config" "info" "search" "set" "reload" "reset" "--style" "--animations" "--site" "version" "select" "--blur" "variety" "theme" "clean" "airplane_mode" "-f" "reload" "--browser" "--print-snip" "--reset" "reload" "--rasi" "Clone" "check" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "show" "inject" "power" "binds" "rebuild" "screencap" "man" "asus_patch" "events" "override" "--rebuild" "--rasi" "--blur" "restore" "-d" "--browser" "sddm" "run" "--option" "cache" "control" "prev" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "next" "size" "flatpak" "Config" "screencap" "emoji" "--record-snip" "prev" "2" "--revert" "set" "patch" "select" "Package" "control")

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
    descriptions[60]=" Toogle airplane mode"
    descriptions[61]="  Add custom file"
    descriptions[62]=" Reload cursors"
    descriptions[63]="   Set Browser can also set 'BROWSER' env"
    descriptions[64]="  Drag to manually snip an area"
    descriptions[65]=" reset hyde profile"
    descriptions[66]=" Reload wallpaper cache"
    descriptions[67]="	set rofi configuration"
    descriptions[68]=" Restores dots from a clone repository "
    descriptions[69]=" Information about Hyde and its components"
    descriptions[71]="   Diff mismatched dotfiles"
    descriptions[72]=" Previous wallpaper"
    descriptions[73]=" Disable border angle animation"
    descriptions[74]=" Wallpaper commands"
    descriptions[75]=" Default border angle animation"
    descriptions[76]=" Useful GUI util"
    descriptions[77]=" User/Device specific scripts that might be useful"
    descriptions[78]=" Power Options"
    descriptions[79]=" [*] Show keybind hints"
    descriptions[80]=" Force rebuild cache"
    descriptions[81]=" Use rofi to select screenshot options "
    descriptions[82]=" Show Manual"
    descriptions[83]=" Fixes issues for asus devices"
    descriptions[84]=" Watches hyprland events and executes actions"
    descriptions[85]=" Overwrite current dots from the preferred user dir "
    descriptions[86]="   force rebuild cached bookmark paths"
    descriptions[87]=" set rofi configuration"
    descriptions[88]=" Default blur"
    descriptions[89]=" Restore dots"
    descriptions[90]="  Add custom delimiter symbol (default '>')"
    descriptions[91]=" Browser to use"
    descriptions[92]=" Sddm commands"
    descriptions[93]=" Executable utilities"
    descriptions[94]="	options"
    descriptions[95]=" Manages Hyde's cache"
    descriptions[96]=" Interactive control file"
    descriptions[97]=" Previous theme"
    descriptions[98]=" [*] Add chaotic aur to you mirror"
    descriptions[99]="   Pipes STDOUT to less"
    descriptions[100]=" [*] Set wallbash mode. [0] [1] [2] [3] "
    descriptions[101]=" Disable tranparency"
    descriptions[102]="  Reinitialize screencap"
    descriptions[103]=" Links a clone directory. Useful if you want to change your CloneDir"
    descriptions[104]=" Inhibits idle when player status: 'Playing"
    descriptions[105]="  Print all outputs"
    descriptions[106]=" Next theme"
    descriptions[107]="  Display this help message"
    descriptions[108]=" Wallpaper selector"
    descriptions[109]="   Diff preserved dotfiles"
    descriptions[110]=" Set cursor size"
    descriptions[111]=" Next wallppaer"
    descriptions[112]=" Set preavailable Hyde branch"
    descriptions[113]=" Next waybar layout"
    descriptions[114]=" [*] Set waybar size"
    descriptions[115]=" Flatpak setup for HyDE"
    descriptions[116]=" Manage users restore control list"
    descriptions[117]=" [*] Screenshot and screenrecord tool"
    descriptions[118]=" [*] Emoji selector"
    descriptions[119]="  Drag to manually snip an area to screen record it"
    descriptions[120]=" Previous waybar layout"
    descriptions[121]=" wallbash dark mode"
    descriptions[122]=" Converts chaotic aur packages to AUR"
    descriptions[123]=" Set theme"
    descriptions[124]=" Patch a theme from different repository."
    descriptions[125]=" Shell selector"
    descriptions[126]=" Hyde core Package status"
    descriptions[127]=" Edit waybar control file"

    local -A literal_transitions
    literal_transitions[1]="([36]=25 [69]=3 [38]=4 [54]=5 [3]=6 [37]=26 [22]=8 [92]=9 [93]=10 [112]=11 [95]=12 [44]=13 [96]=14 [82]=15 [30]=16 [12]=17 [74]=18 [15]=19 [76]=20 [77]=21 [85]=22 [34]=24 [78]=2 [89]=7)"
    literal_transitions[2]="([27]=28 [43]=28 [7]=34 [50]=28 [8]=33)"
    literal_transitions[3]="([126]=28 [45]=35)"
    literal_transitions[6]="([35]=28 [100]=36)"
    literal_transitions[7]="([103]=28 [18]=28 [13]=28 [68]=28)"
    literal_transitions[8]="([55]=28 [106]=28 [124]=28 [97]=28 [123]=28)"
    literal_transitions[9]="([58]=28)"
    literal_transitions[10]="([60]=28 [104]=28 [84]=28 [117]=29)"
    literal_transitions[12]="([80]=28 [66]=28)"
    literal_transitions[13]="([125]=28)"
    literal_transitions[14]="([116]=28)"
    literal_transitions[17]="([14]=28 [39]=28 [59]=28 [1]=28)"
    literal_transitions[18]="([57]=30 [108]=28 [48]=28 [111]=28 [72]=28)"
    literal_transitions[19]="([62]=28 [46]=28 [110]=28 [32]=28)"
    literal_transitions[20]="([118]=37 [81]=28 [28]=42 [47]=38 [40]=28 [79]=41 [23]=40)"
    literal_transitions[21]="([83]=28 [115]=28 [98]=31)"
    literal_transitions[25]="([114]=39 [120]=28 [49]=28 [113]=28 [127]=28)"
    literal_transitions[29]="([10]=28 [119]=28 [21]=28 [42]=28 [25]=28 [102]=28 [64]=28 [105]=28 [20]=28)"
    literal_transitions[30]="([65]=28)"
    literal_transitions[31]="([2]=28 [19]=28 [122]=28)"
    literal_transitions[32]="([70]=28)"
    literal_transitions[33]="([5]=28 [52]=28 [75]=28 [88]=28)"
    literal_transitions[34]="([11]=28 [56]=28 [73]=28 [101]=28)"
    literal_transitions[35]="([109]=28 [99]=28 [71]=28)"
    literal_transitions[36]="([24]=28 [29]=28 [121]=28 [9]=28)"
    literal_transitions[37]="([51]=28 [87]=27)"
    literal_transitions[38]="([53]=28 [91]=28 [87]=27 [26]=28)"
    literal_transitions[39]="([31]=28)"
    literal_transitions[40]="([86]=28 [17]=28 [67]=27 [63]=43)"
    literal_transitions[41]="([6]=28 [107]=28 [16]=28 [61]=27 [90]=28)"
    literal_transitions[42]="([94]=28 [33]=28 [41]=28 [4]=28)"

    local -A match_anything_transitions
    match_anything_transitions=([24]=28 [43]=28 [11]=28 [4]=28 [15]=28 [27]=28 [1]=23 [16]=28 [22]=28 [5]=28 [23]=32 [26]=28)

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

    local -A specialized_commands=([27]=0)
    if [[ -v "specialized_commands[$state]" ]]; then
        local command_id=${specialized_commands[$state]}
        _Hyde_spec_${command_id} ${words[$CURRENT]}
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
