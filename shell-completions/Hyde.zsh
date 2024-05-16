_Hyde () {
    local -a literals=("--uninstall" "revert" "--install" "wallbash" "--opacity" "-j" "save" "unset" "3" "--stop" "--animations" "backup" "BackUp" "list" "-p" "Config" "d" "--scan" "--record-focus" "theme" "-freeze" "0" "pastebin" "1" "systeminfo" "--all" "toggle" "waybar" "upgrade" "toggle" "reload" "update" "all" "glyph" "--print-monitor" "w" "game" "shell" "--less" "--presrve" "Config" "reload" "reset" "--animations" "version" "select" "--blur" "run" "theme" "clean" "size" "-f" "--print-snip" "reload" "Clone" "check" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "-w" "inject" "power" "set" "binds" "rebuild" "screencap" "c" "man" "asus_patch" "events" "--blur" "restore" "-d" "emoji" "sddm" "cache" "control" "show" "prev" "sync" "chaotic_aur" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "next" "branch" "flatpak" "Config" "screencap" "--record-snip" "2" "--revert" "set" "patch" "select" "Package" "control")

    local -A descriptions
    descriptions[1]=" Removes Chaotic Aur"
    descriptions[2]=" Revert to a previous backup run by 'Hyde backup all'. "
    descriptions[3]=" Setup Choatic Aur, append [fresh] to run in fresh install mode"
    descriptions[4]=" Toggle to use wallpaper accent themes"
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
    descriptions[15]="  Show the pretty format"
    descriptions[16]=" Only restores dots from default '/Configs'"
    descriptions[17]=" cliphist list and delete selected"
    descriptions[18]="  Use 'tesseract' to scan image then add to clipboard"
    descriptions[19]="  Record focused monitor"
    descriptions[20]=" Theme commands"
    descriptions[21]="  Frozen screen, drag to manually snip an area"
    descriptions[22]=" wallbash disabled"
    descriptions[23]=" [*] Pastebin manager "
    descriptions[24]=" wallbash auto"
    descriptions[25]=" System information"
    descriptions[26]=" Change all the pre-set sizes"
    descriptions[27]=" Cycles wallbash [0] off [1] auto [2] dark [3] light"
    descriptions[28]=" Waybar commands"
    descriptions[29]=" Upgrades dots from the repository"
    descriptions[30]=" Toggle ﯦ Set/unset current changes'"
    descriptions[31]=" Just reload"
    descriptions[32]=" Pull updates from Hyde repository"
    descriptions[33]=" Backs up the current configuration"
    descriptions[34]=" Glyph selector"
    descriptions[35]="  Print focused monitor"
    descriptions[36]=" cliphist wipe database"
    descriptions[37]=" Toggle game mode"
    descriptions[38]=" Shell commands"
    descriptions[39]="   Pipes stdouts to less"
    descriptions[40]="   Diff preserved dotfiles"
    descriptions[41]=" [*] Hyde Config File & Directory status"
    descriptions[42]=" Reloads waybar"
    descriptions[43]=" Reset changes"
    descriptions[44]=" Default animations"
    descriptions[45]=" Hyde-cli version"
    descriptions[46]=" Theme selector"
    descriptions[47]=" Disable blur"
    descriptions[48]=" Executables"
    descriptions[49]=" Select sddm theme"
    descriptions[50]=" Clear some storage by deleting old backups"
    descriptions[51]=" [*]Set waybar size"
    descriptions[52]="  Add custom file"
    descriptions[53]="  Drag to manually snip an area"
    descriptions[54]=" Reload wallpaper cache"
    descriptions[55]=" Restores dots from a clone repository "
    descriptions[56]=" Information about Hyde and its components"
    descriptions[58]="   Diff mismatched dotfiles"
    descriptions[59]=" Previous wallpaper"
    descriptions[60]=" Disable border angle animation"
    descriptions[61]=" Wallpaper commands"
    descriptions[62]=" Default border angle animation"
    descriptions[63]="  Custom width"
    descriptions[64]=" User/Device specific scripts that might be useful"
    descriptions[65]=" Power Options"
    descriptions[66]=" Set /Path/to/Wallpapers as new wallpaper directory"
    descriptions[67]=" [*] Show keybind hints"
    descriptions[68]=" Force rebuild cache"
    descriptions[69]=" Use rofi to select screenshot options "
    descriptions[70]=" cliphist list and copy selected"
    descriptions[71]=" Show Manual"
    descriptions[72]=" Fixes issues for asus devices"
    descriptions[73]=" Watches hyprland events and executes actions"
    descriptions[74]=" Default blur"
    descriptions[75]=" Restore dots"
    descriptions[76]="  Add custom delimiter symbol (default '>')"
    descriptions[77]=" Emoji selector"
    descriptions[78]=" Sddm commands"
    descriptions[79]=" Manages Hyde's cache"
    descriptions[80]=" Interactive control file"
    descriptions[81]=" Some Hypr GUI you might want to use"
    descriptions[82]=" Previous theme"
    descriptions[83]=" Overwrite current dots from the user "
    descriptions[84]=" [*] Add chaotic aur to you mirror"
    descriptions[85]=" [*] Set wallbash mode. [0] [1] [2] [3] "
    descriptions[86]=" Disable tranparency"
    descriptions[87]="  Reinitialize screencap"
    descriptions[88]=" Links a clone directory. Useful if you want to change your CloneDir"
    descriptions[89]=" Inhibits idle when player status: 'Playing"
    descriptions[90]="  Print all outputs"
    descriptions[91]=" Next theme"
    descriptions[92]="  Display this help message"
    descriptions[93]=" Wallpaper selector"
    descriptions[94]=" Next wallppaer"
    descriptions[95]=" Set preavailable Hyde branch"
    descriptions[96]=" Flatpak setup for HyDE"
    descriptions[97]=" Manage users restore control list"
    descriptions[98]=" [*] Screenshot and screenrecord tool"
    descriptions[99]="  Drag to manually snip an area to screen record it"
    descriptions[100]=" wallbash dark mode"
    descriptions[101]=" Converts chaotic aur packages to AUR"
    descriptions[102]=" Set theme"
    descriptions[103]=" Patch a theme from different repository."
    descriptions[104]=" Shell selector"
    descriptions[105]=" Hyde core Package status"
    descriptions[106]=" Edit waybar control file"

    local -A literal_transitions
    literal_transitions[1]="([28]=24 [56]=3 [32]=4 [45]=5 [4]=6 [31]=25 [20]=8 [78]=9 [95]=10 [79]=11 [48]=12 [81]=15 [38]=13 [80]=14 [83]=16 [71]=17 [12]=18 [25]=19 [61]=20 [64]=21 [29]=23 [65]=2 [75]=7)"
    literal_transitions[2]="([30]=26 [37]=26 [7]=33 [43]=26 [8]=35)"
    literal_transitions[3]="([105]=26 [41]=36)"
    literal_transitions[6]="([27]=26 [85]=31)"
    literal_transitions[7]="([88]=26 [16]=26 [13]=26 [55]=26)"
    literal_transitions[8]="([46]=26 [91]=26 [103]=26 [82]=26 [102]=26)"
    literal_transitions[9]="([49]=26)"
    literal_transitions[11]="([68]=26 [54]=26)"
    literal_transitions[12]="([89]=26 [73]=26 [98]=30)"
    literal_transitions[13]="([104]=26)"
    literal_transitions[14]="([97]=26)"
    literal_transitions[15]="([77]=26 [69]=26 [34]=26 [67]=27 [23]=28)"
    literal_transitions[18]="([14]=26 [33]=26 [50]=26 [2]=26)"
    literal_transitions[20]="([93]=26 [94]=26 [66]=26 [59]=26)"
    literal_transitions[21]="([72]=26 [96]=26 [84]=29)"
    literal_transitions[24]="([42]=26 [51]=34 [106]=26)"
    literal_transitions[27]="([6]=26 [92]=26 [15]=26 [63]=26 [76]=26 [52]=26)"
    literal_transitions[28]="([36]=26 [17]=26 [70]=26)"
    literal_transitions[29]="([1]=26 [101]=26 [3]=26)"
    literal_transitions[30]="([10]=26 [99]=26 [19]=26 [35]=26 [21]=26 [87]=26 [53]=26 [90]=26 [18]=26)"
    literal_transitions[31]="([22]=26 [24]=26 [100]=26 [9]=26)"
    literal_transitions[32]="([57]=26)"
    literal_transitions[33]="([11]=26 [47]=26 [60]=26 [86]=26)"
    literal_transitions[34]="([26]=26)"
    literal_transitions[35]="([5]=26 [44]=26 [62]=26 [74]=26)"
    literal_transitions[36]="([39]=26 [40]=26 [58]=26)"

    local -A match_anything_transitions
    match_anything_transitions=([4]=26 [19]=26 [17]=26 [25]=26 [1]=22 [16]=26 [10]=26 [22]=32 [5]=26 [23]=26)

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
