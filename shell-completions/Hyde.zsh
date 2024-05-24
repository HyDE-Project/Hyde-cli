_Hyde () {
    local -a literals=("revert" "--uninstall" "--install" "wallbash" "--opacity" "-j" "save" "unset" "3" "--rebuild" "--animations" "--stop" "backup" "BackUp" "list" "cursor" "-p" "Config" "d" "--scan" "--record-focus" "theme" "bookmarks" "0" "-freeze" "pastebin" "1" "systeminfo" "--all" "theme" "toggle" "upgrade" "waybar" "toggle" "reload" "update" "all" "glyph" "--print-monitor" "w" "game" "shell" "Config" "info" "reload" "reset" "--animations" "version" "select" "--blur" "run" "theme" "clean" "size" "reload" "-f" "--print-snip" "reload" "Clone" "check" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "-w" "inject" "power" "set" "binds" "rebuild" "screencap" "c" "man" "asus_patch" "events" "--blur" "restore" "-d" "emoji" "sddm" "cache" "control" "show" "prev" "sync" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "flatpak" "Config" "screencap" "--record-snip" "2" "--revert" "set" "patch" "select" "Package" "control")

    local -A descriptions
    descriptions[1]=" Revert to a previous backup run by 'Hyde backup all'. "
    descriptions[2]=" Removes Chaotic Aur"
    descriptions[3]=" Setup Choatic Aur, append [fresh] to run in fresh install mode"
    descriptions[4]=" Toggle to use wallpaper accent themes"
    descriptions[5]=" Default tranparency"
    descriptions[6]="  Show the JSON format"
    descriptions[7]=" [*] Save power by disabling features"
    descriptions[8]=" [*] Unset specific changes"
    descriptions[9]=" wallbash light mode"
    descriptions[10]="  force rebuild cached bookmark paths"
    descriptions[11]=" Disable animations"
    descriptions[12]="  Stop every instance of Screencap"
    descriptions[13]=" Backing up commands"
    descriptions[14]=" Restores dots from previous backup"
    descriptions[15]=" List the backup"
    descriptions[16]=" Cursor setting"
    descriptions[17]="  Show the pretty format"
    descriptions[18]=" Only restores dots from default '/Configs'"
    descriptions[19]=" cliphist list and delete selected"
    descriptions[20]="  Use 'tesseract' to scan image then add to clipboard"
    descriptions[21]="  Record focused monitor"
    descriptions[22]=" Theme commands"
    descriptions[23]=" [*] Bookmark selector"
    descriptions[24]=" wallbash disabled"
    descriptions[25]="  Frozen screen, drag to manually snip an area"
    descriptions[26]=" [*] Pastebin manager "
    descriptions[27]=" wallbash auto"
    descriptions[28]=" System information"
    descriptions[29]=" Change all the pre-set sizes"
    descriptions[30]=" Set cursor theme"
    descriptions[31]=" Cycles wallbash [0] off [1] auto [2] dark [3] light"
    descriptions[32]=" Upgrades dots from the repository"
    descriptions[33]=" Waybar commands"
    descriptions[34]=" Toggle ﯦ Set/unset current changes'"
    descriptions[35]=" Just reload"
    descriptions[36]=" Pull updates from Hyde repository"
    descriptions[37]=" Backs up the current configuration"
    descriptions[38]=" Glyph selector"
    descriptions[39]="  Print focused monitor"
    descriptions[40]=" cliphist wipe database"
    descriptions[41]=" Toggle game mode"
    descriptions[42]=" Shell commands"
    descriptions[43]=" [*] Hyde Config File & Directory status"
    descriptions[44]=" Check active cursor status (only gsettings)"
    descriptions[45]=" Reloads waybar"
    descriptions[46]=" Reset changes"
    descriptions[47]=" Default animations"
    descriptions[48]=" Hyde-cli version"
    descriptions[49]=" Theme selector"
    descriptions[50]=" Disable blur"
    descriptions[51]=" Executables"
    descriptions[52]=" Select sddm theme"
    descriptions[53]=" Clear some storage by deleting old backups"
    descriptions[54]=" [*]Set waybar size"
    descriptions[55]=" Reload cursors"
    descriptions[56]="  Add custom file"
    descriptions[57]="  Drag to manually snip an area"
    descriptions[58]=" Reload wallpaper cache"
    descriptions[59]=" Restores dots from a clone repository "
    descriptions[60]=" Information about Hyde and its components"
    descriptions[62]="   Diff mismatched dotfiles"
    descriptions[63]=" Previous wallpaper"
    descriptions[64]=" Disable border angle animation"
    descriptions[65]=" Wallpaper commands"
    descriptions[66]=" Default border angle animation"
    descriptions[67]="  Custom width"
    descriptions[68]=" User/Device specific scripts that might be useful"
    descriptions[69]=" Power Options"
    descriptions[70]=" Set /Path/to/Wallpapers as new wallpaper directory"
    descriptions[71]=" [*] Show keybind hints"
    descriptions[72]=" Force rebuild cache"
    descriptions[73]=" Use rofi to select screenshot options "
    descriptions[74]=" cliphist list and copy selected"
    descriptions[75]=" Show Manual"
    descriptions[76]=" Fixes issues for asus devices"
    descriptions[77]=" Watches hyprland events and executes actions"
    descriptions[78]=" Default blur"
    descriptions[79]=" Restore dots"
    descriptions[80]="  Add custom delimiter symbol (default '>')"
    descriptions[81]=" Emoji selector"
    descriptions[82]=" Sddm commands"
    descriptions[83]=" Manages Hyde's cache"
    descriptions[84]=" Interactive control file"
    descriptions[85]=" Some Hypr GUI you might want to use"
    descriptions[86]=" Previous theme"
    descriptions[87]=" Overwrite current dots from the user "
    descriptions[88]=" [*] Add chaotic aur to you mirror"
    descriptions[89]="   Pipes STDOUT to less"
    descriptions[90]=" [*] Set wallbash mode. [0] [1] [2] [3] "
    descriptions[91]=" Disable tranparency"
    descriptions[92]="  Reinitialize screencap"
    descriptions[93]=" Links a clone directory. Useful if you want to change your CloneDir"
    descriptions[94]=" Inhibits idle when player status: 'Playing"
    descriptions[95]="  Print all outputs"
    descriptions[96]=" Next theme"
    descriptions[97]="  Display this help message"
    descriptions[98]=" Wallpaper selector"
    descriptions[99]="   Diff preserved dotfiles"
    descriptions[100]=" Set cursor size"
    descriptions[101]=" Next wallppaer"
    descriptions[102]=" Set preavailable Hyde branch"
    descriptions[103]=" Flatpak setup for HyDE"
    descriptions[104]=" Manage users restore control list"
    descriptions[105]=" [*] Screenshot and screenrecord tool"
    descriptions[106]="  Drag to manually snip an area to screen record it"
    descriptions[107]=" wallbash dark mode"
    descriptions[108]=" Converts chaotic aur packages to AUR"
    descriptions[109]=" Set theme"
    descriptions[110]=" Patch a theme from different repository."
    descriptions[111]=" Shell selector"
    descriptions[112]=" Hyde core Package status"
    descriptions[113]=" Edit waybar control file"

    local -A literal_transitions
    literal_transitions[1]="([33]=25 [60]=3 [36]=4 [48]=5 [4]=6 [35]=26 [22]=8 [82]=9 [102]=10 [83]=11 [51]=12 [85]=15 [42]=13 [84]=14 [87]=16 [75]=17 [28]=18 [13]=19 [65]=20 [16]=21 [68]=22 [32]=24 [69]=2 [79]=7)"
    literal_transitions[2]="([34]=27 [41]=27 [7]=32 [46]=27 [8]=33)"
    literal_transitions[3]="([112]=27 [43]=30)"
    literal_transitions[6]="([31]=27 [90]=34)"
    literal_transitions[7]="([93]=27 [18]=27 [14]=27 [59]=27)"
    literal_transitions[8]="([49]=27 [96]=27 [110]=27 [86]=27 [109]=27)"
    literal_transitions[9]="([52]=27)"
    literal_transitions[11]="([72]=27 [58]=27)"
    literal_transitions[12]="([94]=27 [77]=27 [105]=31)"
    literal_transitions[13]="([111]=27)"
    literal_transitions[14]="([104]=27)"
    literal_transitions[15]="([81]=27 [73]=27 [26]=37 [38]=27 [71]=35 [23]=36)"
    literal_transitions[19]="([15]=27 [37]=27 [53]=27 [1]=27)"
    literal_transitions[20]="([98]=27 [101]=27 [70]=27 [63]=27)"
    literal_transitions[21]="([55]=27 [44]=27 [100]=27 [30]=27)"
    literal_transitions[22]="([76]=27 [103]=27 [88]=29)"
    literal_transitions[25]="([45]=27 [54]=38 [113]=27)"
    literal_transitions[28]="([61]=27)"
    literal_transitions[29]="([2]=27 [108]=27 [3]=27)"
    literal_transitions[30]="([99]=27 [89]=27 [62]=27)"
    literal_transitions[31]="([12]=27 [106]=27 [21]=27 [39]=27 [25]=27 [92]=27 [57]=27 [95]=27 [20]=27)"
    literal_transitions[32]="([11]=27 [50]=27 [64]=27 [91]=27)"
    literal_transitions[33]="([5]=27 [47]=27 [66]=27 [78]=27)"
    literal_transitions[34]="([24]=27 [27]=27 [107]=27 [9]=27)"
    literal_transitions[35]="([6]=27 [97]=27 [17]=27 [67]=27 [80]=27 [56]=27)"
    literal_transitions[36]="([10]=27)"
    literal_transitions[37]="([40]=27 [19]=27 [74]=27)"
    literal_transitions[38]="([29]=27)"

    local -A match_anything_transitions
    match_anything_transitions=([24]=27 [4]=27 [17]=27 [1]=23 [16]=27 [18]=27 [10]=27 [5]=27 [23]=28 [26]=27)

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
