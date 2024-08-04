_Hyde_spec_0 () {
    _path_files
}

_Hyde () {
    local -a literals=("revert" "--uninstall" "wallbash" "--copy" "--opacity" "-j" "theme" "save" "unset" "3" "--stop" "--animations" "backup" "BackUp" "list" "cursor" "--freeze" "-p" "--no-custom" "Config" "--install" "--scan" "--record-focus" "theme" "bookmarks" "0" "--reset" "toggle" "pastebin" "1" "systeminfo" "--all" "theme" "--delete" "upgrade" "toggle" "waybar" "reload" "update" "all" "glyph" "--wipe" "--print-monitor" "game" "shell" "Config" "info" "--style" "set" "reload" "reset" "on" "--animations" "code" "search" "version" "--site" "select" "--blur" "off" "variety" "clean" "calc" "airplane_mode" "reload" "--browser" "--print-snip" "--reset" "reload" "--rasi" "Clone" "--all" "check" "--all" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "show" "-f" "inject" "power" "--persist" "binds" "rebuild" "screencap" "man" "asus_patch" "events" "override" "--rebuild" "--rasi" "--blur" "restore" "install" "-d" "--browser" "sddm" "run" "set" "--option" "cache" "list" "control" "prev" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "next" "size" "flatpak" "Config" "screencap" "emoji" "--record-snip" "prev" "2" "--revert" "set" "patch" "select" "Package" "control")

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
    descriptions[30]=" wallbash auto"
    descriptions[31]=" System information"
    descriptions[32]=" Change all the pre-set sizes"
    descriptions[33]=" Set cursor theme"
    descriptions[34]="	list and delete selected"
    descriptions[35]=" Upgrades dots from the repository"
    descriptions[36]=" Cycles wallbash [0] off [1] auto [2] dark [3] light"
    descriptions[37]=" Waybar commands"
    descriptions[38]=" Just reload"
    descriptions[39]=" Pull updates from Hyde repository"
    descriptions[40]=" Backs up the current configuration"
    descriptions[41]=" Glyph selector"
    descriptions[42]="	wipe database"
    descriptions[43]="  Print focused monitor"
    descriptions[44]=" Toggle game mode"
    descriptions[45]=" Shell commands"
    descriptions[46]=" [*] Hyde Config File & Directory status"
    descriptions[47]=" Check active cursor status (only gsettings)"
    descriptions[48]="   use style [ 1 | 2 ]"
    descriptions[49]=" Set /Path/to/Wallpaper"
    descriptions[50]=" Reloads waybar"
    descriptions[51]=" Reset changes"
    descriptions[52]=" Disable all fancy things to save more power"
    descriptions[53]=" Default animations"
    descriptions[54]=" Code editor related commands"
    descriptions[55]=" [*] Web Search"
    descriptions[56]=" Hyde-cli version"
    descriptions[57]=" Search engine to use"
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
    descriptions[99]=" Browser to use"
    descriptions[100]=" Sddm commands"
    descriptions[101]=" Executable utilities"
    descriptions[102]=" Set Sddm theme from the list"
    descriptions[103]="	options"
    descriptions[104]=" Manages Hyde's cache"
    descriptions[105]=" List all local sddm themes"
    descriptions[106]=" Interactive control file"
    descriptions[107]=" Previous theme"
    descriptions[108]=" [*] Add chaotic aur to you mirror"
    descriptions[109]="   Pipes STDOUT to less"
    descriptions[110]=" [*] Set wallbash mode. [0] [1] [2] [3] "
    descriptions[111]=" Disable tranparency"
    descriptions[112]="  Reinitialize screencap"
    descriptions[113]=" Links a clone directory. Useful if you want to change your CloneDir"
    descriptions[114]=" Inhibits idle when player status: 'Playing"
    descriptions[115]="  Print all outputs"
    descriptions[116]=" Next theme"
    descriptions[117]="  Display this help message"
    descriptions[118]=" Wallpaper selector"
    descriptions[119]="   Diff preserved dotfiles"
    descriptions[120]=" Set cursor size"
    descriptions[121]=" Next wallppaer"
    descriptions[122]=" Set preavailable Hyde branch"
    descriptions[123]=" Next waybar layout"
    descriptions[124]=" [*] Set waybar size"
    descriptions[125]=" Flatpak setup for HyDE"
    descriptions[126]=" Manage users restore control list"
    descriptions[127]=" [*] Screenshot and screenrecord tool"
    descriptions[128]=" [*] Emoji selector"
    descriptions[129]="  Drag to manually snip an area to screen record it"
    descriptions[130]=" Previous waybar layout"
    descriptions[131]=" wallbash dark mode"
    descriptions[132]=" Converts chaotic aur packages to AUR"
    descriptions[133]=" Set theme"
    descriptions[134]=" Patch a theme from different repository."
    descriptions[135]=" Shell selector"
    descriptions[136]=" Hyde core Package status"
    descriptions[137]=" Edit waybar control file"

    local -A literal_transitions
    literal_transitions[1]="([84]=7 [73]=3 [39]=4 [56]=5 [3]=6 [35]=26 [24]=8 [100]=10 [101]=11 [122]=13 [104]=12 [37]=27 [45]=14 [106]=15 [89]=16 [31]=17 [13]=18 [79]=19 [16]=20 [81]=21 [83]=22 [92]=23 [54]=25 [96]=9 [38]=2)"
    literal_transitions[3]="([136]=28 [46]=29)"
    literal_transitions[6]="([36]=28 [110]=37)"
    literal_transitions[7]="([28]=28 [44]=28 [8]=41 [51]=28 [9]=42)"
    literal_transitions[8]="([58]=28 [116]=28 [134]=28 [107]=28 [133]=28)"
    literal_transitions[9]="([113]=28 [20]=28 [14]=28 [71]=28)"
    literal_transitions[10]="([102]=28 [97]=28 [105]=28)"
    literal_transitions[11]="([64]=28 [114]=28 [91]=28 [127]=35)"
    literal_transitions[12]="([87]=28 [69]=28)"
    literal_transitions[14]="([135]=28)"
    literal_transitions[15]="([126]=28)"
    literal_transitions[18]="([15]=28 [40]=28 [62]=28 [1]=28)"
    literal_transitions[19]="([61]=45 [118]=28 [49]=28 [121]=28 [77]=28)"
    literal_transitions[20]="([65]=28 [47]=28 [120]=28 [33]=28)"
    literal_transitions[21]="([128]=34 [63]=30 [41]=28 [86]=33 [25]=38 [88]=28 [55]=39 [29]=32)"
    literal_transitions[22]="([90]=28 [125]=28 [108]=44)"
    literal_transitions[25]="([7]=28)"
    literal_transitions[27]="([124]=43 [130]=28 [50]=28 [123]=28 [137]=28)"
    literal_transitions[29]="([119]=28 [109]=28 [76]=28)"
    literal_transitions[30]="([27]=28 [94]=31)"
    literal_transitions[32]="([103]=28 [34]=28 [42]=28 [4]=28)"
    literal_transitions[33]="([6]=28 [117]=28 [18]=28 [82]=31 [98]=28)"
    literal_transitions[34]="([48]=28 [70]=31)"
    literal_transitions[35]="([11]=28 [129]=28 [23]=28 [43]=28 [17]=28 [112]=28 [67]=28 [115]=28 [22]=28)"
    literal_transitions[36]="([75]=28)"
    literal_transitions[37]="([26]=28 [30]=28 [131]=28 [10]=28)"
    literal_transitions[38]="([93]=28 [19]=28 [85]=28 [70]=31 [66]=40)"
    literal_transitions[39]="([57]=28 [99]=28 [94]=31 [27]=28)"
    literal_transitions[41]="([52]=28 [12]=28 [59]=28 [60]=28 [78]=28 [111]=28 [72]=28)"
    literal_transitions[42]="([5]=28 [53]=28 [80]=28 [95]=28 [74]=28)"
    literal_transitions[43]="([32]=28)"
    literal_transitions[44]="([2]=28 [21]=28 [132]=28)"
    literal_transitions[45]="([68]=28)"

    local -A match_anything_transitions
    match_anything_transitions=([2]=28 [40]=28 [4]=28 [31]=28 [13]=28 [17]=28 [1]=24 [16]=28 [5]=28 [23]=28 [26]=28 [24]=36)

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
