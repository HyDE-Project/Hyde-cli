_Hyde () {
    local -a literals=("revert" "--uninstall" "wallbash" "--copy" "--opacity" "-j" "save" "unset" "3" "--stop" "--animations" "backup" "BackUp" "list" "cursor" "-p" "--no-custom" "Config" "--install" "--scan" "--record-focus" "theme" "bookmarks" "0" "-freeze" "--reset" "toggle" "pastebin" "1" "systeminfo" "--all" "theme" "--delete" "upgrade" "toggle" "waybar" "reload" "update" "all" "glyph" "--wipe" "--print-monitor" "game" "shell" "Config" "info" "search" "set" "reload" "reset" "--style" "--animations" "--site" "version" "select" "--blur" "variety" "theme" "clean" "airplane_mode" "-f" "reload" "--browser" "--print-snip" "--reset" "reload" "Clone" "check" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "show" "inject" "power" "binds" "rebuild" "screencap" "man" "asus_patch" "events" "override" "--rebuild" "--blur" "restore" "-d" "--browser" "sddm" "run" "--option" "cache" "control" "prev" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "next" "size" "flatpak" "Config" "screencap" "emoji" "--record-snip" "prev" "2" "--revert" "set" "patch" "select" "Package" "control")

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
    descriptions[67]=" Restores dots from a clone repository "
    descriptions[68]=" Information about Hyde and its components"
    descriptions[70]="   Diff mismatched dotfiles"
    descriptions[71]=" Previous wallpaper"
    descriptions[72]=" Disable border angle animation"
    descriptions[73]=" Wallpaper commands"
    descriptions[74]=" Default border angle animation"
    descriptions[75]=" Useful GUI util"
    descriptions[76]=" User/Device specific scripts that might be useful"
    descriptions[77]=" Power Options"
    descriptions[78]=" [*] Show keybind hints"
    descriptions[79]=" Force rebuild cache"
    descriptions[80]=" Use rofi to select screenshot options "
    descriptions[81]=" Show Manual"
    descriptions[82]=" Fixes issues for asus devices"
    descriptions[83]=" Watches hyprland events and executes actions"
    descriptions[84]=" Overwrite current dots from the preferred user dir "
    descriptions[85]="   force rebuild cached bookmark paths"
    descriptions[86]=" Default blur"
    descriptions[87]=" Restore dots"
    descriptions[88]="  Add custom delimiter symbol (default '>')"
    descriptions[89]=" Browser to use"
    descriptions[90]=" Sddm commands"
    descriptions[91]=" Executable utilities"
    descriptions[92]="	options"
    descriptions[93]=" Manages Hyde's cache"
    descriptions[94]=" Interactive control file"
    descriptions[95]=" Previous theme"
    descriptions[96]=" [*] Add chaotic aur to you mirror"
    descriptions[97]="   Pipes STDOUT to less"
    descriptions[98]=" [*] Set wallbash mode. [0] [1] [2] [3] "
    descriptions[99]=" Disable tranparency"
    descriptions[100]="  Reinitialize screencap"
    descriptions[101]=" Links a clone directory. Useful if you want to change your CloneDir"
    descriptions[102]=" Inhibits idle when player status: 'Playing"
    descriptions[103]="  Print all outputs"
    descriptions[104]=" Next theme"
    descriptions[105]="  Display this help message"
    descriptions[106]=" Wallpaper selector"
    descriptions[107]="   Diff preserved dotfiles"
    descriptions[108]=" Set cursor size"
    descriptions[109]=" Next wallppaer"
    descriptions[110]=" Set preavailable Hyde branch"
    descriptions[111]=" Next waybar layout"
    descriptions[112]=" [*] Set waybar size"
    descriptions[113]=" Flatpak setup for HyDE"
    descriptions[114]=" Manage users restore control list"
    descriptions[115]=" [*] Screenshot and screenrecord tool"
    descriptions[116]=" [*] Emoji selector"
    descriptions[117]="  Drag to manually snip an area to screen record it"
    descriptions[118]=" Previous waybar layout"
    descriptions[119]=" wallbash dark mode"
    descriptions[120]=" Converts chaotic aur packages to AUR"
    descriptions[121]=" Set theme"
    descriptions[122]=" Patch a theme from different repository."
    descriptions[123]=" Shell selector"
    descriptions[124]=" Hyde core Package status"
    descriptions[125]=" Edit waybar control file"

    local -A literal_transitions
    literal_transitions[1]="([36]=25 [68]=3 [38]=4 [54]=5 [3]=6 [37]=26 [22]=8 [90]=9 [91]=10 [110]=11 [93]=12 [44]=13 [94]=14 [81]=15 [30]=16 [12]=17 [73]=18 [15]=19 [75]=20 [76]=21 [84]=22 [34]=24 [77]=2 [87]=7)"
    literal_transitions[2]="([27]=27 [43]=27 [7]=32 [50]=27 [8]=33)"
    literal_transitions[3]="([124]=27 [45]=34)"
    literal_transitions[6]="([35]=27 [98]=35)"
    literal_transitions[7]="([101]=27 [18]=27 [13]=27 [67]=27)"
    literal_transitions[8]="([55]=27 [104]=27 [122]=27 [95]=27 [121]=27)"
    literal_transitions[9]="([58]=27)"
    literal_transitions[10]="([60]=27 [102]=27 [83]=27 [115]=38)"
    literal_transitions[12]="([79]=27 [66]=27)"
    literal_transitions[13]="([123]=27)"
    literal_transitions[14]="([114]=27)"
    literal_transitions[17]="([14]=27 [39]=27 [59]=27 [1]=27)"
    literal_transitions[18]="([57]=31 [106]=27 [48]=27 [109]=27 [71]=27)"
    literal_transitions[19]="([62]=27 [46]=27 [108]=27 [32]=27)"
    literal_transitions[20]="([116]=30 [80]=27 [28]=29 [47]=40 [40]=27 [78]=28 [23]=37)"
    literal_transitions[21]="([82]=27 [113]=27 [96]=36)"
    literal_transitions[25]="([112]=41 [118]=27 [49]=27 [111]=27 [125]=27)"
    literal_transitions[28]="([6]=27 [105]=27 [16]=27 [61]=27 [88]=27)"
    literal_transitions[29]="([92]=27 [33]=27 [41]=27 [4]=27)"
    literal_transitions[30]="([51]=27)"
    literal_transitions[31]="([65]=27)"
    literal_transitions[32]="([11]=27 [56]=27 [72]=27 [99]=27)"
    literal_transitions[33]="([5]=27 [52]=27 [74]=27 [86]=27)"
    literal_transitions[34]="([107]=27 [97]=27 [70]=27)"
    literal_transitions[35]="([24]=27 [29]=27 [119]=27 [9]=27)"
    literal_transitions[36]="([2]=27 [19]=27 [120]=27)"
    literal_transitions[37]="([85]=27 [17]=27 [63]=27)"
    literal_transitions[38]="([10]=27 [117]=27 [21]=27 [42]=27 [25]=27 [100]=27 [64]=27 [103]=27 [20]=27)"
    literal_transitions[39]="([69]=27)"
    literal_transitions[40]="([26]=27 [53]=27 [89]=27)"
    literal_transitions[41]="([31]=27)"

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
