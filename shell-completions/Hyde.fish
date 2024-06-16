function _Hyde
    set COMP_LINE (commandline --cut-at-cursor)

    set COMP_WORDS
    echo $COMP_LINE | read --tokenize --array COMP_WORDS
    if string match --quiet --regex '.*\s$' $COMP_LINE
        set COMP_CWORD (math (count $COMP_WORDS) + 1)
    else
        set COMP_CWORD (count $COMP_WORDS)
    end

    set --local literals "revert" "--uninstall" "wallbash" "--opacity" "-j" "save" "unset" "3" "w" "--animations" "--stop" "d" "backup" "BackUp" "list" "cursor" "-p" "--no-custom" "Config" "--install" "--scan" "--record-focus" "theme" "bookmarks" "0" "-freeze" "toggle" "pastebin" "1" "systeminfo" "--all" "theme" "toggle" "upgrade" "waybar" "reload" "update" "all" "glyph" "c" "--print-monitor" "game" "shell" "Config" "info" "search" "reload" "reset" "--animations" "version" "select" "--blur" "theme" "clean" "size" "reload" "-f" "--print-snip" "reload" "Clone" "check" "s" "::=" "--mismatch" "prev" "--borderangle" "-s" "wallpaper" "--borderangle" "show" "inject" "power" "-b" "set" "binds" "rebuild" "screencap" "man" "asus_patch" "events" "override" "--rebuild" "--blur" "restore" "-d" "emoji" "sddm" "run" "cache" "control" "prev" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "flatpak" "Config" "screencap" "--record-snip" "2" "--revert" "set" "patch" "select" "Package" "control"

    set --local descriptions
    set descriptions[1] " Revert to a previous backup run by 'Hyde backup all'. "
    set descriptions[2] " Removes Chaotic Aur"
    set descriptions[3] " Toggle to use wallpaper accent themes"
    set descriptions[4] " Default tranparency"
    set descriptions[5] "  Show the JSON format"
    set descriptions[6] " [*] Save power by disabling features"
    set descriptions[7] " [*] Unset specific changes"
    set descriptions[8] " wallbash light mode"
    set descriptions[9] "	wipe database"
    set descriptions[10] " Disable animations"
    set descriptions[11] "  Stop every instance of Screencap"
    set descriptions[12] "	list and delete selected"
    set descriptions[13] " Backing up commands"
    set descriptions[14] " Restores dots from previous backup"
    set descriptions[15] " List the backup"
    set descriptions[16] " Cursor setting"
    set descriptions[17] "  Show the pretty format"
    set descriptions[18] "    run without custom '.lst' bookmark files"
    set descriptions[19] " Only restores dots from default '/Configs'"
    set descriptions[20] " Setup Chaotic Aur, append [fresh] to run in fresh install mode"
    set descriptions[21] "  Use 'tesseract' to scan image then add to clipboard"
    set descriptions[22] "  Record focused monitor"
    set descriptions[23] " Theme commands"
    set descriptions[24] " [*] Bookmark selector"
    set descriptions[25] " wallbash disabled"
    set descriptions[26] "  Frozen screen, drag to manually snip an area"
    set descriptions[27] " Toggle ﯦ  Set/unset current changes'"
    set descriptions[28] " [*] Pastebin manager "
    set descriptions[29] " wallbash auto"
    set descriptions[30] " System information"
    set descriptions[31] " Change all the pre-set sizes"
    set descriptions[32] " Set cursor theme"
    set descriptions[33] " Cycles wallbash [0] off [1] auto [2] dark [3] light"
    set descriptions[34] " Upgrades dots from the repository"
    set descriptions[35] " Waybar commands"
    set descriptions[36] " Just reload"
    set descriptions[37] " Pull updates from Hyde repository"
    set descriptions[38] " Backs up the current configuration"
    set descriptions[39] " Glyph selector"
    set descriptions[40] "	list and copy selected"
    set descriptions[41] "  Print focused monitor"
    set descriptions[42] " Toggle game mode"
    set descriptions[43] " Shell commands"
    set descriptions[44] " [*] Hyde Config File & Directory status"
    set descriptions[45] " Check active cursor status (only gsettings)"
    set descriptions[46] " [*] Web Search"
    set descriptions[47] " Reloads waybar"
    set descriptions[48] " Reset changes"
    set descriptions[49] " Default animations"
    set descriptions[50] " Hyde-cli version"
    set descriptions[51] " Theme selector"
    set descriptions[52] " Disable blur"
    set descriptions[53] " Select sddm theme"
    set descriptions[54] " Clear some storage by deleting old backups"
    set descriptions[55] " [*]Set waybar size"
    set descriptions[56] " Reload cursors"
    set descriptions[57] "  Add custom file"
    set descriptions[58] "  Drag to manually snip an area"
    set descriptions[59] " Reload wallpaper cache"
    set descriptions[60] " Restores dots from a clone repository "
    set descriptions[61] " Information about Hyde and its components"
    set descriptions[62] "	options"
    set descriptions[64] "   Diff mismatched dotfiles"
    set descriptions[65] " Previous wallpaper"
    set descriptions[66] " Disable border angle animation"
    set descriptions[67] " search engine to use"
    set descriptions[68] " Wallpaper commands"
    set descriptions[69] " Default border angle animation"
    set descriptions[70] " Useful GUI util"
    set descriptions[71] " User/Device specific scripts that might be useful"
    set descriptions[72] " Power Options"
    set descriptions[73] " browser to use"
    set descriptions[74] " Set /Path/to/Wallpapers as new wallpaper directory"
    set descriptions[75] " [*] Show keybind hints"
    set descriptions[76] " Force rebuild cache"
    set descriptions[77] " Use rofi to select screenshot options "
    set descriptions[78] " Show Manual"
    set descriptions[79] " Fixes issues for asus devices"
    set descriptions[80] " Watches hyprland events and executes actions"
    set descriptions[81] " Overwrite current dots from the preferred user dir "
    set descriptions[82] "   force rebuild cached bookmark paths"
    set descriptions[83] " Default blur"
    set descriptions[84] " Restore dots"
    set descriptions[85] "  Add custom delimiter symbol (default '>')"
    set descriptions[86] " Emoji selector"
    set descriptions[87] " Sddm commands"
    set descriptions[88] " Executable utilities"
    set descriptions[89] " Manages Hyde's cache"
    set descriptions[90] " Interactive control file"
    set descriptions[91] " Previous theme"
    set descriptions[92] " [*] Add chaotic aur to you mirror"
    set descriptions[93] "   Pipes STDOUT to less"
    set descriptions[94] " [*] Set wallbash mode. [0] [1] [2] [3] "
    set descriptions[95] " Disable tranparency"
    set descriptions[96] "  Reinitialize screencap"
    set descriptions[97] " Links a clone directory. Useful if you want to change your CloneDir"
    set descriptions[98] " Inhibits idle when player status: 'Playing"
    set descriptions[99] "  Print all outputs"
    set descriptions[100] " Next theme"
    set descriptions[101] "  Display this help message"
    set descriptions[102] " Wallpaper selector"
    set descriptions[103] "   Diff preserved dotfiles"
    set descriptions[104] " Set cursor size"
    set descriptions[105] " Next wallppaer"
    set descriptions[106] " Set preavailable Hyde branch"
    set descriptions[107] " Flatpak setup for HyDE"
    set descriptions[108] " Manage users restore control list"
    set descriptions[109] " [*] Screenshot and screenrecord tool"
    set descriptions[110] "  Drag to manually snip an area to screen record it"
    set descriptions[111] " wallbash dark mode"
    set descriptions[112] " Converts chaotic aur packages to AUR"
    set descriptions[113] " Set theme"
    set descriptions[114] " Patch a theme from different repository."
    set descriptions[115] " Shell selector"
    set descriptions[116] " Hyde core Package status"
    set descriptions[117] " Edit waybar control file"

    set --local literal_transitions
    set literal_transitions[1] "set inputs 35 61 37 50 3 36 23 87 88 106 89 43 90 78 30 13 68 16 70 71 81 34 72 84; set tos 25 3 4 5 6 26 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 24 2 7"
    set literal_transitions[2] "set inputs 27 42 6 48 7; set tos 28 28 32 28 33"
    set literal_transitions[3] "set inputs 116 44; set tos 28 34"
    set literal_transitions[6] "set inputs 33 94; set tos 28 29"
    set literal_transitions[7] "set inputs 97 19 14 60; set tos 28 28 28 28"
    set literal_transitions[8] "set inputs 51 100 114 91 113; set tos 28 28 28 28 28"
    set literal_transitions[9] "set inputs 53; set tos 28"
    set literal_transitions[10] "set inputs 98 80 109; set tos 28 28 27"
    set literal_transitions[12] "set inputs 76 59; set tos 28 28"
    set literal_transitions[13] "set inputs 115; set tos 28"
    set literal_transitions[14] "set inputs 108; set tos 28"
    set literal_transitions[17] "set inputs 15 38 54 1; set tos 28 28 28 28"
    set literal_transitions[18] "set inputs 102 105 74 65; set tos 28 28 28 28"
    set literal_transitions[19] "set inputs 56 45 104 32; set tos 28 28 28 28"
    set literal_transitions[20] "set inputs 86 77 28 46 39 75 24; set tos 28 28 38 37 28 35 36"
    set literal_transitions[21] "set inputs 79 107 92; set tos 28 28 30"
    set literal_transitions[25] "set inputs 47 55 117; set tos 28 31 28"
    set literal_transitions[27] "set inputs 11 110 22 41 26 96 58 99 21; set tos 28 28 28 28 28 28 28 28 28"
    set literal_transitions[29] "set inputs 25 29 111 8; set tos 28 28 28 28"
    set literal_transitions[30] "set inputs 2 20 112; set tos 28 28 28"
    set literal_transitions[31] "set inputs 31; set tos 28"
    set literal_transitions[32] "set inputs 10 52 66 95; set tos 28 28 28 28"
    set literal_transitions[33] "set inputs 4 49 69 83; set tos 28 28 28 28"
    set literal_transitions[34] "set inputs 103 93 64; set tos 28 28 28"
    set literal_transitions[35] "set inputs 5 101 17 57 85; set tos 28 28 28 28 28"
    set literal_transitions[36] "set inputs 82 18; set tos 28 28"
    set literal_transitions[37] "set inputs 67 73; set tos 28 28"
    set literal_transitions[38] "set inputs 40 12 9 62; set tos 28 28 28 28"
    set literal_transitions[39] "set inputs 63; set tos 28"

    set --local match_anything_transitions_from 24 11 4 15 1 16 22 5 23 26
    set --local match_anything_transitions_to 28 28 28 28 23 28 28 28 39 28

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
