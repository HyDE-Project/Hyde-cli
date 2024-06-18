_Hyde () {
    local -a literals=("revert" "--uninstall" "wallbash" "--copy" "--opacity" "-j" "save" "unset" "3" "--stop" "--animations" "backup" "BackUp" "list" "cursor" "-p" "--no-custom" "Config" "--install" "--scan" "--record-focus" "theme" "bookmarks" "0" "-freeze" "--reset" "toggle" "pastebin" "1" "systeminfo" "--all" "theme" "--delete" "upgrade" "toggle" "waybar" "reload" "update" "all" "glyph" "--wipe" "--print-monitor" "game" "shell" "Config" "info" "search" "set" "reload" "reset" "--animations" "--site" "version" "select" "--blur" "variety" "theme" "clean" "-f" "reload" "--print-snip" "--reset" "reload" "Clone" "check" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "show" "inject" "power" "binds" "rebuild" "screencap" "man" "asus_patch" "events" "override" "--rebuild" "--blur" "restore" "-d" "emoji" "--browser" "sddm" "run" "--option" "cache" "control" "prev" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "audio_idle" "Link" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "next" "size" "flatpak" "Config" "screencap" "--record-snip" "prev" "2" "--revert" "set" "patch" "select" "Package" "control")

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
    descriptions[51]=" Default animations"
    descriptions[52]=" Search engine to use"
    descriptions[53]=" Hyde-cli version"
    descriptions[54]=" Theme selector"
    descriptions[55]=" Disable blur"
    descriptions[56]=" [*] Use variety package to manage wallpapers"
    descriptions[57]=" Select sddm theme"
    descriptions[58]=" Clear some storage by deleting old backups"
    descriptions[59]="  Add custom file"
    descriptions[60]=" Reload cursors"
    descriptions[61]="  Drag to manually snip an area"
    descriptions[62]=" reset hyde profile"
    descriptions[63]=" Reload wallpaper cache"
    descriptions[64]=" Restores dots from a clone repository "
    descriptions[65]=" Information about Hyde and its components"
    descriptions[67]="   Diff mismatched dotfiles"
    descriptions[68]=" Previous wallpaper"
    descriptions[69]=" Disable border angle animation"
    descriptions[70]=" Wallpaper commands"
    descriptions[71]=" Default border angle animation"
    descriptions[72]=" Useful GUI util"
    descriptions[73]=" User/Device specific scripts that might be useful"
    descriptions[74]=" Power Options"
    descriptions[75]=" [*] Show keybind hints"
    descriptions[76]=" Force rebuild cache"
    descriptions[77]=" Use rofi to select screenshot options "
    descriptions[78]=" Show Manual"
    descriptions[79]=" Fixes issues for asus devices"
    descriptions[80]=" Watches hyprland events and executes actions"
    descriptions[81]=" Overwrite current dots from the preferred user dir "
    descriptions[82]="   force rebuild cached bookmark paths"
    descriptions[83]=" Default blur"
    descriptions[84]=" Restore dots"
    descriptions[85]="  Add custom delimiter symbol (default '>')"
    descriptions[86]=" Emoji selector"
    descriptions[87]=" Browser to use"
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
    descriptions[99]=" Inhibits idle when player status: 'Playing"
    descriptions[100]=" Links a clone directory. Useful if you want to change your CloneDir"
    descriptions[101]="  Print all outputs"
    descriptions[102]=" Next theme"
    descriptions[103]="  Display this help message"
    descriptions[104]=" Wallpaper selector"
    descriptions[105]="   Diff preserved dotfiles"
    descriptions[106]=" Set cursor size"
    descriptions[107]=" Next wallppaer"
    descriptions[108]=" Set preavailable Hyde branch"
    descriptions[109]=" Next waybar layout"
    descriptions[110]=" [*] Set waybar size"
    descriptions[111]=" Flatpak setup for HyDE"
    descriptions[112]=" Manage users restore control list"
    descriptions[113]=" [*] Screenshot and screenrecord tool"
    descriptions[114]="  Drag to manually snip an area to screen record it"
    descriptions[115]=" Previous waybar layout"
    descriptions[116]=" wallbash dark mode"
    descriptions[117]=" Converts chaotic aur packages to AUR"
    descriptions[118]=" Set theme"
    descriptions[119]=" Patch a theme from different repository."
    descriptions[120]=" Shell selector"
    descriptions[121]=" Hyde core Package status"
    descriptions[122]=" Edit waybar control file"

    local -A literal_transitions
    literal_transitions[1]="([36]=25 [65]=3 [38]=4 [53]=5 [3]=6 [37]=26 [22]=8 [88]=9 [89]=10 [108]=11 [91]=12 [44]=13 [92]=14 [78]=15 [30]=16 [12]=17 [70]=18 [15]=19 [72]=20 [73]=21 [81]=22 [34]=24 [74]=2 [84]=7)"
    literal_transitions[2]="([27]=27 [43]=27 [7]=35 [50]=27 [8]=30)"
    literal_transitions[3]="([121]=27 [45]=40)"
    literal_transitions[6]="([35]=27 [96]=33)"
    literal_transitions[7]="([100]=27 [18]=27 [13]=27 [64]=27)"
    literal_transitions[8]="([54]=27 [102]=27 [119]=27 [93]=27 [118]=27)"
    literal_transitions[9]="([57]=27)"
    literal_transitions[10]="([99]=27 [80]=27 [113]=28)"
    literal_transitions[12]="([76]=27 [63]=27)"
    literal_transitions[13]="([120]=27)"
    literal_transitions[14]="([112]=27)"
    literal_transitions[17]="([14]=27 [39]=27 [58]=27 [1]=27)"
    literal_transitions[18]="([56]=31 [104]=27 [48]=27 [107]=27 [68]=27)"
    literal_transitions[19]="([60]=27 [46]=27 [106]=27 [32]=27)"
    literal_transitions[20]="([86]=27 [77]=27 [28]=34 [47]=32 [40]=27 [75]=37 [23]=38)"
    literal_transitions[21]="([79]=27 [111]=27 [94]=36)"
    literal_transitions[25]="([110]=29 [115]=27 [49]=27 [109]=27 [122]=27)"
    literal_transitions[28]="([10]=27 [114]=27 [21]=27 [42]=27 [25]=27 [98]=27 [61]=27 [101]=27 [20]=27)"
    literal_transitions[29]="([31]=27)"
    literal_transitions[30]="([5]=27 [51]=27 [71]=27 [83]=27)"
    literal_transitions[31]="([62]=27)"
    literal_transitions[32]="([26]=27 [52]=27 [87]=27)"
    literal_transitions[33]="([24]=27 [29]=27 [116]=27 [9]=27)"
    literal_transitions[34]="([90]=27 [33]=27 [41]=27 [4]=27)"
    literal_transitions[35]="([11]=27 [55]=27 [69]=27 [97]=27)"
    literal_transitions[36]="([2]=27 [19]=27 [117]=27)"
    literal_transitions[37]="([6]=27 [103]=27 [16]=27 [59]=27 [85]=27)"
    literal_transitions[38]="([82]=27 [17]=27)"
    literal_transitions[39]="([66]=27)"
    literal_transitions[40]="([105]=27 [95]=27 [67]=27)"

    local -A match_anything_transitions
    match_anything_transitions=([24]=27 [11]=27 [4]=27 [15]=27 [1]=23 [16]=27 [22]=27 [5]=27 [23]=39 [26]=27)

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
