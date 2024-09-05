_Hyde_spec_0 () {
    _path_files
}

_Hyde () {
    local -a literals=("revert" "--uninstall" "wallbash" "--opacity" "-j" "theme" "save" "unset" "3" "--copy" "--animations" "--stop" "backup" "BackUp" "list" "cursor" "--deps" "-p" "--no-custom" "Config" "--freeze" "--install" "--scan" "--record-focus" "theme" "bookmarks" "0" "--reset" "toggle" "pastebin" "unset" "1" "systeminfo" "--all" "theme" "--delete" "upgrade" "toggle" "waybar" "reload" "update" "all" "--wipe" "--print-monitor" "game" "shell" "Config" "info" "--style" "reload" "code" "reset" "on" "--animations" "search" "--site" "version" "select" "--blur" "off" "variety" "clean" "calc" "airplane_mode" "reload" "--browser" "--print-snip" "--reset" "reload" "--rasi" "Clone" "--all" "check" "--all" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "show" "-f" "inject" "power" "--persist" "binds" "rebuild" "screencap" "man" "asus_patch" "events" "override" "--rebuild" "--rasi" "--blur" "restore" "install" "-d" "info" "--browser" "sddm" "run" "set" "--option" "cache" "list" "control" "prev" "patch" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "set" "--preserve" "size" "next" "branch" "select" "next" "size" "test" "flatpak" "import" "Config" "screencap" "emoji" "--record-snip" "prev" "2" "--revert" "set" "select" "Package" "glyph" "control")

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
    descriptions[23]="  Use 'tesseract' to scan image then add to clipboard"
    descriptions[24]="  Record focused monitor"
    descriptions[25]=" Theme commands"
    descriptions[26]=" [*] Bookmark selector"
    descriptions[27]=" wallbash disabled"
    descriptions[28]="	Reset cache"
    descriptions[29]=" Toggle ﯦ  Set/unset current changes'"
    descriptions[30]=" [*] Pastebin manager "
    descriptions[31]=" Unset a theme set by 'set' command"
    descriptions[32]=" wallbash auto"
    descriptions[33]=" System information"
    descriptions[34]=" Change all the pre-set sizes"
    descriptions[35]=" Set cursor theme"
    descriptions[36]="	list and delete selected"
    descriptions[37]=" Upgrades dots from the repository"
    descriptions[38]=" Cycles wallbash [0] off [1] auto [2] dark [3] light"
    descriptions[39]=" Waybar commands"
    descriptions[40]=" Just reload"
    descriptions[41]=" Pull updates from Hyde repository"
    descriptions[42]=" Backs up the current configuration"
    descriptions[43]="	wipe database"
    descriptions[44]="  Print focused monitor"
    descriptions[45]=" Toggle game mode"
    descriptions[46]=" Shell commands"
    descriptions[47]=" [*] Hyde Config File & Directory status"
    descriptions[48]=" Check active cursor status (only gsettings)"
    descriptions[49]="   use style [ 1 | 2 ]"
    descriptions[50]=" Reloads waybar"
    descriptions[51]=" Code editor related commands"
    descriptions[52]=" Reset changes"
    descriptions[53]=" Disable all fancy things to save more power"
    descriptions[54]=" Default animations"
    descriptions[55]=" [*] Web Search"
    descriptions[56]=" Search engine to use"
    descriptions[57]=" Hyde-cli version"
    descriptions[58]=" Theme selector"
    descriptions[59]=" Disable blur"
    descriptions[60]=" Disables the power saving mode"
    descriptions[61]=" [*] Use variety package to manage wallpapers"
    descriptions[62]=" Clear some storage by deleting old backups"
    descriptions[63]=" [*] Calculator (libqalculate)"
    descriptions[64]=" Toogle airplane mode"
    descriptions[65]=" Reload cursors"
    descriptions[66]="   Set Browser can also set 'BROWSER' env"
    descriptions[67]="  Drag to manually snip an area"
    descriptions[68]=" reset hyde profile"
    descriptions[69]=" Reload wallpaper cache"
    descriptions[70]="	set rofi configuration"
    descriptions[71]=" Restores dots from a clone repository "
    descriptions[72]=" Disable all to save more power"
    descriptions[73]=" Information about Hyde and its components"
    descriptions[74]=" Remove power saving mode"
    descriptions[76]="   Diff mismatched dotfiles"
    descriptions[77]=" Previous wallpaper"
    descriptions[78]=" Disable border angle animation"
    descriptions[79]=" Wallpaper commands"
    descriptions[80]=" Default border angle animation"
    descriptions[81]=" Useful GUI util"
    descriptions[82]="  Add custom .conf file"
    descriptions[83]=" User/Device specific scripts that might be useful"
    descriptions[84]=" Power Options"
    descriptions[85]="	Saves bookmark file list to ~/.cache.So no re-caching after reboot"
    descriptions[86]=" [*] Show keybind hints"
    descriptions[87]=" Force rebuild cache"
    descriptions[88]=" Use rofi to select screenshot options "
    descriptions[89]=" Show Manual"
    descriptions[90]=" Fixes issues for asus devices"
    descriptions[91]=" Watches hyprland events and executes actions"
    descriptions[92]=" Overwrite current dots from the preferred user dir "
    descriptions[93]="   force rebuild cached bookmark paths"
    descriptions[94]=" set rofi configuration"
    descriptions[95]=" Default blur"
    descriptions[96]=" Restore dots"
    descriptions[97]=" Install and set sddm theme from HyDE clone Repo"
    descriptions[98]="  Add custom delimiter symbol (default '>')"
    descriptions[99]=" Check sddm theme status"
    descriptions[100]=" Browser to use"
    descriptions[101]=" Sddm commands"
    descriptions[102]=" Executable utilities"
    descriptions[103]=" Set Sddm theme from the list"
    descriptions[104]="	options"
    descriptions[105]=" Manages Hyde's cache"
    descriptions[106]=" List all local sddm themes"
    descriptions[107]=" Interactive control file"
    descriptions[108]=" Previous theme"
    descriptions[110]=" [*] Add chaotic aur to you mirror"
    descriptions[111]="   Pipes STDOUT to less"
    descriptions[112]=" [*] Set wallbash mode. [0] [1] [2] [3] "
    descriptions[113]=" Disable tranparency"
    descriptions[114]="  Reinitialize screencap"
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
    descriptions[133]=" [*] Emoji selector"
    descriptions[134]="  Drag to manually snip an area to screen record it"
    descriptions[135]=" Previous waybar layout"
    descriptions[136]=" wallbash dark mode"
    descriptions[137]=" Converts chaotic aur packages to AUR"
    descriptions[138]=" Set theme"
    descriptions[139]=" Shell selector"
    descriptions[140]=" Hyde core Package status"
    descriptions[141]=" [*] Glyph selector"
    descriptions[142]=" Edit waybar control file"

    local -A literal_transitions
    literal_transitions[1]="([84]=7 [73]=3 [41]=4 [57]=5 [3]=6 [37]=26 [25]=8 [101]=10 [102]=11 [124]=13 [105]=12 [39]=27 [46]=14 [107]=15 [89]=16 [33]=17 [13]=18 [79]=19 [16]=20 [81]=21 [83]=22 [92]=23 [51]=25 [96]=9 [40]=2)"
    literal_transitions[3]="([140]=29 [47]=28)"
    literal_transitions[6]="([38]=29 [112]=43)"
    literal_transitions[7]="([29]=29 [45]=29 [7]=45 [52]=29 [8]=36)"
    literal_transitions[8]="([58]=29 [118]=29 [138]=29 [109]=29 [130]=32 [108]=29)"
    literal_transitions[9]="([115]=29 [20]=29 [14]=29 [71]=29)"
    literal_transitions[10]="([103]=29 [31]=29 [99]=29 [106]=29 [128]=29 [97]=29)"
    literal_transitions[11]="([64]=29 [116]=29 [91]=29 [132]=35)"
    literal_transitions[12]="([87]=29 [69]=29)"
    literal_transitions[14]="([139]=29)"
    literal_transitions[15]="([131]=29)"
    literal_transitions[18]="([15]=29 [42]=29 [62]=29 [1]=29)"
    literal_transitions[19]="([61]=44 [120]=32 [123]=29 [125]=29 [77]=29)"
    literal_transitions[20]="([65]=29 [48]=29 [122]=29 [35]=29)"
    literal_transitions[21]="([133]=37 [63]=38 [86]=31 [26]=39 [88]=29 [55]=40 [141]=33 [30]=41)"
    literal_transitions[22]="([90]=29 [129]=29 [110]=42)"
    literal_transitions[25]="([6]=29)"
    literal_transitions[27]="([127]=46 [135]=29 [50]=29 [126]=29 [142]=29)"
    literal_transitions[28]="([121]=29 [111]=29 [76]=29)"
    literal_transitions[30]="([75]=29)"
    literal_transitions[31]="([5]=29 [119]=29 [18]=29 [82]=32 [98]=29)"
    literal_transitions[33]="([17]=29)"
    literal_transitions[35]="([12]=29 [134]=29 [24]=29 [44]=29 [21]=29 [114]=29 [67]=29 [117]=29 [23]=29)"
    literal_transitions[36]="([4]=29 [54]=29 [80]=29 [95]=29 [74]=29)"
    literal_transitions[37]="([17]=29 [70]=32 [49]=29)"
    literal_transitions[38]="([17]=29 [28]=29 [94]=32)"
    literal_transitions[39]="([66]=34 [93]=29 [19]=29 [85]=29 [70]=32 [17]=29)"
    literal_transitions[40]="([56]=29 [100]=29 [94]=32 [28]=29)"
    literal_transitions[41]="([104]=29 [36]=29 [43]=29 [10]=29 [17]=29)"
    literal_transitions[42]="([2]=29 [22]=29 [137]=29)"
    literal_transitions[43]="([27]=29 [32]=29 [136]=29 [9]=29)"
    literal_transitions[44]="([68]=29)"
    literal_transitions[45]="([53]=29 [11]=29 [59]=29 [60]=29 [78]=29 [113]=29 [72]=29)"
    literal_transitions[46]="([34]=29)"

    local -A match_anything_transitions
    match_anything_transitions=([24]=30 [26]=29 [2]=29 [4]=29 [13]=29 [17]=29 [32]=29 [1]=24 [34]=29 [16]=29 [5]=29 [23]=29)

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

    local -A specialized_commands=([32]=0)
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
