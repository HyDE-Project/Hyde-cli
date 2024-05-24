function _Hyde
    set COMP_LINE (commandline --cut-at-cursor)

    set COMP_WORDS
    echo $COMP_LINE | read --tokenize --array COMP_WORDS
    if string match --quiet --regex '.*\s$' $COMP_LINE
        set COMP_CWORD (math (count $COMP_WORDS) + 1)
    else
        set COMP_CWORD (count $COMP_WORDS)
    end

    set --local literals "revert" "--uninstall" "--install" "wallbash" "--opacity" "-j" "save" "unset" "3" "--stop" "--animations" "backup" "BackUp" "list" "cursor" "-p" "Config" "d" "--scan" "--record-focus" "theme" "-freeze" "0" "pastebin" "1" "systeminfo" "--all" "theme" "toggle" "upgrade" "waybar" "toggle" "reload" "update" "all" "glyph" "--print-monitor" "w" "game" "shell" "Config" "info" "reload" "reset" "--animations" "version" "select" "--blur" "run" "theme" "clean" "size" "reload" "-f" "--print-snip" "reload" "Clone" "check" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "-w" "inject" "power" "bookmarks" "set" "binds" "rebuild" "screencap" "c" "man" "asus_patch" "events" "--blur" "restore" "-d" "emoji" "sddm" "cache" "control" "show" "prev" "sync" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "flatpak" "Config" "screencap" "--record-snip" "2" "--revert" "set" "patch" "select" "Package" "control"

    set --local descriptions
    set descriptions[1] " Revert to a previous backup run by 'Hyde backup all'. "
    set descriptions[2] " Removes Chaotic Aur"
    set descriptions[3] " Setup Choatic Aur, append [fresh] to run in fresh install mode"
    set descriptions[4] " Toggle to use wallpaper accent themes"
    set descriptions[5] " Default tranparency"
    set descriptions[6] "  Show the JSON format"
    set descriptions[7] " [*] Save power by disabling features"
    set descriptions[8] " [*] Unset specific changes"
    set descriptions[9] " wallbash light mode"
    set descriptions[10] "  Stop every instance of Screencap"
    set descriptions[11] " Disable animations"
    set descriptions[12] " Backing up commands"
    set descriptions[13] " Restores dots from previous backup"
    set descriptions[14] " List the backup"
    set descriptions[15] " Cursor setting"
    set descriptions[16] "  Show the pretty format"
    set descriptions[17] " Only restores dots from default '/Configs'"
    set descriptions[18] " cliphist list and delete selected"
    set descriptions[19] "  Use 'tesseract' to scan image then add to clipboard"
    set descriptions[20] "  Record focused monitor"
    set descriptions[21] " Theme commands"
    set descriptions[22] "  Frozen screen, drag to manually snip an area"
    set descriptions[23] " wallbash disabled"
    set descriptions[24] " [*] Pastebin manager "
    set descriptions[25] " wallbash auto"
    set descriptions[26] " System information"
    set descriptions[27] " Change all the pre-set sizes"
    set descriptions[28] " Set cursor theme"
    set descriptions[29] " Cycles wallbash [0] off [1] auto [2] dark [3] light"
    set descriptions[30] " Upgrades dots from the repository"
    set descriptions[31] " Waybar commands"
    set descriptions[32] " Toggle ﯦ Set/unset current changes'"
    set descriptions[33] " Just reload"
    set descriptions[34] " Pull updates from Hyde repository"
    set descriptions[35] " Backs up the current configuration"
    set descriptions[36] " Glyph selector"
    set descriptions[37] "  Print focused monitor"
    set descriptions[38] " cliphist wipe database"
    set descriptions[39] " Toggle game mode"
    set descriptions[40] " Shell commands"
    set descriptions[41] " [*] Hyde Config File & Directory status"
    set descriptions[42] " Check active cursor status (only gsettings)"
    set descriptions[43] " Reloads waybar"
    set descriptions[44] " Reset changes"
    set descriptions[45] " Default animations"
    set descriptions[46] " Hyde-cli version"
    set descriptions[47] " Theme selector"
    set descriptions[48] " Disable blur"
    set descriptions[49] " Executables"
    set descriptions[50] " Select sddm theme"
    set descriptions[51] " Clear some storage by deleting old backups"
    set descriptions[52] " [*]Set waybar size"
    set descriptions[53] " Reload cursors"
    set descriptions[54] "  Add custom file"
    set descriptions[55] "  Drag to manually snip an area"
    set descriptions[56] " Reload wallpaper cache"
    set descriptions[57] " Restores dots from a clone repository "
    set descriptions[58] " Information about Hyde and its components"
    set descriptions[60] "   Diff mismatched dotfiles"
    set descriptions[61] " Previous wallpaper"
    set descriptions[62] " Disable border angle animation"
    set descriptions[63] " Wallpaper commands"
    set descriptions[64] " Default border angle animation"
    set descriptions[65] "  Custom width"
    set descriptions[66] " User/Device specific scripts that might be useful"
    set descriptions[67] " Power Options"
    set descriptions[68] " Bookmark selector"
    set descriptions[69] " Set /Path/to/Wallpapers as new wallpaper directory"
    set descriptions[70] " [*] Show keybind hints"
    set descriptions[71] " Force rebuild cache"
    set descriptions[72] " Use rofi to select screenshot options "
    set descriptions[73] " cliphist list and copy selected"
    set descriptions[74] " Show Manual"
    set descriptions[75] " Fixes issues for asus devices"
    set descriptions[76] " Watches hyprland events and executes actions"
    set descriptions[77] " Default blur"
    set descriptions[78] " Restore dots"
    set descriptions[79] "  Add custom delimiter symbol (default '>')"
    set descriptions[80] " Emoji selector"
    set descriptions[81] " Sddm commands"
    set descriptions[82] " Manages Hyde's cache"
    set descriptions[83] " Interactive control file"
    set descriptions[84] " Some Hypr GUI you might want to use"
    set descriptions[85] " Previous theme"
    set descriptions[86] " Overwrite current dots from the user "
    set descriptions[87] " [*] Add chaotic aur to you mirror"
    set descriptions[88] "   Pipes STDOUT to less"
    set descriptions[89] " [*] Set wallbash mode. [0] [1] [2] [3] "
    set descriptions[90] " Disable tranparency"
    set descriptions[91] "  Reinitialize screencap"
    set descriptions[92] " Links a clone directory. Useful if you want to change your CloneDir"
    set descriptions[93] " Inhibits idle when player status: 'Playing"
    set descriptions[94] "  Print all outputs"
    set descriptions[95] " Next theme"
    set descriptions[96] "  Display this help message"
    set descriptions[97] " Wallpaper selector"
    set descriptions[98] "   Diff preserved dotfiles"
    set descriptions[99] " Set cursor size"
    set descriptions[100] " Next wallppaer"
    set descriptions[101] " Set preavailable Hyde branch"
    set descriptions[102] " Flatpak setup for HyDE"
    set descriptions[103] " Manage users restore control list"
    set descriptions[104] " [*] Screenshot and screenrecord tool"
    set descriptions[105] "  Drag to manually snip an area to screen record it"
    set descriptions[106] " wallbash dark mode"
    set descriptions[107] " Converts chaotic aur packages to AUR"
    set descriptions[108] " Set theme"
    set descriptions[109] " Patch a theme from different repository."
    set descriptions[110] " Shell selector"
    set descriptions[111] " Hyde core Package status"
    set descriptions[112] " Edit waybar control file"

    set --local literal_transitions
    set literal_transitions[1] "set inputs 31 58 34 46 4 33 21 81 101 82 49 84 40 83 86 74 26 12 63 15 66 30 67 78; set tos 25 3 4 5 6 26 8 9 10 11 12 15 13 14 16 17 18 19 20 21 22 24 2 7"
    set literal_transitions[2] "set inputs 32 39 7 44 8; set tos 28 28 32 28 33"
    set literal_transitions[3] "set inputs 111 41; set tos 28 31"
    set literal_transitions[6] "set inputs 29 89; set tos 28 29"
    set literal_transitions[7] "set inputs 92 17 13 57; set tos 28 28 28 28"
    set literal_transitions[8] "set inputs 47 95 109 85 108; set tos 28 28 28 28 28"
    set literal_transitions[9] "set inputs 50; set tos 28"
    set literal_transitions[11] "set inputs 71 56; set tos 28 28"
    set literal_transitions[12] "set inputs 93 76 104; set tos 28 28 37"
    set literal_transitions[13] "set inputs 110; set tos 28"
    set literal_transitions[14] "set inputs 103; set tos 28"
    set literal_transitions[15] "set inputs 80 68 72 36 70 24; set tos 28 28 28 28 30 27"
    set literal_transitions[19] "set inputs 14 35 51 1; set tos 28 28 28 28"
    set literal_transitions[20] "set inputs 97 100 69 61; set tos 28 28 28 28"
    set literal_transitions[21] "set inputs 53 42 99 28; set tos 28 28 28 28"
    set literal_transitions[22] "set inputs 75 102 87; set tos 28 28 34"
    set literal_transitions[25] "set inputs 43 52 112; set tos 28 36 28"
    set literal_transitions[27] "set inputs 38 18 73; set tos 28 28 28"
    set literal_transitions[29] "set inputs 23 25 106 9; set tos 28 28 28 28"
    set literal_transitions[30] "set inputs 6 96 16 65 79 54; set tos 28 28 28 28 28 28"
    set literal_transitions[31] "set inputs 98 88 60; set tos 28 28 28"
    set literal_transitions[32] "set inputs 11 48 62 90; set tos 28 28 28 28"
    set literal_transitions[33] "set inputs 5 45 64 77; set tos 28 28 28 28"
    set literal_transitions[34] "set inputs 2 107 3; set tos 28 28 28"
    set literal_transitions[35] "set inputs 59; set tos 28"
    set literal_transitions[36] "set inputs 27; set tos 28"
    set literal_transitions[37] "set inputs 10 105 20 37 22 91 55 94 19; set tos 28 28 28 28 28 28 28 28 28"

    set --local match_anything_transitions_from 4 17 1 18 10 16 5 23 26 24
    set --local match_anything_transitions_to 28 28 23 28 28 28 28 35 28 28

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
