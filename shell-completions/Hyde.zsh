_Hyde_spec_0 () {
    _path_files
}

_Hyde () {
    local -a literals=("revert" "--uninstall" "wallbash" "--copy" "--opacity" "-j" "save" "unset" "3" "--stop" "--animations" "backup" "BackUp" "list" "cursor" "-p" "--no-custom" "Config" "--install" "--scan" "--record-focus" "theme" "bookmarks" "0" "-freeze" "--reset" "toggle" "pastebin" "1" "systeminfo" "--all" "theme" "--delete" "upgrade" "toggle" "waybar" "reload" "update" "all" "glyph" "--wipe" "--print-monitor" "game" "shell" "Config" "info" "search" "set" "reload" "reset" "--style" "--animations" "--site" "version" "select" "--blur" "variety" "theme" "clean" "airplane_mode" "-f" "reload" "--browser" "--print-snip" "--reset" "reload" "--rasi" "Clone" "check" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "show" "inject" "power" "--persist" "binds" "rebuild" "screencap" "man" "asus_patch" "events" "override" "--rebuild" "--rasi" "--blur" "restore" "-d" "--browser" "sddm" "run" "--option" "cache" "control" "prev" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "next" "size" "flatpak" "Config" "screencap" "emoji" "--record-snip" "prev" "2" "--revert" "set" "patch" "select" "Package" "control")

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
    descriptions[79]="	Saves bookmark file list to ~/.cache.So no re-caching after reboot"
    descriptions[80]=" [*] Show keybind hints"
    descriptions[81]=" Force rebuild cache"
    descriptions[82]=" Use rofi to select screenshot options "
    descriptions[83]=" Show Manual"
    descriptions[84]=" Fixes issues for asus devices"
    descriptions[85]=" Watches hyprland events and executes actions"
    descriptions[86]=" Overwrite current dots from the preferred user dir "
    descriptions[87]="   force rebuild cached bookmark paths"
    descriptions[88]=" set rofi configuration"
    descriptions[89]=" Default blur"
    descriptions[90]=" Restore dots"
    descriptions[91]="  Add custom delimiter symbol (default '>')"
    descriptions[92]=" Browser to use"
    descriptions[93]=" Sddm commands"
    descriptions[94]=" Executable utilities"
    descriptions[95]="	options"
    descriptions[96]=" Manages Hyde's cache"
    descriptions[97]=" Interactive control file"
    descriptions[98]=" Previous theme"
    descriptions[99]=" [*] Add chaotic aur to you mirror"
    descriptions[100]="   Pipes STDOUT to less"
    descriptions[101]=" [*] Set wallbash mode. [0] [1] [2] [3] "
    descriptions[102]=" Disable tranparency"
    descriptions[103]="  Reinitialize screencap"
    descriptions[104]=" Links a clone directory. Useful if you want to change your CloneDir"
    descriptions[105]=" Inhibits idle when player status: 'Playing"
    descriptions[106]="  Print all outputs"
    descriptions[107]=" Next theme"
    descriptions[108]="  Display this help message"
    descriptions[109]=" Wallpaper selector"
    descriptions[110]="   Diff preserved dotfiles"
    descriptions[111]=" Set cursor size"
    descriptions[112]=" Next wallppaer"
    descriptions[113]=" Set preavailable Hyde branch"
    descriptions[114]=" Next waybar layout"
    descriptions[115]=" [*] Set waybar size"
    descriptions[116]=" Flatpak setup for HyDE"
    descriptions[117]=" Manage users restore control list"
    descriptions[118]=" [*] Screenshot and screenrecord tool"
    descriptions[119]=" [*] Emoji selector"
    descriptions[120]="  Drag to manually snip an area to screen record it"
    descriptions[121]=" Previous waybar layout"
    descriptions[122]=" wallbash dark mode"
    descriptions[123]=" Converts chaotic aur packages to AUR"
    descriptions[124]=" Set theme"
    descriptions[125]=" Patch a theme from different repository."
    descriptions[126]=" Shell selector"
    descriptions[127]=" Hyde core Package status"
    descriptions[128]=" Edit waybar control file"

    local -A literal_transitions
    literal_transitions[1]="([36]=25 [69]=3 [38]=4 [54]=5 [3]=6 [37]=26 [22]=8 [93]=9 [94]=10 [113]=11 [96]=12 [44]=13 [97]=14 [83]=15 [30]=16 [12]=17 [74]=18 [15]=19 [76]=20 [77]=21 [86]=22 [34]=24 [78]=2 [90]=7)"
    literal_transitions[2]="([27]=28 [43]=28 [7]=27 [50]=28 [8]=34)"
    literal_transitions[3]="([127]=28 [45]=38)"
    literal_transitions[6]="([35]=28 [101]=37)"
    literal_transitions[7]="([104]=28 [18]=28 [13]=28 [68]=28)"
    literal_transitions[8]="([55]=28 [107]=28 [125]=28 [98]=28 [124]=28)"
    literal_transitions[9]="([58]=28)"
    literal_transitions[10]="([60]=28 [105]=28 [85]=28 [118]=32)"
    literal_transitions[12]="([81]=28 [66]=28)"
    literal_transitions[13]="([126]=28)"
    literal_transitions[14]="([117]=28)"
    literal_transitions[17]="([14]=28 [39]=28 [59]=28 [1]=28)"
    literal_transitions[18]="([57]=33 [109]=28 [48]=28 [112]=28 [72]=28)"
    literal_transitions[19]="([62]=28 [46]=28 [111]=28 [32]=28)"
    literal_transitions[20]="([119]=41 [82]=28 [28]=36 [47]=40 [40]=28 [80]=42 [23]=29)"
    literal_transitions[21]="([84]=28 [116]=28 [99]=39)"
    literal_transitions[25]="([115]=35 [121]=28 [49]=28 [114]=28 [128]=28)"
    literal_transitions[27]="([11]=28 [56]=28 [73]=28 [102]=28)"
    literal_transitions[29]="([87]=28 [17]=28 [79]=28 [67]=30 [63]=31)"
    literal_transitions[32]="([10]=28 [120]=28 [21]=28 [42]=28 [25]=28 [103]=28 [64]=28 [106]=28 [20]=28)"
    literal_transitions[33]="([65]=28)"
    literal_transitions[34]="([5]=28 [52]=28 [75]=28 [89]=28)"
    literal_transitions[35]="([31]=28)"
    literal_transitions[36]="([95]=28 [33]=28 [41]=28 [4]=28)"
    literal_transitions[37]="([24]=28 [29]=28 [122]=28 [9]=28)"
    literal_transitions[38]="([110]=28 [100]=28 [71]=28)"
    literal_transitions[39]="([2]=28 [19]=28 [123]=28)"
    literal_transitions[40]="([53]=28 [92]=28 [88]=30 [26]=28)"
    literal_transitions[41]="([51]=28 [67]=30)"
    literal_transitions[42]="([6]=28 [108]=28 [16]=28 [61]=30 [91]=28)"
    literal_transitions[43]="([70]=28)"

    local -A match_anything_transitions
    match_anything_transitions=([26]=28 [11]=28 [4]=28 [31]=28 [15]=28 [1]=23 [16]=28 [22]=28 [5]=28 [23]=43 [30]=28 [24]=28)

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
