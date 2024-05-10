function _Hyde
    set COMP_LINE (commandline --cut-at-cursor)

    set COMP_WORDS
    echo $COMP_LINE | read --tokenize --array COMP_WORDS
    if string match --quiet --regex '.*\s$' $COMP_LINE
        set COMP_CWORD (math (count $COMP_WORDS) + 1)
    else
        set COMP_CWORD (count $COMP_WORDS)
    end

    set --local literals "control" "Clone" "wallbash" "::=" "prev" "--opacity" "-j" "chaotic_aur" "save" "Config" "3" "--borderangle" "--animations" "unset" "--stop" "backup" "BackUp" "list" "wallpaper" "--borderangle" "-p" "Config" "-w" "power" "d" "--scan" "inject" "--record-focus" "set" "theme" "binds" "rebuild" "0" "screencap" "audio_idle" "-freeze" "size" "pastebin" "c" "man" "1" "systeminfo" "events" "asus_patch" "--blur" "toggle" "waybar" "upgrade" "restore" "toggle" "update" "all" "check" "sddm" "-d" "emoji" "game" "cache" "w" "control" "shell" "show" "prev" "sync" "glyph" "--print-monitor" "reload" "mode" "--opacity" "--reset" "Link" "reload" "--print-all" "reset" "next" "--animations" "version" "next" "select" "branch" "select" "--blur" "-h" "run" "screencap" "--record-snip" "theme" "clean" "2" "-f" "set" "patch" "select" "--print-snip" "Config" "reload" "revert"

    set --local descriptions
    set descriptions[1] " Edit waybar control file"
    set descriptions[2] " Restores dots from a clone repository "
    set descriptions[3] " Toggle to use wallpaper accent themes"
    set descriptions[5] " Previous wallpaper"
    set descriptions[6] " Default tranparency"
    set descriptions[7] "  Show the JSON format"
    set descriptions[8] " Add chaotic aur"
    set descriptions[9] " [*] Save power by disabling features"
    set descriptions[10] " Manage restore control list"
    set descriptions[11] " wallbash light mode"
    set descriptions[12] " Disable border angle animation"
    set descriptions[13] " Disable animations"
    set descriptions[14] " [*] Unset specific changes"
    set descriptions[15] "  Stop every instance of Screencap"
    set descriptions[16] " Backing up commands"
    set descriptions[17] " Restores dots from previous backup"
    set descriptions[18] " List the backup"
    set descriptions[19] " Wallpaper commands"
    set descriptions[20] " Default border angle animation"
    set descriptions[21] "  Show the pretty format"
    set descriptions[22] " Only restores dots from default '/Configs'"
    set descriptions[23] "  Custom width"
    set descriptions[24] " Power Options"
    set descriptions[25] " cliphist list and delete selected"
    set descriptions[26] "  Use 'tesseract' to scan image then add to clipboard"
    set descriptions[27] " User/Device specific scripts that might be useful"
    set descriptions[28] "  Record focused monitor"
    set descriptions[29] " Set /Path/to/Wallpapers as new wallpaper directory"
    set descriptions[30] " Theme commands"
    set descriptions[31] " [*] Show keybind hints"
    set descriptions[32] " Force rebuild cache"
    set descriptions[33] " wallbash disabled"
    set descriptions[34] " Use rofi to select screenshot options "
    set descriptions[35] " Inhibits idle when player state: 'Playing"
    set descriptions[36] "  Frozen screen, drag to manually snip an area"
    set descriptions[37] " Set waybar size"
    set descriptions[38] " [*] Pastebin manager "
    set descriptions[39] " cliphist list and copy selected"
    set descriptions[40] " Show Manual"
    set descriptions[41] " wallbash auto"
    set descriptions[42] " System information"
    set descriptions[43] " Watches hyprland events and executes actions"
    set descriptions[44] " Fixes issues for asus devices"
    set descriptions[45] " Default blur"
    set descriptions[46] " Cycles wallbash [0] off [1] auto [2] dark [3] light"
    set descriptions[47] " Waybar commands"
    set descriptions[48] " Upgrades dots from the repository"
    set descriptions[49] " Restore dots"
    set descriptions[50] " Toggle ﯦ Set/unset current changes'"
    set descriptions[51] " Pull updates from Hyde repository"
    set descriptions[52] " Backs up the current configuration"
    set descriptions[53] " Hyde health Checker"
    set descriptions[54] " Sddm commands"
    set descriptions[55] "  Add custom delimiter symbol (default '>')"
    set descriptions[56] " Emoji selector"
    set descriptions[57] " Toggle game mode"
    set descriptions[58] " Manages Hyde's cache"
    set descriptions[59] " cliphist wipe database"
    set descriptions[60] " Interactive control file"
    set descriptions[61] " Shell commands"
    set descriptions[62] " Some Hypr GUI you might want to use"
    set descriptions[63] " Previous theme"
    set descriptions[64] " Overwrite current dots from the user "
    set descriptions[65] " Glyph selector"
    set descriptions[66] "  Print focused monitor"
    set descriptions[67] " Just reload"
    set descriptions[68] " [*] Set wallbash mode. [0] [1] [2] [3] "
    set descriptions[69] " Disable tranparency"
    set descriptions[70] "  Reinitialize screencap"
    set descriptions[71] " Links a clone directory. Useful if you want to change your CloneDir"
    set descriptions[72] " Reloads waybar"
    set descriptions[73] "  Print all outputs"
    set descriptions[74] " Reset changes"
    set descriptions[75] " Next theme"
    set descriptions[76] " Default animations"
    set descriptions[77] " Hyde-cli version"
    set descriptions[78] " Next wallppaer"
    set descriptions[79] " Wallpaper selector"
    set descriptions[80] " Set preavailable Hyde branch"
    set descriptions[81] " Theme selector"
    set descriptions[82] " Disable blur"
    set descriptions[83] "  Display this help message"
    set descriptions[84] " Executables"
    set descriptions[85] " [*] Screenshot and screenrecord tool"
    set descriptions[86] "  Drag to manually snip an area to screen record it"
    set descriptions[87] " Select sddm theme"
    set descriptions[88] " Clear some storage by deleting old backups"
    set descriptions[89] " wallbash dark mode"
    set descriptions[90] "  Add custom file"
    set descriptions[91] " Set theme"
    set descriptions[92] " Patch a theme from different repository."
    set descriptions[93] " Shell selector"
    set descriptions[94] "  Drag to manually snip an area"
    set descriptions[95] " Check missing File/Directory"
    set descriptions[96] " Reload wallpaper cache"
    set descriptions[97] " Revert to a previous backup run by 'Hyde backup all'. "

    set --local literal_transitions
    set literal_transitions[1] "set inputs 49 24 51 77 3 53 30 54 80 58 84 60 61 62 64 40 16 42 19 27 48 47 67; set tos 24 25 4 5 6 7 8 9 10 12 13 14 15 16 17 18 19 20 21 22 23 2 3"
    set literal_transitions[2] "set inputs 72 37 1; set tos 26 26 26"
    set literal_transitions[6] "set inputs 46 68; set tos 26 31"
    set literal_transitions[7] "set inputs 95; set tos 26"
    set literal_transitions[8] "set inputs 75 81 92 63 91; set tos 26 26 26 26 26"
    set literal_transitions[9] "set inputs 87; set tos 26"
    set literal_transitions[12] "set inputs 32 96; set tos 26 26"
    set literal_transitions[13] "set inputs 43 35 85; set tos 26 26 27"
    set literal_transitions[14] "set inputs 10; set tos 26"
    set literal_transitions[15] "set inputs 93; set tos 26"
    set literal_transitions[16] "set inputs 56 34 65 31 38; set tos 26 26 26 33 30"
    set literal_transitions[19] "set inputs 18 52 88 97; set tos 26 26 26 26"
    set literal_transitions[21] "set inputs 79 78 29 5; set tos 26 26 26 26"
    set literal_transitions[22] "set inputs 8 44; set tos 26 26"
    set literal_transitions[24] "set inputs 71 22 17 2; set tos 26 26 26 26"
    set literal_transitions[25] "set inputs 50 57 9 74 14; set tos 26 26 28 26 29"
    set literal_transitions[27] "set inputs 15 86 28 66 36 70 94 73 26; set tos 26 26 26 26 26 26 26 26 26"
    set literal_transitions[28] "set inputs 13 82 12 69; set tos 26 26 26 26"
    set literal_transitions[29] "set inputs 6 20 76 45; set tos 26 26 26 26"
    set literal_transitions[30] "set inputs 39 25 59; set tos 26 26 26"
    set literal_transitions[31] "set inputs 33 41 89 11; set tos 26 26 26 26"
    set literal_transitions[32] "set inputs 4; set tos 26"
    set literal_transitions[33] "set inputs 7 83 21 55 90 23; set tos 26 26 26 26 26 26"

    set --local match_anything_transitions_from 11 4 3 17 1 20 18 10 5 23
    set --local match_anything_transitions_to 32 26 26 26 11 26 26 26 26 26

    set --local state 1
    set --local word_index 2
    while test $word_index -lt $COMP_CWORD
        set --local -- word $COMP_WORDS[$word_index]

        if set --query literal_transitions[$state] && test -n $literal_transitions[$state]
            set --local --erase inputs
            set --local --erase tos
            eval $literal_transitions[$state]

            if contains -- $word $literals
                set --local literal_matched 0
                for literal_id in (seq 1 (count $literals))
                    if test $literals[$literal_id] = $word
                        set --local index (contains --index -- $literal_id $inputs)
                        set state $tos[$index]
                        set word_index (math $word_index + 1)
                        set literal_matched 1
                        break
                    end
                end
                if test $literal_matched -ne 0
                    continue
                end
            end
        end

        if set --query match_anything_transitions_from[$state] && test -n $match_anything_transitions_from[$state]
            set --local index (contains --index -- $state $match_anything_transitions_from)
            set state $match_anything_transitions_to[$index]
            set word_index (math $word_index + 1)
            continue
        end

        return 1
    end

    if set --query literal_transitions[$state] && test -n $literal_transitions[$state]
        set --local --erase inputs
        set --local --erase tos
        eval $literal_transitions[$state]
        for literal_id in $inputs
            if test -n $descriptions[$literal_id]
                printf '%s\t%s\n' $literals[$literal_id] $descriptions[$literal_id]
            else
                printf '%s\n' $literals[$literal_id]
            end
        end
    end


    return 0
end

complete --command Hyde --no-files --arguments "(_Hyde)"
