function _Hyde
    set COMP_LINE (commandline --cut-at-cursor)

    set COMP_WORDS
    echo $COMP_LINE | read --tokenize --array COMP_WORDS
    if string match --quiet --regex '.*\s$' $COMP_LINE
        set COMP_CWORD (math (count $COMP_WORDS) + 1)
    else
        set COMP_CWORD (count $COMP_WORDS)
    end

    set --local literals "control" "revert" "wallbash" "::=" "prev" "--opacity" "-j" "chaotic_aur" "branch" "Config" "3" "save" "--animations" "--borderangle" "unset" "backup" "--stop" "BackUp" "list" "wallpaper" "--borderangle" "-p" "Config" "-w" "power" "d" "--scan" "inject" "--record-focus" "set" "theme" "binds" "rebuild" "0" "screencap" "audio_idle" "-freeze" "size" "pastebin" "c" "man" "1" "systeminfo" "events" "asus_patch" "--blur" "toggle" "waybar" "upgrade" "restore" "toggle" "update" "all" "-d" "sddm" "emoji" "w" "game" "cache" "glyph" "control" "shell" "show" "prev" "sync" "--print-monitor" "reload" "mode" "--opacity" "--reset" "Link" "reload" "--print-all" "reset" "next" "--animations" "version" "next" "select" "-h" "select" "--blur" "run" "screencap" "--record-snip" "theme" "clean" "2" "-f" "set" "patch" "select" "--print-snip" "reload" "Clone"

    set --local descriptions
    set descriptions[1] " Edit waybar control file"
    set descriptions[2] " Revert to a previous backup run by 'Hyde backup all'. "
    set descriptions[3] " Toggle to use wallpaper accent themes"
    set descriptions[5] " Previous wallpaper"
    set descriptions[6] " Default tranparency"
    set descriptions[7] "  Show the JSON format"
    set descriptions[8] " Add chaotic aur"
    set descriptions[9] " Set preavailable Hyde branch "
    set descriptions[10] " Manage restore control list"
    set descriptions[11] " wallbash light mode"
    set descriptions[12] " [*] Save power by disabling features"
    set descriptions[13] " Disable animations"
    set descriptions[14] " Disable border angle animation"
    set descriptions[15] " [*] Unset specific changes"
    set descriptions[16] " Backing up commands"
    set descriptions[17] "  Stop every instance of Screencap"
    set descriptions[18] " Restores dots from previous backup"
    set descriptions[19] " List the backup"
    set descriptions[20] " Wallpaper commands"
    set descriptions[21] " Default border angle animation"
    set descriptions[22] "  Show the pretty format"
    set descriptions[23] " Only restores dots from default '/Configs'"
    set descriptions[24] "  Custom width"
    set descriptions[25] " Power Options"
    set descriptions[26] " cliphist list and delete selected"
    set descriptions[27] "  Use 'tesseract' to scan image then add to clipboard"
    set descriptions[28] " User/Device specific scripts that might be useful"
    set descriptions[29] "  Record focused monitor"
    set descriptions[30] " Set /Path/to/Wallpapers as new wallpaper directory"
    set descriptions[31] " Theme commands"
    set descriptions[32] " [*] Show keybind hints"
    set descriptions[33] " Force rebuild cache"
    set descriptions[34] " wallbash disabled"
    set descriptions[35] " Use rofi to select screenshot options "
    set descriptions[36] " Inhibits idle when player state: 'Playing"
    set descriptions[37] "  Frozen screen, drag to manually snip an area"
    set descriptions[38] " Set waybar size"
    set descriptions[39] " [*] Pastebin manager "
    set descriptions[40] " cliphist list and copy selected"
    set descriptions[41] " Show Manual"
    set descriptions[42] " wallbash auto"
    set descriptions[43] " System information"
    set descriptions[44] " Watches hyprland events and executes actions"
    set descriptions[45] " Fixes issues for asus devices"
    set descriptions[46] " Default blur"
    set descriptions[47] " Cycles wallbash [0] off [1] auto [2] dark [3] light"
    set descriptions[48] " Waybar commands"
    set descriptions[49] " Upgrades dots from the repository"
    set descriptions[50] " Restore dots"
    set descriptions[51] " Toggle ﯦ Set/unset current changes'"
    set descriptions[52] " Pull updates from Hyde repository"
    set descriptions[53] " Backs up the current configuration"
    set descriptions[54] "  Add custom delimiter symbol (default '>')"
    set descriptions[55] " Sddm commands"
    set descriptions[56] " Emoji selector"
    set descriptions[57] " cliphist wipe database"
    set descriptions[58] " Toggle game mode"
    set descriptions[59] " Manages Hyde's cache"
    set descriptions[60] " Glyph selector"
    set descriptions[61] " Interactive control file"
    set descriptions[62] " Shell commands"
    set descriptions[63] " Some Hypr GUI you might want to use"
    set descriptions[64] " Previous theme"
    set descriptions[65] " Overwrite current dots from the user "
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
    set descriptions[80] "  Display this help message"
    set descriptions[81] " Theme selector"
    set descriptions[82] " Disable blur"
    set descriptions[83] " Executables"
    set descriptions[84] " [*] Screenshot and screenrecord tool"
    set descriptions[85] "  Drag to manually snip an area to screen record it"
    set descriptions[86] " Select sddm theme"
    set descriptions[87] " Clear some storage by deleting old backups"
    set descriptions[88] " wallbash dark mode"
    set descriptions[89] "  Add custom file"
    set descriptions[90] " Set theme"
    set descriptions[91] " Patch a theme from different repository."
    set descriptions[92] " Shell selector"
    set descriptions[93] "  Drag to manually snip an area"
    set descriptions[94] " Reload wallpaper cache"
    set descriptions[95] " Restores dots from a clone repository "

    set --local literal_transitions
    set literal_transitions[1] "set inputs 50 25 52 77 3 31 55 59 83 62 63 61 9 65 41 16 43 20 28 49 48 67; set tos 23 24 4 5 6 7 8 10 11 14 15 12 13 16 17 18 19 20 21 22 2 3"
    set literal_transitions[2] "set inputs 72 38 1; set tos 26 26 26"
    set literal_transitions[6] "set inputs 47 68; set tos 26 29"
    set literal_transitions[7] "set inputs 75 81 91 64 90; set tos 26 26 26 26 26"
    set literal_transitions[8] "set inputs 86; set tos 26"
    set literal_transitions[10] "set inputs 33 94; set tos 26 26"
    set literal_transitions[11] "set inputs 44 36 84; set tos 26 26 28"
    set literal_transitions[12] "set inputs 10; set tos 26"
    set literal_transitions[14] "set inputs 92; set tos 26"
    set literal_transitions[15] "set inputs 56 35 60 32 39; set tos 26 26 26 31 27"
    set literal_transitions[18] "set inputs 19 53 87 2; set tos 26 26 26 26"
    set literal_transitions[20] "set inputs 79 78 30 5; set tos 26 26 26 26"
    set literal_transitions[21] "set inputs 8 45; set tos 26 26"
    set literal_transitions[23] "set inputs 71 23 18 95; set tos 26 26 26 26"
    set literal_transitions[24] "set inputs 51 58 12 74 15; set tos 26 26 30 26 32"
    set literal_transitions[25] "set inputs 4; set tos 26"
    set literal_transitions[27] "set inputs 40 26 57; set tos 26 26 26"
    set literal_transitions[28] "set inputs 17 85 29 66 37 70 93 73 27; set tos 26 26 26 26 26 26 26 26 26"
    set literal_transitions[29] "set inputs 34 42 88 11; set tos 26 26 26 26"
    set literal_transitions[30] "set inputs 13 82 14 69; set tos 26 26 26 26"
    set literal_transitions[31] "set inputs 7 80 22 54 89 24; set tos 26 26 26 26 26 26"
    set literal_transitions[32] "set inputs 6 21 76 46; set tos 26 26 26 26"

    set --local match_anything_transitions_from 4 3 19 13 17 1 16 9 22 5
    set --local match_anything_transitions_to 26 26 26 26 26 9 26 25 26 26

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
