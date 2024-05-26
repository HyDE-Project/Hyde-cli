function _Hyde
    set COMP_LINE (commandline --cut-at-cursor)

    set COMP_WORDS
    echo $COMP_LINE | read --tokenize --array COMP_WORDS
    if string match --quiet --regex '.*\s$' $COMP_LINE
        set COMP_CWORD (math (count $COMP_WORDS) + 1)
    else
        set COMP_CWORD (count $COMP_WORDS)
    end

    set --local literals "revert" "--uninstall" "--install" "wallbash" "--opacity" "-j" "save" "unset" "3" "--rebuild" "--animations" "--stop" "backup" "BackUp" "list" "cursor" "-p" "--no-custom" "Config" "d" "--scan" "--record-focus" "theme" "bookmarks" "0" "-freeze" "pastebin" "1" "systeminfo" "--all" "theme" "toggle" "upgrade" "waybar" "toggle" "reload" "update" "all" "glyph" "--print-monitor" "w" "game" "shell" "Config" "info" "reload" "reset" "--animations" "version" "select" "--blur" "theme" "clean" "size" "reload" "-f" "--print-snip" "reload" "Clone" "check" "override" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "show" "-w" "inject" "power" "set" "binds" "rebuild" "screencap" "c" "man" "asus_patch" "events" "--blur" "restore" "-d" "emoji" "sddm" "run" "cache" "control" "prev" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "flatpak" "Config" "screencap" "--record-snip" "2" "--revert" "set" "patch" "select" "Package" "control"

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
    set descriptions[10] "  force rebuild cached bookmark paths"
    set descriptions[11] " Disable animations"
    set descriptions[12] "  Stop every instance of Screencap"
    set descriptions[13] " Backing up commands"
    set descriptions[14] " Restores dots from previous backup"
    set descriptions[15] " List the backup"
    set descriptions[16] " Cursor setting"
    set descriptions[17] "  Show the pretty format"
    set descriptions[18] "    run without custom '.lst' bookmark files"
    set descriptions[19] " Only restores dots from default '/Configs'"
    set descriptions[20] " cliphist list and delete selected"
    set descriptions[21] "  Use 'tesseract' to scan image then add to clipboard"
    set descriptions[22] "  Record focused monitor"
    set descriptions[23] " Theme commands"
    set descriptions[24] " [*] Bookmark selector"
    set descriptions[25] " wallbash disabled"
    set descriptions[26] "  Frozen screen, drag to manually snip an area"
    set descriptions[27] " [*] Pastebin manager "
    set descriptions[28] " wallbash auto"
    set descriptions[29] " System information"
    set descriptions[30] " Change all the pre-set sizes"
    set descriptions[31] " Set cursor theme"
    set descriptions[32] " Cycles wallbash [0] off [1] auto [2] dark [3] light"
    set descriptions[33] " Upgrades dots from the repository"
    set descriptions[34] " Waybar commands"
    set descriptions[35] " Toggle ﯦ Set/unset current changes'"
    set descriptions[36] " Just reload"
    set descriptions[37] " Pull updates from Hyde repository"
    set descriptions[38] " Backs up the current configuration"
    set descriptions[39] " Glyph selector"
    set descriptions[40] "  Print focused monitor"
    set descriptions[41] " cliphist wipe database"
    set descriptions[42] " Toggle game mode"
    set descriptions[43] " Shell commands"
    set descriptions[44] " [*] Hyde Config File & Directory status"
    set descriptions[45] " Check active cursor status (only gsettings)"
    set descriptions[46] " Reloads waybar"
    set descriptions[47] " Reset changes"
    set descriptions[48] " Default animations"
    set descriptions[49] " Hyde-cli version"
    set descriptions[50] " Theme selector"
    set descriptions[51] " Disable blur"
    set descriptions[52] " Select sddm theme"
    set descriptions[53] " Clear some storage by deleting old backups"
    set descriptions[54] " [*]Set waybar size"
    set descriptions[55] " Reload cursors"
    set descriptions[56] "  Add custom file"
    set descriptions[57] "  Drag to manually snip an area"
    set descriptions[58] " Reload wallpaper cache"
    set descriptions[59] " Restores dots from a clone repository "
    set descriptions[60] " Information about Hyde and its components"
    set descriptions[61] " Overwrite current dots from the prefered user dir "
    set descriptions[63] "   Diff mismatched dotfiles"
    set descriptions[64] " Previous wallpaper"
    set descriptions[65] " Disable border angle animation"
    set descriptions[66] " Wallpaper commands"
    set descriptions[67] " Default border angle animation"
    set descriptions[68] " Useful GUI util"
    set descriptions[69] "  Custom width"
    set descriptions[70] " User/Device specific scripts that might be useful"
    set descriptions[71] " Power Options"
    set descriptions[72] " Set /Path/to/Wallpapers as new wallpaper directory"
    set descriptions[73] " [*] Show keybind hints"
    set descriptions[74] " Force rebuild cache"
    set descriptions[75] " Use rofi to select screenshot options "
    set descriptions[76] " cliphist list and copy selected"
    set descriptions[77] " Show Manual"
    set descriptions[78] " Fixes issues for asus devices"
    set descriptions[79] " Watches hyprland events and executes actions"
    set descriptions[80] " Default blur"
    set descriptions[81] " Restore dots"
    set descriptions[82] "  Add custom delimiter symbol (default '>')"
    set descriptions[83] " Emoji selector"
    set descriptions[84] " Sddm commands"
    set descriptions[85] " Executable utilities"
    set descriptions[86] " Manages Hyde's cache"
    set descriptions[87] " Interactive control file"
    set descriptions[88] " Previous theme"
    set descriptions[89] " [*] Add chaotic aur to you mirror"
    set descriptions[90] "   Pipes STDOUT to less"
    set descriptions[91] " [*] Set wallbash mode. [0] [1] [2] [3] "
    set descriptions[92] " Disable tranparency"
    set descriptions[93] "  Reinitialize screencap"
    set descriptions[94] " Links a clone directory. Useful if you want to change your CloneDir"
    set descriptions[95] " Inhibits idle when player status: 'Playing"
    set descriptions[96] "  Print all outputs"
    set descriptions[97] " Next theme"
    set descriptions[98] "  Display this help message"
    set descriptions[99] " Wallpaper selector"
    set descriptions[100] "   Diff preserved dotfiles"
    set descriptions[101] " Set cursor size"
    set descriptions[102] " Next wallppaer"
    set descriptions[103] " Set preavailable Hyde branch"
    set descriptions[104] " Flatpak setup for HyDE"
    set descriptions[105] " Manage users restore control list"
    set descriptions[106] " [*] Screenshot and screenrecord tool"
    set descriptions[107] "  Drag to manually snip an area to screen record it"
    set descriptions[108] " wallbash dark mode"
    set descriptions[109] " Converts chaotic aur packages to AUR"
    set descriptions[110] " Set theme"
    set descriptions[111] " Patch a theme from different repository."
    set descriptions[112] " Shell selector"
    set descriptions[113] " Hyde core Package status"
    set descriptions[114] " Edit waybar control file"

    set --local literal_transitions
    set literal_transitions[1] "set inputs 34 60 37 49 4 61 23 84 85 103 86 36 43 87 77 29 13 66 16 68 70 33 71 81; set tos 25 3 4 5 6 7 8 10 11 13 12 26 14 15 16 17 18 19 20 21 22 24 2 9"
    set literal_transitions[2] "set inputs 35 42 7 47 8; set tos 28 28 36 28 35"
    set literal_transitions[3] "set inputs 113 44; set tos 28 31"
    set literal_transitions[6] "set inputs 32 91; set tos 28 34"
    set literal_transitions[8] "set inputs 50 97 111 88 110; set tos 28 28 28 28 28"
    set literal_transitions[9] "set inputs 94 19 14 59; set tos 28 28 28 28"
    set literal_transitions[10] "set inputs 52; set tos 28"
    set literal_transitions[11] "set inputs 95 79 106; set tos 28 28 27"
    set literal_transitions[12] "set inputs 74 58; set tos 28 28"
    set literal_transitions[14] "set inputs 112; set tos 28"
    set literal_transitions[15] "set inputs 105; set tos 28"
    set literal_transitions[18] "set inputs 15 38 53 1; set tos 28 28 28 28"
    set literal_transitions[19] "set inputs 99 102 72 64; set tos 28 28 28 28"
    set literal_transitions[20] "set inputs 55 45 101 31; set tos 28 28 28 28"
    set literal_transitions[21] "set inputs 83 75 27 39 73 24; set tos 28 28 30 28 33 32"
    set literal_transitions[22] "set inputs 78 104 89; set tos 28 28 37"
    set literal_transitions[25] "set inputs 46 54 114; set tos 28 38 28"
    set literal_transitions[27] "set inputs 12 107 22 40 26 93 57 96 21; set tos 28 28 28 28 28 28 28 28 28"
    set literal_transitions[29] "set inputs 62; set tos 28"
    set literal_transitions[30] "set inputs 41 20 76; set tos 28 28 28"
    set literal_transitions[31] "set inputs 100 90 63; set tos 28 28 28"
    set literal_transitions[32] "set inputs 10 18; set tos 28 28"
    set literal_transitions[33] "set inputs 6 98 17 69 82 56; set tos 28 28 28 28 28 28"
    set literal_transitions[34] "set inputs 25 28 108 9; set tos 28 28 28 28"
    set literal_transitions[35] "set inputs 5 48 67 80; set tos 28 28 28 28"
    set literal_transitions[36] "set inputs 11 51 65 92; set tos 28 28 28 28"
    set literal_transitions[37] "set inputs 2 109 3; set tos 28 28 28"
    set literal_transitions[38] "set inputs 30; set tos 28"

    set --local match_anything_transitions_from 24 4 13 17 1 7 16 5 23 26
    set --local match_anything_transitions_to 28 28 28 28 23 28 28 28 29 28

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
