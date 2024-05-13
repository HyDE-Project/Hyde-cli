function _Hyde
    set COMP_LINE (commandline --cut-at-cursor)

    set COMP_WORDS
    echo $COMP_LINE | read --tokenize --array COMP_WORDS
    if string match --quiet --regex '.*\s$' $COMP_LINE
        set COMP_CWORD (math (count $COMP_WORDS) + 1)
    else
        set COMP_CWORD (count $COMP_WORDS)
    end

    set --local literals "control" "Clone" "wallbash" "::=" "--mismatch" "prev" "--opacity" "-j" "save" "Config" "3" "Config" "--animations" "--borderangle" "unset" "backup" "--stop" "BackUp" "list" "wallpaper" "--borderangle" "-p" "Config" "power" "-w" "d" "--scan" "--record-focus" "inject" "set" "theme" "binds" "rebuild" "0" "screencap" "-freeze" "pastebin" "c" "man" "1" "systeminfo" "--all" "events" "asus_patch" "--blur" "toggle" "waybar" "upgrade" "restore" "toggle" "update" "all" "-d" "sddm" "emoji" "w" "game" "cache" "glyph" "control" "shell" "show" "prev" "--less" "--presrve" "sync" "--print-monitor" "reload" "mode" "check" "--opacity" "--reset" "Link" "reload" "audio_idle" "reset" "--print-all" "next" "--animations" "version" "next" "select" "branch" "select" "-h" "--blur" "run" "flatpak" "screencap" "--record-snip" "theme" "clean" "2" "size" "set" "patch" "select" "-f" "--print-snip" "chaotic_aur" "reload" "revert"

    set --local descriptions
    set descriptions[1] " Edit waybar control file"
    set descriptions[2] " Restores dots from a clone repository "
    set descriptions[3] " Toggle to use wallpaper accent themes"
    set descriptions[5] "   Diff mismatched dotfiles"
    set descriptions[6] " Previous wallpaper"
    set descriptions[7] " Default tranparency"
    set descriptions[8] "  Show the JSON format"
    set descriptions[9] " [*] Save power by disabling features"
    set descriptions[10] " Manage restore control list"
    set descriptions[11] " wallbash light mode"
    set descriptions[12] " [*] check up Config File/Directory"
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
    set descriptions[24] " Power Options"
    set descriptions[25] "  Custom width"
    set descriptions[26] " cliphist list and delete selected"
    set descriptions[27] "  Use 'tesseract' to scan image then add to clipboard"
    set descriptions[28] "  Record focused monitor"
    set descriptions[29] " User/Device specific scripts that might be useful"
    set descriptions[30] " Set /Path/to/Wallpapers as new wallpaper directory"
    set descriptions[31] " Theme commands"
    set descriptions[32] " [*] Show keybind hints"
    set descriptions[33] " Force rebuild cache"
    set descriptions[34] " wallbash disabled"
    set descriptions[35] " Use rofi to select screenshot options "
    set descriptions[36] "  Frozen screen, drag to manually snip an area"
    set descriptions[37] " [*] Pastebin manager "
    set descriptions[38] " cliphist list and copy selected"
    set descriptions[39] " Show Manual"
    set descriptions[40] " wallbash auto"
    set descriptions[41] " System information"
    set descriptions[42] " Change all the pre-set sizes"
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
    set descriptions[53] "  Add custom delimiter symbol (default '>')"
    set descriptions[54] " Sddm commands"
    set descriptions[55] " Emoji selector"
    set descriptions[56] " cliphist wipe database"
    set descriptions[57] " Toggle game mode"
    set descriptions[58] " Manages Hyde's cache"
    set descriptions[59] " Glyph selector"
    set descriptions[60] " Interactive control file"
    set descriptions[61] " Shell commands"
    set descriptions[62] " Some Hypr GUI you might want to use"
    set descriptions[63] " Previous theme"
    set descriptions[64] "   Pipes stdouts to less"
    set descriptions[65] "   Diff preserved dotfiles"
    set descriptions[66] " Overwrite current dots from the user "
    set descriptions[67] "  Print focused monitor"
    set descriptions[68] " Just reload"
    set descriptions[69] " [*] Set wallbash mode. [0] [1] [2] [3] "
    set descriptions[70] " health checker"
    set descriptions[71] " Disable tranparency"
    set descriptions[72] "  Reinitialize screencap"
    set descriptions[73] " Links a clone directory. Useful if you want to change your CloneDir"
    set descriptions[74] " Reloads waybar"
    set descriptions[75] " Inhibits idle when player status: 'Playing"
    set descriptions[76] " Reset changes"
    set descriptions[77] "  Print all outputs"
    set descriptions[78] " Next theme"
    set descriptions[79] " Default animations"
    set descriptions[80] " Hyde-cli version"
    set descriptions[81] " Next wallppaer"
    set descriptions[82] " Wallpaper selector"
    set descriptions[83] " Set preavailable Hyde branch"
    set descriptions[84] " Theme selector"
    set descriptions[85] "  Display this help message"
    set descriptions[86] " Disable blur"
    set descriptions[87] " Executables"
    set descriptions[88] " Flatpak setup for HyDE"
    set descriptions[89] " [*] Screenshot and screenrecord tool"
    set descriptions[90] "  Drag to manually snip an area to screen record it"
    set descriptions[91] " Select sddm theme"
    set descriptions[92] " Clear some storage by deleting old backups"
    set descriptions[93] " wallbash dark mode"
    set descriptions[94] " [*]Set waybar size"
    set descriptions[95] " Set theme"
    set descriptions[96] " Patch a theme from different repository."
    set descriptions[97] " Shell selector"
    set descriptions[98] "  Add custom file"
    set descriptions[99] "  Drag to manually snip an area"
    set descriptions[100] " Add chaotic aur to you mirror"
    set descriptions[101] " Reload wallpaper cache"
    set descriptions[102] " Revert to a previous backup run by 'Hyde backup all'. "

    set --local literal_transitions
    set literal_transitions[1] "set inputs 49 24 51 80 3 31 54 83 58 87 62 60 61 66 39 16 41 20 70 29 48 47 68; set tos 24 25 4 5 6 7 8 9 10 11 14 12 13 15 16 17 18 19 20 21 23 2 3"
    set literal_transitions[2] "set inputs 74 94 1; set tos 26 34 26"
    set literal_transitions[6] "set inputs 46 69; set tos 26 30"
    set literal_transitions[7] "set inputs 78 84 96 63 95; set tos 26 26 26 26 26"
    set literal_transitions[8] "set inputs 91; set tos 26"
    set literal_transitions[10] "set inputs 33 101; set tos 26 26"
    set literal_transitions[11] "set inputs 75 43 89; set tos 26 26 27"
    set literal_transitions[12] "set inputs 10; set tos 26"
    set literal_transitions[13] "set inputs 97; set tos 26"
    set literal_transitions[14] "set inputs 55 35 59 32 37; set tos 26 26 26 29 33"
    set literal_transitions[17] "set inputs 19 52 92 102; set tos 26 26 26 26"
    set literal_transitions[19] "set inputs 82 81 30 6; set tos 26 26 26 26"
    set literal_transitions[20] "set inputs 12; set tos 32"
    set literal_transitions[21] "set inputs 44 88 100; set tos 26 26 26"
    set literal_transitions[24] "set inputs 73 23 18 2; set tos 26 26 26 26"
    set literal_transitions[25] "set inputs 50 57 9 76 15; set tos 26 26 31 26 35"
    set literal_transitions[27] "set inputs 17 90 28 67 36 72 99 77 27; set tos 26 26 26 26 26 26 26 26 26"
    set literal_transitions[28] "set inputs 4; set tos 26"
    set literal_transitions[29] "set inputs 8 85 22 53 98 25; set tos 26 26 26 26 26 26"
    set literal_transitions[30] "set inputs 34 40 93 11; set tos 26 26 26 26"
    set literal_transitions[31] "set inputs 13 86 14 71; set tos 26 26 26 26"
    set literal_transitions[32] "set inputs 64 65 5; set tos 26 26 26"
    set literal_transitions[33] "set inputs 38 26 56; set tos 26 26 26"
    set literal_transitions[34] "set inputs 42; set tos 26"
    set literal_transitions[35] "set inputs 7 21 79 45; set tos 26 26 26 26"

    set --local match_anything_transitions_from 4 15 3 1 18 16 9 22 5 23
    set --local match_anything_transitions_to 26 26 26 22 26 26 26 28 26 26

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
