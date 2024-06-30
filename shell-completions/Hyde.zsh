_Hyde_spec_0 () {
    _path_files
}

_Hyde () {
    local -a literals=("revert" "--uninstall" "wallbash" "--copy" "--opacity" "-j" "save" "unset" "3" "--stop" "--animations" "backup" "BackUp" "list" "cursor" "--freeze" "-p" "--no-custom" "Config" "--install" "--scan" "--record-focus" "theme" "bookmarks" "0" "--reset" "toggle" "pastebin" "1" "systeminfo" "--all" "theme" "--delete" "upgrade" "toggle" "waybar" "reload" "update" "all" "glyph" "--wipe" "--print-monitor" "game" "shell" "Config" "info" "--style" "set" "reload" "reset" "search" "--animations" "--site" "version" "select" "--blur" "variety" "theme" "clean" "calc" "airplane_mode" "reload" "--browser" "--print-snip" "--reset" "reload" "--rasi" "Clone" "check" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "show" "-f" "inject" "power" "--persist" "binds" "rebuild" "screencap" "man" "asus_patch" "events" "override" "--rebuild" "--rasi" "--blur" "restore" "-d" "--browser" "sddm" "run" "--option" "cache" "control" "prev" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "next" "size" "flatpak" "Config" "screencap" "emoji" "--record-snip" "prev" "2" "--revert" "set" "patch" "select" "Package" "control")

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
    descriptions[16]="  Frozen screen, drag to manually snip an area"
    descriptions[17]="  Show the pretty format"
    descriptions[18]="    run without custom '.lst' bookmark files"
    descriptions[19]=" Only restores dots from default '/Configs'"
    descriptions[20]=" Setup Chaotic Aur, append [fresh] to run in fresh install mode"
    descriptions[21]="  Use 'tesseract' to scan image then add to clipboard"
    descriptions[22]="  Record focused monitor"
    descriptions[23]=" Theme commands"
    descriptions[24]=" [*] Bookmark selector"
    descriptions[25]=" wallbash disabled"
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
    descriptions[47]="   use style [ 1 | 2 ]"
    descriptions[48]=" Set /Path/to/Wallpaper"
    descriptions[49]=" Reloads waybar"
    descriptions[50]=" Reset changes"
    descriptions[51]=" [*] Web Search"
    descriptions[52]=" Default animations"
    descriptions[53]=" Search engine to use"
    descriptions[54]=" Hyde-cli version"
    descriptions[55]=" Theme selector"
    descriptions[56]=" Disable blur"
    descriptions[57]=" [*] Use variety package to manage wallpapers"
    descriptions[58]=" Select sddm theme"
    descriptions[59]=" Clear some storage by deleting old backups"
    descriptions[60]=" [*] Calculator (libqalculate)"
    descriptions[61]=" Toogle airplane mode"
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
    descriptions[77]="  Add custom .conf file"
    descriptions[78]=" User/Device specific scripts that might be useful"
    descriptions[79]=" Power Options"
    descriptions[80]="	Saves bookmark file list to ~/.cache.So no re-caching after reboot"
    descriptions[81]=" [*] Show keybind hints"
    descriptions[82]=" Force rebuild cache"
    descriptions[83]=" Use rofi to select screenshot options "
    descriptions[84]=" Show Manual"
    descriptions[85]=" Fixes issues for asus devices"
    descriptions[86]=" Watches hyprland events and executes actions"
    descriptions[87]=" Overwrite current dots from the preferred user dir "
    descriptions[88]="   force rebuild cached bookmark paths"
    descriptions[89]=" set rofi configuration"
    descriptions[90]=" Default blur"
    descriptions[91]=" Restore dots"
    descriptions[92]="  Add custom delimiter symbol (default '>')"
    descriptions[93]=" Browser to use"
    descriptions[94]=" Sddm commands"
    descriptions[95]=" Executable utilities"
    descriptions[96]="	options"
    descriptions[97]=" Manages Hyde's cache"
    descriptions[98]=" Interactive control file"
    descriptions[99]=" Previous theme"
    descriptions[100]=" [*] Add chaotic aur to you mirror"
    descriptions[101]="   Pipes STDOUT to less"
    descriptions[102]=" [*] Set wallbash mode. [0] [1] [2] [3] "
    descriptions[103]=" Disable tranparency"
    descriptions[104]="  Reinitialize screencap"
    descriptions[105]=" Links a clone directory. Useful if you want to change your CloneDir"
    descriptions[106]=" Inhibits idle when player status: 'Playing"
    descriptions[107]="  Print all outputs"
    descriptions[108]=" Next theme"
    descriptions[109]="  Display this help message"
    descriptions[110]=" Wallpaper selector"
    descriptions[111]="   Diff preserved dotfiles"
    descriptions[112]=" Set cursor size"
    descriptions[113]=" Next wallppaer"
    descriptions[114]=" Set preavailable Hyde branch"
    descriptions[115]=" Next waybar layout"
    descriptions[116]=" [*] Set waybar size"
    descriptions[117]=" Flatpak setup for HyDE"
    descriptions[118]=" Manage users restore control list"
    descriptions[119]=" [*] Screenshot and screenrecord tool"
    descriptions[120]=" [*] Emoji selector"
    descriptions[121]="  Drag to manually snip an area to screen record it"
    descriptions[122]=" Previous waybar layout"
    descriptions[123]=" wallbash dark mode"
    descriptions[124]=" Converts chaotic aur packages to AUR"
    descriptions[125]=" Set theme"
    descriptions[126]=" Patch a theme from different repository."
    descriptions[127]=" Shell selector"
    descriptions[128]=" Hyde core Package status"
    descriptions[129]=" Edit waybar control file"

    local -A literal_transitions
    literal_transitions[1]="([36]=25 [69]=3 [38]=4 [54]=5 [3]=6 [37]=26 [23]=8 [94]=9 [95]=10 [114]=11 [97]=12 [44]=13 [98]=14 [84]=15 [30]=16 [12]=17 [74]=18 [15]=19 [76]=20 [78]=21 [87]=22 [34]=24 [79]=2 [91]=7)"
    literal_transitions[2]="([27]=27 [43]=27 [7]=32 [50]=27 [8]=34)"
    literal_transitions[3]="([128]=27 [45]=36)"
    literal_transitions[6]="([35]=27 [102]=37)"
    literal_transitions[7]="([105]=27 [19]=27 [13]=27 [68]=27)"
    literal_transitions[8]="([55]=27 [108]=27 [126]=27 [99]=27 [125]=27)"
    literal_transitions[9]="([58]=27)"
    literal_transitions[10]="([61]=27 [106]=27 [86]=27 [119]=28)"
    literal_transitions[12]="([82]=27 [66]=27)"
    literal_transitions[13]="([127]=27)"
    literal_transitions[14]="([118]=27)"
    literal_transitions[17]="([14]=27 [39]=27 [59]=27 [1]=27)"
    literal_transitions[18]="([57]=35 [110]=27 [48]=27 [113]=27 [72]=27)"
    literal_transitions[19]="([62]=27 [46]=27 [112]=27 [32]=27)"
    literal_transitions[20]="([120]=33 [60]=41 [40]=27 [81]=29 [24]=42 [83]=27 [51]=31 [28]=39)"
    literal_transitions[21]="([85]=27 [117]=27 [100]=38)"
    literal_transitions[25]="([116]=44 [122]=27 [49]=27 [115]=27 [129]=27)"
    literal_transitions[28]="([10]=27 [121]=27 [22]=27 [42]=27 [16]=27 [104]=27 [64]=27 [107]=27 [21]=27)"
    literal_transitions[29]="([6]=27 [109]=27 [17]=27 [77]=30 [92]=27)"
    literal_transitions[31]="([53]=27 [93]=27 [89]=30 [26]=27)"
    literal_transitions[32]="([11]=27 [56]=27 [73]=27 [103]=27)"
    literal_transitions[33]="([47]=27 [67]=30)"
    literal_transitions[34]="([5]=27 [52]=27 [75]=27 [90]=27)"
    literal_transitions[35]="([65]=27)"
    literal_transitions[36]="([111]=27 [101]=27 [71]=27)"
    literal_transitions[37]="([25]=27 [29]=27 [123]=27 [9]=27)"
    literal_transitions[38]="([2]=27 [20]=27 [124]=27)"
    literal_transitions[39]="([96]=27 [33]=27 [41]=27 [4]=27)"
    literal_transitions[40]="([70]=27)"
    literal_transitions[41]="([26]=27 [89]=30)"
    literal_transitions[42]="([88]=27 [18]=27 [80]=27 [67]=30 [63]=43)"
    literal_transitions[44]="([31]=27)"

    local -A match_anything_transitions
    match_anything_transitions=([26]=27 [43]=27 [11]=27 [4]=27 [15]=27 [1]=23 [16]=27 [22]=27 [5]=27 [23]=40 [30]=27 [24]=27)

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
