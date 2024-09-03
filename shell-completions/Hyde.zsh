_Hyde_spec_0 () {
    _path_files
}

_Hyde () {
    local -a literals=("revert" "--uninstall" "wallbash" "--copy" "--opacity" "-j" "theme" "save" "unset" "3" "--stop" "--animations" "backup" "BackUp" "list" "cursor" "--freeze" "-p" "--no-custom" "Config" "--install" "--scan" "--record-focus" "theme" "bookmarks" "0" "--reset" "toggle" "pastebin" "unset" "1" "systeminfo" "--all" "theme" "--delete" "upgrade" "toggle" "waybar" "reload" "update" "all" "glyph" "--wipe" "--print-monitor" "game" "shell" "Config" "info" "--style" "set" "reload" "reset" "on" "--animations" "code" "search" "version" "--site" "select" "--blur" "off" "variety" "clean" "calc" "airplane_mode" "reload" "--browser" "--print-snip" "--reset" "reload" "--rasi" "Clone" "--all" "check" "--all" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "show" "-f" "inject" "power" "--persist" "binds" "rebuild" "screencap" "man" "asus_patch" "events" "override" "--rebuild" "--rasi" "--blur" "restore" "install" "-d" "info" "--browser" "sddm" "run" "set" "--option" "cache" "list" "control" "prev" "patch" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "import" "--preserve" "size" "next" "branch" "select" "next" "size" "test" "flatpak" "Config" "screencap" "emoji" "--record-snip" "prev" "2" "--revert" "set" "select" "Package" "control")

    local -A descriptions
    descriptions[1]=" Revert to a previous backup run by 'Hyde backup all'. "
    descriptions[2]=" Removes Chaotic Aur"
    descriptions[3]=" Toggle to use wallpaper accent themes"
    descriptions[4]="	list and copy selected"
    descriptions[5]=" Default tranparency"
    descriptions[6]="  Show the JSON format"
    descriptions[7]=" set the code theme"
    descriptions[8]=" [*] Save power by disabling features"
    descriptions[9]=" [*] Unset specific changes"
    descriptions[10]=" wallbash light mode"
    descriptions[11]="  Stop every instance of Screencap"
    descriptions[12]=" Disable animations"
    descriptions[13]=" Backing up commands"
    descriptions[14]=" Restores dots from previous backup"
    descriptions[15]=" List the backup"
    descriptions[16]=" Cursor setting"
    descriptions[17]="  Frozen screen, drag to manually snip an area"
    descriptions[18]="  Show the pretty format"
    descriptions[19]="    run without custom '.lst' bookmark files"
    descriptions[20]=" Only restores dots from default '/Configs'"
    descriptions[21]=" Setup Chaotic Aur, append [fresh] to run in fresh install mode"
    descriptions[22]="  Use 'tesseract' to scan image then add to clipboard"
    descriptions[23]="  Record focused monitor"
    descriptions[24]=" Theme commands"
    descriptions[25]=" [*] Bookmark selector"
    descriptions[26]=" wallbash disabled"
    descriptions[27]="	Reset cache"
    descriptions[28]=" Toggle ﯦ  Set/unset current changes'"
    descriptions[29]=" [*] Pastebin manager "
    descriptions[30]=" Unset a theme set by 'set' command"
    descriptions[31]=" wallbash auto"
    descriptions[32]=" System information"
    descriptions[33]=" Change all the pre-set sizes"
    descriptions[34]=" Set cursor theme"
    descriptions[35]="	list and delete selected"
    descriptions[36]=" Upgrades dots from the repository"
    descriptions[37]=" Cycles wallbash [0] off [1] auto [2] dark [3] light"
    descriptions[38]=" Waybar commands"
    descriptions[39]=" Just reload"
    descriptions[40]=" Pull updates from Hyde repository"
    descriptions[41]=" Backs up the current configuration"
    descriptions[42]=" Glyph selector"
    descriptions[43]="	wipe database"
    descriptions[44]="  Print focused monitor"
    descriptions[45]=" Toggle game mode"
    descriptions[46]=" Shell commands"
    descriptions[47]=" [*] Hyde Config File & Directory status"
    descriptions[48]=" Check active cursor status (only gsettings)"
    descriptions[49]="   use style [ 1 | 2 ]"
    descriptions[50]=" Set /Path/to/Wallpaper"
    descriptions[51]=" Reloads waybar"
    descriptions[52]=" Reset changes"
    descriptions[53]=" Disable all fancy things to save more power"
    descriptions[54]=" Default animations"
    descriptions[55]=" Code editor related commands"
    descriptions[56]=" [*] Web Search"
    descriptions[57]=" Hyde-cli version"
    descriptions[58]=" Search engine to use"
    descriptions[59]=" Theme selector"
    descriptions[60]=" Disable blur"
    descriptions[61]=" Disables the power saving mode"
    descriptions[62]=" [*] Use variety package to manage wallpapers"
    descriptions[63]=" Clear some storage by deleting old backups"
    descriptions[64]=" [*] Calculator (libqalculate)"
    descriptions[65]=" Toogle airplane mode"
    descriptions[66]=" Reload cursors"
    descriptions[67]="   Set Browser can also set 'BROWSER' env"
    descriptions[68]="  Drag to manually snip an area"
    descriptions[69]=" reset hyde profile"
    descriptions[70]=" Reload wallpaper cache"
    descriptions[71]="	set rofi configuration"
    descriptions[72]=" Restores dots from a clone repository "
    descriptions[73]=" Disable all to save more power"
    descriptions[74]=" Information about Hyde and its components"
    descriptions[75]=" Remove power saving mode"
    descriptions[77]="   Diff mismatched dotfiles"
    descriptions[78]=" Previous wallpaper"
    descriptions[79]=" Disable border angle animation"
    descriptions[80]=" Wallpaper commands"
    descriptions[81]=" Default border angle animation"
    descriptions[82]=" Useful GUI util"
    descriptions[83]="  Add custom .conf file"
    descriptions[84]=" User/Device specific scripts that might be useful"
    descriptions[85]=" Power Options"
    descriptions[86]="	Saves bookmark file list to ~/.cache.So no re-caching after reboot"
    descriptions[87]=" [*] Show keybind hints"
    descriptions[88]=" Force rebuild cache"
    descriptions[89]=" Use rofi to select screenshot options "
    descriptions[90]=" Show Manual"
    descriptions[91]=" Fixes issues for asus devices"
    descriptions[92]=" Watches hyprland events and executes actions"
    descriptions[93]=" Overwrite current dots from the preferred user dir "
    descriptions[94]="   force rebuild cached bookmark paths"
    descriptions[95]=" set rofi configuration"
    descriptions[96]=" Default blur"
    descriptions[97]=" Restore dots"
    descriptions[98]=" Install and set sddm theme from HyDE clone Repo"
    descriptions[99]="  Add custom delimiter symbol (default '>')"
    descriptions[100]=" Check sddm theme status"
    descriptions[101]=" Browser to use"
    descriptions[102]=" Sddm commands"
    descriptions[103]=" Executable utilities"
    descriptions[104]=" Set Sddm theme from the list"
    descriptions[105]="	options"
    descriptions[106]=" Manages Hyde's cache"
    descriptions[107]=" List all local sddm themes"
    descriptions[108]=" Interactive control file"
    descriptions[109]=" Previous theme"
    descriptions[111]=" [*] Add chaotic aur to you mirror"
    descriptions[112]="   Pipes STDOUT to less"
    descriptions[113]=" [*] Set wallbash mode. [0] [1] [2] [3] "
    descriptions[114]=" Disable tranparency"
    descriptions[115]="  Reinitialize screencap"
    descriptions[116]=" Links a clone directory. Useful if you want to change your CloneDir"
    descriptions[117]=" Inhibits idle when player status: 'Playing"
    descriptions[118]="  Print all outputs"
    descriptions[119]=" Next theme"
    descriptions[120]="  Display this help message"
    descriptions[121]=" Import a theme from different repository."
    descriptions[122]="   Diff preserved dotfiles"
    descriptions[123]=" Set cursor size"
    descriptions[124]=" Next wallppaer"
    descriptions[125]=" Set preavailable Hyde branch"
    descriptions[126]=" Wallpaper selector"
    descriptions[127]=" Next waybar layout"
    descriptions[128]=" [*] Set waybar size"
    descriptions[129]=" Test a theme"
    descriptions[130]=" Flatpak setup for HyDE"
    descriptions[131]=" Manage users restore control list"
    descriptions[132]=" [*] Screenshot and screenrecord tool"
    descriptions[133]=" [*] Emoji selector"
    descriptions[134]="  Drag to manually snip an area to screen record it"
    descriptions[135]=" Previous waybar layout"
    descriptions[136]=" wallbash dark mode"
    descriptions[137]=" Converts chaotic aur packages to AUR"
    descriptions[138]=" Set theme"
    descriptions[139]=" Shell selector"
    descriptions[140]=" Hyde core Package status"
    descriptions[141]=" Edit waybar control file"

    local -A literal_transitions
    literal_transitions[1]="([85]=7 [74]=3 [40]=4 [57]=5 [3]=6 [36]=26 [24]=8 [102]=10 [103]=11 [125]=13 [106]=12 [38]=27 [46]=14 [108]=15 [90]=16 [32]=17 [13]=18 [80]=19 [16]=20 [82]=21 [84]=22 [93]=23 [55]=25 [97]=9 [39]=2)"
    literal_transitions[3]="([140]=28 [47]=35)"
    literal_transitions[6]="([37]=28 [113]=30)"
    literal_transitions[7]="([28]=28 [45]=28 [8]=41 [52]=28 [9]=34)"
    literal_transitions[8]="([59]=28 [119]=28 [138]=28 [121]=28 [110]=28 [109]=28)"
    literal_transitions[9]="([116]=28 [20]=28 [14]=28 [72]=28)"
    literal_transitions[10]="([104]=28 [30]=28 [100]=28 [107]=28 [129]=28 [98]=28)"
    literal_transitions[11]="([65]=28 [117]=28 [92]=28 [132]=43)"
    literal_transitions[12]="([88]=28 [70]=28)"
    literal_transitions[14]="([139]=28)"
    literal_transitions[15]="([131]=28)"
    literal_transitions[18]="([15]=28 [41]=28 [63]=28 [1]=28)"
    literal_transitions[19]="([62]=44 [126]=28 [50]=28 [124]=28 [78]=28)"
    literal_transitions[20]="([66]=28 [48]=28 [123]=28 [34]=28)"
    literal_transitions[21]="([133]=36 [64]=37 [42]=28 [87]=31 [25]=38 [89]=28 [56]=39 [29]=40)"
    literal_transitions[22]="([91]=28 [130]=28 [111]=33)"
    literal_transitions[25]="([7]=28)"
    literal_transitions[27]="([128]=45 [135]=28 [51]=28 [127]=28 [141]=28)"
    literal_transitions[30]="([26]=28 [31]=28 [136]=28 [10]=28)"
    literal_transitions[31]="([6]=28 [120]=28 [18]=28 [83]=29 [99]=28)"
    literal_transitions[33]="([2]=28 [21]=28 [137]=28)"
    literal_transitions[34]="([5]=28 [54]=28 [81]=28 [96]=28 [75]=28)"
    literal_transitions[35]="([122]=28 [112]=28 [77]=28)"
    literal_transitions[36]="([49]=28 [71]=29)"
    literal_transitions[37]="([27]=28 [95]=29)"
    literal_transitions[38]="([94]=28 [19]=28 [86]=28 [71]=29 [67]=32)"
    literal_transitions[39]="([58]=28 [101]=28 [95]=29 [27]=28)"
    literal_transitions[40]="([105]=28 [35]=28 [43]=28 [4]=28)"
    literal_transitions[41]="([53]=28 [12]=28 [60]=28 [61]=28 [79]=28 [114]=28 [73]=28)"
    literal_transitions[42]="([76]=28)"
    literal_transitions[43]="([11]=28 [134]=28 [23]=28 [44]=28 [17]=28 [115]=28 [68]=28 [118]=28 [22]=28)"
    literal_transitions[44]="([69]=28)"
    literal_transitions[45]="([33]=28)"

    local -A match_anything_transitions
    match_anything_transitions=([26]=28 [2]=28 [4]=28 [29]=28 [17]=28 [13]=28 [32]=28 [1]=24 [16]=28 [5]=28 [23]=28 [24]=42)

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

    local -A specialized_commands=([29]=0)
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
