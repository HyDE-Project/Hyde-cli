_Hyde_spec_0 () {
    _path_files
}

_Hyde () {
    local -a literals=("revert" "--uninstall" "wallbash" "--copy" "--opacity" "-j" "theme" "save" "unset" "3" "--stop" "--animations" "backup" "BackUp" "list" "cursor" "--freeze" "-p" "--no-custom" "Config" "--install" "--scan" "--record-focus" "theme" "bookmarks" "0" "--reset" "toggle" "pastebin" "1" "systeminfo" "--all" "theme" "--delete" "upgrade" "toggle" "waybar" "reload" "update" "all" "glyph" "--wipe" "--print-monitor" "game" "shell" "Config" "info" "--style" "set" "reload" "reset" "code" "--animations" "search" "--site" "version" "select" "--blur" "variety" "theme" "clean" "calc" "airplane_mode" "reload" "--browser" "--print-snip" "--reset" "reload" "--rasi" "Clone" "check" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "show" "-f" "inject" "power" "--persist" "binds" "rebuild" "screencap" "man" "asus_patch" "events" "override" "--rebuild" "--rasi" "--blur" "restore" "-d" "--browser" "sddm" "run" "--option" "cache" "control" "prev" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "next" "size" "flatpak" "Config" "screencap" "emoji" "--record-snip" "prev" "2" "--revert" "set" "patch" "select" "Package" "control")

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
    descriptions[52]=" Code editor related commands"
    descriptions[53]=" Default animations"
    descriptions[54]=" [*] Web Search"
    descriptions[55]=" Search engine to use"
    descriptions[56]=" Hyde-cli version"
    descriptions[57]=" Theme selector"
    descriptions[58]=" Disable blur"
    descriptions[59]=" [*] Use variety package to manage wallpapers"
    descriptions[60]=" Select sddm theme"
    descriptions[61]=" Clear some storage by deleting old backups"
    descriptions[62]=" [*] Calculator (libqalculate)"
    descriptions[63]=" Toogle airplane mode"
    descriptions[64]=" Reload cursors"
    descriptions[65]="   Set Browser can also set 'BROWSER' env"
    descriptions[66]="  Drag to manually snip an area"
    descriptions[67]=" reset hyde profile"
    descriptions[68]=" Reload wallpaper cache"
    descriptions[69]="	set rofi configuration"
    descriptions[70]=" Restores dots from a clone repository "
    descriptions[71]=" Information about Hyde and its components"
    descriptions[73]="   Diff mismatched dotfiles"
    descriptions[74]=" Previous wallpaper"
    descriptions[75]=" Disable border angle animation"
    descriptions[76]=" Wallpaper commands"
    descriptions[77]=" Default border angle animation"
    descriptions[78]=" Useful GUI util"
    descriptions[79]="  Add custom .conf file"
    descriptions[80]=" User/Device specific scripts that might be useful"
    descriptions[81]=" Power Options"
    descriptions[82]="	Saves bookmark file list to ~/.cache.So no re-caching after reboot"
    descriptions[83]=" [*] Show keybind hints"
    descriptions[84]=" Force rebuild cache"
    descriptions[85]=" Use rofi to select screenshot options "
    descriptions[86]=" Show Manual"
    descriptions[87]=" Fixes issues for asus devices"
    descriptions[88]=" Watches hyprland events and executes actions"
    descriptions[89]=" Overwrite current dots from the preferred user dir "
    descriptions[90]="   force rebuild cached bookmark paths"
    descriptions[91]=" set rofi configuration"
    descriptions[92]=" Default blur"
    descriptions[93]=" Restore dots"
    descriptions[94]="  Add custom delimiter symbol (default '>')"
    descriptions[95]=" Browser to use"
    descriptions[96]=" Sddm commands"
    descriptions[97]=" Executable utilities"
    descriptions[98]="	options"
    descriptions[99]=" Manages Hyde's cache"
    descriptions[100]=" Interactive control file"
    descriptions[101]=" Previous theme"
    descriptions[102]=" [*] Add chaotic aur to you mirror"
    descriptions[103]="   Pipes STDOUT to less"
    descriptions[104]=" [*] Set wallbash mode. [0] [1] [2] [3] "
    descriptions[105]=" Disable tranparency"
    descriptions[106]="  Reinitialize screencap"
    descriptions[107]=" Links a clone directory. Useful if you want to change your CloneDir"
    descriptions[108]=" Inhibits idle when player status: 'Playing"
    descriptions[109]="  Print all outputs"
    descriptions[110]=" Next theme"
    descriptions[111]="  Display this help message"
    descriptions[112]=" Wallpaper selector"
    descriptions[113]="   Diff preserved dotfiles"
    descriptions[114]=" Set cursor size"
    descriptions[115]=" Next wallppaer"
    descriptions[116]=" Set preavailable Hyde branch"
    descriptions[117]=" Next waybar layout"
    descriptions[118]=" [*] Set waybar size"
    descriptions[119]=" Flatpak setup for HyDE"
    descriptions[120]=" Manage users restore control list"
    descriptions[121]=" [*] Screenshot and screenrecord tool"
    descriptions[122]=" [*] Emoji selector"
    descriptions[123]="  Drag to manually snip an area to screen record it"
    descriptions[124]=" Previous waybar layout"
    descriptions[125]=" wallbash dark mode"
    descriptions[126]=" Converts chaotic aur packages to AUR"
    descriptions[127]=" Set theme"
    descriptions[128]=" Patch a theme from different repository."
    descriptions[129]=" Shell selector"
    descriptions[130]=" Hyde core Package status"
    descriptions[131]=" Edit waybar control file"

    local -A literal_transitions
    literal_transitions[1]="([81]=7 [71]=3 [39]=4 [56]=5 [3]=6 [35]=26 [24]=8 [96]=10 [97]=11 [116]=13 [99]=12 [37]=27 [45]=14 [100]=15 [86]=16 [31]=17 [13]=18 [76]=19 [16]=20 [78]=21 [80]=22 [89]=23 [52]=25 [93]=9 [38]=2)"
    literal_transitions[3]="([130]=29 [46]=31)"
    literal_transitions[6]="([36]=29 [104]=32)"
    literal_transitions[7]="([28]=29 [44]=29 [8]=34 [51]=29 [9]=43)"
    literal_transitions[8]="([57]=29 [110]=29 [128]=29 [101]=29 [127]=29)"
    literal_transitions[9]="([107]=29 [20]=29 [14]=29 [70]=29)"
    literal_transitions[10]="([60]=29)"
    literal_transitions[11]="([63]=29 [108]=29 [88]=29 [121]=42)"
    literal_transitions[12]="([84]=29 [68]=29)"
    literal_transitions[14]="([129]=29)"
    literal_transitions[15]="([120]=29)"
    literal_transitions[18]="([15]=29 [40]=29 [61]=29 [1]=29)"
    literal_transitions[19]="([59]=44 [112]=29 [49]=29 [115]=29 [74]=29)"
    literal_transitions[20]="([64]=29 [47]=29 [114]=29 [33]=29)"
    literal_transitions[21]="([122]=28 [62]=33 [41]=29 [83]=37 [25]=38 [85]=29 [54]=39 [29]=40)"
    literal_transitions[22]="([87]=29 [119]=29 [102]=41)"
    literal_transitions[25]="([7]=29)"
    literal_transitions[27]="([118]=45 [124]=29 [50]=29 [117]=29 [131]=29)"
    literal_transitions[28]="([48]=29 [69]=30)"
    literal_transitions[31]="([113]=29 [103]=29 [73]=29)"
    literal_transitions[32]="([26]=29 [30]=29 [125]=29 [10]=29)"
    literal_transitions[33]="([27]=29 [91]=30)"
    literal_transitions[34]="([12]=29 [58]=29 [75]=29 [105]=29)"
    literal_transitions[35]="([72]=29)"
    literal_transitions[37]="([6]=29 [111]=29 [18]=29 [79]=30 [94]=29)"
    literal_transitions[38]="([90]=29 [19]=29 [82]=29 [69]=30 [65]=36)"
    literal_transitions[39]="([55]=29 [95]=29 [91]=30 [27]=29)"
    literal_transitions[40]="([98]=29 [34]=29 [42]=29 [4]=29)"
    literal_transitions[41]="([2]=29 [21]=29 [126]=29)"
    literal_transitions[42]="([11]=29 [123]=29 [23]=29 [43]=29 [17]=29 [106]=29 [66]=29 [109]=29 [22]=29)"
    literal_transitions[43]="([5]=29 [53]=29 [77]=29 [92]=29)"
    literal_transitions[44]="([67]=29)"
    literal_transitions[45]="([32]=29)"

    local -A match_anything_transitions
    match_anything_transitions=([24]=35 [30]=29 [2]=29 [4]=29 [13]=29 [17]=29 [1]=24 [16]=29 [36]=29 [5]=29 [23]=29 [26]=29)

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

    local -A specialized_commands=([30]=0)
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
