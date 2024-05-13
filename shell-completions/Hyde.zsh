_Hyde () {
    local -a literals=("control" "Clone" "wallbash" "::=" "--mismatch" "prev" "--opacity" "-j" "save" "Config" "3" "Config" "--animations" "--borderangle" "unset" "backup" "--stop" "BackUp" "list" "wallpaper" "--borderangle" "-p" "Config" "power" "-w" "d" "--scan" "--record-focus" "inject" "set" "theme" "binds" "rebuild" "0" "screencap" "-freeze" "pastebin" "c" "man" "1" "systeminfo" "--all" "events" "asus_patch" "--blur" "toggle" "waybar" "upgrade" "restore" "toggle" "update" "all" "-d" "sddm" "emoji" "w" "game" "cache" "glyph" "control" "shell" "show" "prev" "--less" "--presrve" "sync" "--print-monitor" "reload" "mode" "check" "--opacity" "--reset" "Link" "reload" "audio_idle" "reset" "--print-all" "next" "--animations" "version" "next" "select" "branch" "select" "-h" "--blur" "run" "flatpak" "screencap" "--record-snip" "theme" "clean" "2" "size" "set" "patch" "select" "-f" "--print-snip" "chaotic_aur" "reload" "revert")

    local -A descriptions
    descriptions[1]=" Edit waybar control file"
    descriptions[2]=" Restores dots from a clone repository "
    descriptions[3]=" Toggle to use wallpaper accent themes"
    descriptions[5]="   Diff mismatched dotfiles"
    descriptions[6]=" Previous wallpaper"
    descriptions[7]=" Default tranparency"
    descriptions[8]="  Show the JSON format"
    descriptions[9]=" [*] Save power by disabling features"
    descriptions[10]=" Manage restore control list"
    descriptions[11]=" wallbash light mode"
    descriptions[12]=" [*] check up Config File/Directory"
    descriptions[13]=" Disable animations"
    descriptions[14]=" Disable border angle animation"
    descriptions[15]=" [*] Unset specific changes"
    descriptions[16]=" Backing up commands"
    descriptions[17]="  Stop every instance of Screencap"
    descriptions[18]=" Restores dots from previous backup"
    descriptions[19]=" List the backup"
    descriptions[20]=" Wallpaper commands"
    descriptions[21]=" Default border angle animation"
    descriptions[22]="  Show the pretty format"
    descriptions[23]=" Only restores dots from default '/Configs'"
    descriptions[24]=" Power Options"
    descriptions[25]="  Custom width"
    descriptions[26]=" cliphist list and delete selected"
    descriptions[27]="  Use 'tesseract' to scan image then add to clipboard"
    descriptions[28]="  Record focused monitor"
    descriptions[29]=" User/Device specific scripts that might be useful"
    descriptions[30]=" Set /Path/to/Wallpapers as new wallpaper directory"
    descriptions[31]=" Theme commands"
    descriptions[32]=" [*] Show keybind hints"
    descriptions[33]=" Force rebuild cache"
    descriptions[34]=" wallbash disabled"
    descriptions[35]=" Use rofi to select screenshot options "
    descriptions[36]="  Frozen screen, drag to manually snip an area"
    descriptions[37]=" [*] Pastebin manager "
    descriptions[38]=" cliphist list and copy selected"
    descriptions[39]=" Show Manual"
    descriptions[40]=" wallbash auto"
    descriptions[41]=" System information"
    descriptions[42]=" Change all the pre-set sizes"
    descriptions[43]=" Watches hyprland events and executes actions"
    descriptions[44]=" Fixes issues for asus devices"
    descriptions[45]=" Default blur"
    descriptions[46]=" Cycles wallbash [0] off [1] auto [2] dark [3] light"
    descriptions[47]=" Waybar commands"
    descriptions[48]=" Upgrades dots from the repository"
    descriptions[49]=" Restore dots"
    descriptions[50]=" Toggle ﯦ Set/unset current changes'"
    descriptions[51]=" Pull updates from Hyde repository"
    descriptions[52]=" Backs up the current configuration"
    descriptions[53]="  Add custom delimiter symbol (default '>')"
    descriptions[54]=" Sddm commands"
    descriptions[55]=" Emoji selector"
    descriptions[56]=" cliphist wipe database"
    descriptions[57]=" Toggle game mode"
    descriptions[58]=" Manages Hyde's cache"
    descriptions[59]=" Glyph selector"
    descriptions[60]=" Interactive control file"
    descriptions[61]=" Shell commands"
    descriptions[62]=" Some Hypr GUI you might want to use"
    descriptions[63]=" Previous theme"
    descriptions[64]="   Pipes stdouts to less"
    descriptions[65]="   Diff preserved dotfiles"
    descriptions[66]=" Overwrite current dots from the user "
    descriptions[67]="  Print focused monitor"
    descriptions[68]=" Just reload"
    descriptions[69]=" [*] Set wallbash mode. [0] [1] [2] [3] "
    descriptions[70]=" health checker"
    descriptions[71]=" Disable tranparency"
    descriptions[72]="  Reinitialize screencap"
    descriptions[73]=" Links a clone directory. Useful if you want to change your CloneDir"
    descriptions[74]=" Reloads waybar"
    descriptions[75]=" Inhibits idle when player status: 'Playing"
    descriptions[76]=" Reset changes"
    descriptions[77]="  Print all outputs"
    descriptions[78]=" Next theme"
    descriptions[79]=" Default animations"
    descriptions[80]=" Hyde-cli version"
    descriptions[81]=" Next wallppaer"
    descriptions[82]=" Wallpaper selector"
    descriptions[83]=" Set preavailable Hyde branch"
    descriptions[84]=" Theme selector"
    descriptions[85]="  Display this help message"
    descriptions[86]=" Disable blur"
    descriptions[87]=" Executables"
    descriptions[88]=" Flatpak setup for HyDE"
    descriptions[89]=" [*] Screenshot and screenrecord tool"
    descriptions[90]="  Drag to manually snip an area to screen record it"
    descriptions[91]=" Select sddm theme"
    descriptions[92]=" Clear some storage by deleting old backups"
    descriptions[93]=" wallbash dark mode"
    descriptions[94]=" [*]Set waybar size"
    descriptions[95]=" Set theme"
    descriptions[96]=" Patch a theme from different repository."
    descriptions[97]=" Shell selector"
    descriptions[98]="  Add custom file"
    descriptions[99]="  Drag to manually snip an area"
    descriptions[100]=" Add chaotic aur to you mirror"
    descriptions[101]=" Reload wallpaper cache"
    descriptions[102]=" Revert to a previous backup run by 'Hyde backup all'. "

    local -A literal_transitions
    literal_transitions[1]="([49]=24 [24]=25 [51]=4 [80]=5 [3]=6 [31]=7 [54]=8 [83]=9 [58]=10 [87]=11 [62]=14 [60]=12 [61]=13 [66]=15 [39]=16 [16]=17 [41]=18 [20]=19 [70]=20 [29]=21 [48]=23 [47]=2 [68]=3)"
    literal_transitions[2]="([74]=26 [94]=34 [1]=26)"
    literal_transitions[6]="([46]=26 [69]=30)"
    literal_transitions[7]="([78]=26 [84]=26 [96]=26 [63]=26 [95]=26)"
    literal_transitions[8]="([91]=26)"
    literal_transitions[10]="([33]=26 [101]=26)"
    literal_transitions[11]="([75]=26 [43]=26 [89]=27)"
    literal_transitions[12]="([10]=26)"
    literal_transitions[13]="([97]=26)"
    literal_transitions[14]="([55]=26 [35]=26 [59]=26 [32]=29 [37]=33)"
    literal_transitions[17]="([19]=26 [52]=26 [92]=26 [102]=26)"
    literal_transitions[19]="([82]=26 [81]=26 [30]=26 [6]=26)"
    literal_transitions[20]="([12]=32)"
    literal_transitions[21]="([44]=26 [88]=26 [100]=26)"
    literal_transitions[24]="([73]=26 [23]=26 [18]=26 [2]=26)"
    literal_transitions[25]="([50]=26 [57]=26 [9]=31 [76]=26 [15]=35)"
    literal_transitions[27]="([17]=26 [90]=26 [28]=26 [67]=26 [36]=26 [72]=26 [99]=26 [77]=26 [27]=26)"
    literal_transitions[28]="([4]=26)"
    literal_transitions[29]="([8]=26 [85]=26 [22]=26 [53]=26 [98]=26 [25]=26)"
    literal_transitions[30]="([34]=26 [40]=26 [93]=26 [11]=26)"
    literal_transitions[31]="([13]=26 [86]=26 [14]=26 [71]=26)"
    literal_transitions[32]="([64]=26 [65]=26 [5]=26)"
    literal_transitions[33]="([38]=26 [26]=26 [56]=26)"
    literal_transitions[34]="([42]=26)"
    literal_transitions[35]="([7]=26 [21]=26 [79]=26 [45]=26)"

    local -A match_anything_transitions
    match_anything_transitions=([4]=26 [15]=26 [3]=26 [1]=22 [18]=26 [16]=26 [9]=26 [22]=28 [5]=26 [23]=26)

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
