_Hyde_spec_0 () {
    _path_files
}

_Hyde () {
    local -a literals=("revert" "--uninstall" "wallbash" "--opacity" "-j" "theme" "save" "unset" "3" "--copy" "--animations" "--stop" "backup" "BackUp" "list" "cursor" "--deps" "-p" "--no-custom" "Config" "--freeze" "--install" "set" "--scan" "--record-focus" "theme" "bookmarks" "0" "--reset" "toggle" "pastebin" "unset" "1" "systeminfo" "--all" "theme" "--reset" "--delete" "upgrade" "toggle" "waybar" "reload" "update" "all" "--wipe" "--print-monitor" "game" "shell" "Config" "info" "--style" "reload" "code" "reset" "on" "--animations" "search" "--site" "version" "select" "--blur" "off" "variety" "clean" "calc" "airplane_mode" "--browser" "reload" "--print-snip" "--reset" "reload" "--rasi" "Clone" "--all" "check" "--all" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "show" "-f" "inject" "power" "--persist" "binds" "rebuild" "screencap" "man" "asus_patch" "events" "override" "--rebuild" "--rasi" "--blur" "restore" "install" "-d" "info" "--browser" "sddm" "run" "--option" "cache" "list" "control" "prev" "patch" "chaotic_aur" "--less" "mode" "--opacity" "Link" "audio_idle" "--print-all" "next" "-h" "set" "--preserve" "size" "next" "branch" "select" "next" "size" "test" "flatpak" "import" "Config" "screencap" "select" "emoji" "--record-snip" "prev" "2" "--revert" "set" "select" "--deps" "Package" "glyph" "control")

    local -A descriptions
    descriptions[1]=" Revert to a previous backup run by 'Hyde backup all'. "
    descriptions[2]=" Removes Chaotic Aur"
    descriptions[3]=" Toggle to use wallpaper accent themes"
    descriptions[4]=" Default tranparency"
    descriptions[5]="  Show the JSON format"
    descriptions[6]=" set the code theme"
    descriptions[7]=" [*] Save power by disabling features"
    descriptions[8]=" [*] Unset specific changes"
    descriptions[9]=" wallbash light mode"
    descriptions[10]=" list and copy selected"
    descriptions[11]=" Disable animations"
    descriptions[12]="  Stop every instance of Screencap"
    descriptions[13]=" Backing up commands"
    descriptions[14]=" Restores dots from previous backup"
    descriptions[15]=" List the backup"
    descriptions[16]=" Cursor setting"
    descriptions[17]=" check and resolve dependencies"
    descriptions[18]="  Show the pretty format"
    descriptions[19]="    run without custom '.lst' bookmark files"
    descriptions[20]=" Only restores dots from default '/Configs'"
    descriptions[21]="  Frozen screen, drag to manually snip an area"
    descriptions[22]=" Setup Chaotic Aur, append [fresh] to run in fresh install mode"
    descriptions[23]=" Set Sddm theme"
    descriptions[24]="  Use 'tesseract' to scan image then add to clipboard"
    descriptions[25]="  Record focused monitor"
    descriptions[26]=" Theme commands"
    descriptions[27]=" [*] Bookmark selector"
    descriptions[28]=" wallbash disabled"
    descriptions[29]="	Reset cache"
    descriptions[30]=" Toggle ﯦ  Set/unset current changes'"
    descriptions[31]=" [*] Pastebin manager "
    descriptions[32]=" Unset a theme set by 'set' command"
    descriptions[33]=" wallbash auto"
    descriptions[34]=" System information"
    descriptions[35]=" Change all the pre-set sizes"
    descriptions[36]=" Set cursor theme"
    descriptions[37]="  Reinitialize"
    descriptions[38]="	list and delete selected"
    descriptions[39]=" Upgrades dots from the repository"
    descriptions[40]=" Cycles wallbash [0] off [1] auto [2] dark [3] light"
    descriptions[41]=" Waybar commands"
    descriptions[42]=" Just reload"
    descriptions[43]=" Pull updates from Hyde repository"
    descriptions[44]=" Backs up the current configuration"
    descriptions[45]="	wipe database"
    descriptions[46]="  Print focused monitor"
    descriptions[47]=" Toggle game mode"
    descriptions[48]=" Shell commands"
    descriptions[49]=" [*] Hyde Config File & Directory status"
    descriptions[50]=" Check active cursor status (only gsettings)"
    descriptions[51]="   use style [ 1 | 2 ]"
    descriptions[52]=" Reloads waybar"
    descriptions[53]=" Code editor related commands"
    descriptions[54]=" Reset changes"
    descriptions[55]=" Disable all fancy things to save more power"
    descriptions[56]=" Default animations"
    descriptions[57]=" [*] Web Search"
    descriptions[58]=" Search engine to use"
    descriptions[59]=" Hyde-cli version"
    descriptions[60]=" Theme selector"
    descriptions[61]=" Disable blur"
    descriptions[62]=" Disables the power saving mode"
    descriptions[63]=" [*] Use variety package to manage wallpapers"
    descriptions[64]=" Clear some storage by deleting old backups"
    descriptions[65]=" [*] Calculator (libqalculate)"
    descriptions[66]=" Toogle airplane mode"
    descriptions[67]="   Set Browser can also set 'BROWSER' env"
    descriptions[68]=" Reload cursors"
    descriptions[69]="  Drag to manually snip an area"
    descriptions[70]=" reset hyde profile"
    descriptions[71]=" Reload wallpaper cache"
    descriptions[72]="	set rofi configuration"
    descriptions[73]=" Restores dots from a clone repository "
    descriptions[74]=" Disable all to save more power"
    descriptions[75]=" Information about Hyde and its components"
    descriptions[76]=" Remove power saving mode"
    descriptions[78]="   Diff mismatched dotfiles"
    descriptions[79]=" Previous wallpaper"
    descriptions[80]=" Disable border angle animation"
    descriptions[81]=" Wallpaper commands"
    descriptions[82]=" Default border angle animation"
    descriptions[83]=" Useful GUI util"
    descriptions[84]="  Add custom .conf file"
    descriptions[85]=" User/Device specific scripts that might be useful"
    descriptions[86]=" Power Options"
    descriptions[87]="	Saves bookmark file list to ~/.cache.So no re-caching after reboot"
    descriptions[88]=" [*] Show keybind hints"
    descriptions[89]=" Force rebuild cache"
    descriptions[90]=" Use rofi to select screenshot options "
    descriptions[91]=" Show Manual"
    descriptions[92]=" Fixes issues for asus devices"
    descriptions[93]=" Watches hyprland events and executes actions"
    descriptions[94]=" Overwrite current dots from the preferred user dir "
    descriptions[95]="   force rebuild cached bookmark paths"
    descriptions[96]=" set rofi configuration"
    descriptions[97]=" Default blur"
    descriptions[98]=" Restore dots"
    descriptions[99]=" Install and set sddm theme from HyDE clone Repo"
    descriptions[100]="  Add custom delimiter symbol (default '>')"
    descriptions[101]=" Check sddm theme status"
    descriptions[102]=" Browser to use"
    descriptions[103]=" Sddm commands"
    descriptions[104]=" Executable utilities"
    descriptions[105]="	options"
    descriptions[106]=" Manages Hyde's cache"
    descriptions[107]=" List all local sddm themes"
    descriptions[108]=" Interactive control file"
    descriptions[109]=" Previous theme"
    descriptions[111]=" [*] Add chaotic aur to you mirror"
    descriptions[112]="   Pipes STDOUT to less"
    descriptions[113]=" [*] Set wallbash mode. [0] [1] [2] [3] "
    descriptions[114]=" Disable tranparency"
    descriptions[115]=" Links a clone directory. Useful if you want to change your CloneDir"
    descriptions[116]=" Inhibits idle when player status: 'Playing"
    descriptions[117]="  Print all outputs"
    descriptions[118]=" Next theme"
    descriptions[119]="  Display this help message"
    descriptions[120]=" [*] Set /Path/to/Wallpaper"
    descriptions[121]="   Diff preserved dotfiles"
    descriptions[122]=" Set cursor size"
    descriptions[123]=" Next wallppaer"
    descriptions[124]=" Set preavailable Hyde branch"
    descriptions[125]=" Wallpaper selector"
    descriptions[126]=" Next waybar layout"
    descriptions[127]=" [*] Set waybar size"
    descriptions[128]=" Test a theme"
    descriptions[129]=" Flatpak setup for HyDE"
    descriptions[130]=" [*] Import a theme from different repository."
    descriptions[131]=" Manage users restore control list"
    descriptions[132]=" [*] Screenshot and screenrecord tool"
    descriptions[133]=" Select Sddm theme from the list"
    descriptions[134]=" [*] Emoji selector"
    descriptions[135]="  Drag to manually snip an area to screen record it"
    descriptions[136]=" Previous waybar layout"
    descriptions[137]=" wallbash dark mode"
    descriptions[138]=" Converts chaotic aur packages to AUR"
    descriptions[139]=" Set theme"
    descriptions[140]=" Shell selector"
    descriptions[141]="  Chek and resolve dependencies"
    descriptions[142]=" Hyde core Package status"
    descriptions[143]=" [*] Glyph selector"
    descriptions[144]=" Edit waybar control file"

    local -A literal_transitions
    literal_transitions[1]="([86]=7 [75]=3 [43]=4 [59]=5 [3]=6 [39]=26 [26]=8 [103]=10 [104]=11 [124]=13 [106]=12 [41]=27 [48]=14 [108]=15 [91]=16 [34]=17 [13]=18 [81]=19 [16]=20 [83]=21 [85]=22 [94]=23 [53]=25 [98]=9 [42]=2)"
    literal_transitions[3]="([142]=28 [49]=37)"
    literal_transitions[6]="([40]=28 [113]=38)"
    literal_transitions[7]="([30]=28 [47]=28 [7]=40 [54]=28 [8]=29)"
    literal_transitions[8]="([60]=28 [118]=28 [139]=28 [110]=28 [130]=31 [109]=28)"
    literal_transitions[9]="([115]=28 [20]=28 [14]=28 [73]=28)"
    literal_transitions[10]="([133]=28 [32]=28 [101]=28 [107]=28 [99]=28 [128]=28 [23]=28)"
    literal_transitions[11]="([66]=28 [116]=28 [93]=28 [132]=44)"
    literal_transitions[12]="([89]=28 [71]=28)"
    literal_transitions[14]="([140]=28)"
    literal_transitions[15]="([131]=28)"
    literal_transitions[18]="([15]=28 [44]=28 [64]=28 [1]=28)"
    literal_transitions[19]="([63]=36 [120]=31 [123]=28 [125]=28 [79]=28)"
    literal_transitions[20]="([68]=28 [50]=28 [122]=28 [36]=28)"
    literal_transitions[21]="([134]=39 [65]=33 [88]=41 [27]=30 [90]=28 [57]=35 [143]=42 [31]=34)"
    literal_transitions[22]="([92]=28 [129]=28 [111]=45)"
    literal_transitions[25]="([6]=28)"
    literal_transitions[27]="([127]=46 [136]=28 [52]=28 [126]=28 [144]=28)"
    literal_transitions[29]="([4]=28 [56]=28 [82]=28 [97]=28 [76]=28)"
    literal_transitions[30]="([67]=32 [95]=28 [19]=28 [87]=28 [72]=31 [17]=28)"
    literal_transitions[33]="([17]=28 [29]=28 [96]=31)"
    literal_transitions[34]="([105]=28 [38]=28 [45]=28 [10]=28 [17]=28)"
    literal_transitions[35]="([58]=28 [102]=28 [96]=31 [29]=28)"
    literal_transitions[36]="([70]=28)"
    literal_transitions[37]="([121]=28 [112]=28 [78]=28)"
    literal_transitions[38]="([28]=28 [33]=28 [137]=28 [9]=28)"
    literal_transitions[39]="([17]=28 [72]=31 [51]=28)"
    literal_transitions[40]="([55]=28 [11]=28 [61]=28 [62]=28 [80]=28 [114]=28 [74]=28)"
    literal_transitions[41]="([5]=28 [119]=28 [18]=28 [84]=31 [100]=28)"
    literal_transitions[42]="([17]=28)"
    literal_transitions[43]="([77]=28)"
    literal_transitions[44]="([12]=28 [135]=28 [25]=28 [46]=28 [21]=28 [37]=28 [69]=28 [141]=28 [117]=28 [24]=28)"
    literal_transitions[45]="([2]=28 [22]=28 [138]=28)"
    literal_transitions[46]="([35]=28)"

    local -A match_anything_transitions
    match_anything_transitions=([2]=28 [4]=28 [31]=28 [13]=28 [17]=28 [32]=28 [1]=24 [16]=28 [5]=28 [23]=28 [26]=28 [24]=43)

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

    local -A specialized_commands=([31]=0)
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
