function _Hyde
    set COMP_LINE (commandline --cut-at-cursor)

    set COMP_WORDS
    echo $COMP_LINE | read --tokenize --array COMP_WORDS
    if string match --quiet --regex '.*\s$' $COMP_LINE
        set COMP_CWORD (math (count $COMP_WORDS) + 1)
    else
        set COMP_CWORD (count $COMP_WORDS)
    end

    set --local literals "revert" "--uninstall" "wallbash" "--opacity" "-j" "save" "unset" "3" "--stop" "--animations" "backup" "BackUp" "list" "cursor" "-p" "--no-custom" "Config" "d" "--install" "--scan" "--record-focus" "theme" "bookmarks" "0" "-freeze" "pastebin" "search" "1" "systeminfo" "--all" "theme" "toggle" "upgrade" "waybar" "toggle" "reload" "update" "all" "glyph" "--print-monitor" "w" "game" "shell" "Config" "info" "reload" "reset" "--animations" "version" "select" "--blur" "theme" "clean" "size" "reload" "-f" "--print-snip" "reload" "Clone" "check" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "show" "-w" "inject" "power" "set" "binds" "rebuild" "screencap" "c" "man" "asus_patch" "events" "override" "--rebuild" "--blur" "restore" "-d" "emoji" "sddm" "run" "cache" "control" "prev" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "flatpak" "Config" "screencap" "--record-snip" "2" "--revert" "set" "patch" "select" "Package" "control"

    set --local descriptions
    set descriptions[1] " Revert to a previous backup run by 'Hyde backup all'. "
    set descriptions[2] " Removes Chaotic Aur"
    set descriptions[3] " Toggle to use wallpaper accent themes"
    set descriptions[4] " Default tranparency"
    set descriptions[5] "  Show the JSON format"
    set descriptions[6] " [*] Save power by disabling features"
    set descriptions[7] " [*] Unset specific changes"
    set descriptions[8] " wallbash light mode"
    set descriptions[9] "  Stop every instance of Screencap"
    set descriptions[10] " Disable animations"
    set descriptions[11] " Backing up commands"
    set descriptions[12] " Restores dots from previous backup"
    set descriptions[13] " List the backup"
    set descriptions[14] " Cursor setting"
    set descriptions[15] "  Show the pretty format"
    set descriptions[16] "    run without custom '.lst' bookmark files"
    set descriptions[17] " Only restores dots from default '/Configs'"
    set descriptions[18] " cliphist list and delete selected"
    set descriptions[19] " Setup Chaotic Aur, append [fresh] to run in fresh install mode"
    set descriptions[20] "  Use 'tesseract' to scan image then add to clipboard"
    set descriptions[21] "  Record focused monitor"
    set descriptions[22] " Theme commands"
    set descriptions[23] " [*] Bookmark selector"
    set descriptions[24] " wallbash disabled"
    set descriptions[25] "  Frozen screen, drag to manually snip an area"
    set descriptions[26] " [*] Pastebin manager "
    set descriptions[27] " Launch google search"
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
    set descriptions[62] "   Diff mismatched dotfiles"
    set descriptions[63] " Previous wallpaper"
    set descriptions[64] " Disable border angle animation"
    set descriptions[65] " Wallpaper commands"
    set descriptions[66] " Default border angle animation"
    set descriptions[67] " Useful GUI util"
    set descriptions[68] "  Custom width"
    set descriptions[69] " User/Device specific scripts that might be useful"
    set descriptions[70] " Power Options"
    set descriptions[71] " Set /Path/to/Wallpapers as new wallpaper directory"
    set descriptions[72] " [*] Show keybind hints"
    set descriptions[73] " Force rebuild cache"
    set descriptions[74] " Use rofi to select screenshot options "
    set descriptions[75] " cliphist list and copy selected"
    set descriptions[76] " Show Manual"
    set descriptions[77] " Fixes issues for asus devices"
    set descriptions[78] " Watches hyprland events and executes actions"
    set descriptions[79] " Overwrite current dots from the preferred user dir "
    set descriptions[80] "   force rebuild cached bookmark paths"
    set descriptions[81] " Default blur"
    set descriptions[82] " Restore dots"
    set descriptions[83] "  Add custom delimiter symbol (default '>')"
    set descriptions[84] " Emoji selector"
    set descriptions[85] " Sddm commands"
    set descriptions[86] " Executable utilities"
    set descriptions[87] " Manages Hyde's cache"
    set descriptions[88] " Interactive control file"
    set descriptions[89] " Previous theme"
    set descriptions[90] " [*] Add chaotic aur to you mirror"
    set descriptions[91] "   Pipes STDOUT to less"
    set descriptions[92] " [*] Set wallbash mode. [0] [1] [2] [3] "
    set descriptions[93] " Disable tranparency"
    set descriptions[94] "  Reinitialize screencap"
    set descriptions[95] " Links a clone directory. Useful if you want to change your CloneDir"
    set descriptions[96] " Inhibits idle when player status: 'Playing"
    set descriptions[97] "  Print all outputs"
    set descriptions[98] " Next theme"
    set descriptions[99] "  Display this help message"
    set descriptions[100] " Wallpaper selector"
    set descriptions[101] "   Diff preserved dotfiles"
    set descriptions[102] " Set cursor size"
    set descriptions[103] " Next wallppaer"
    set descriptions[104] " Set preavailable Hyde branch"
    set descriptions[105] " Flatpak setup for HyDE"
    set descriptions[106] " Manage users restore control list"
    set descriptions[107] " [*] Screenshot and screenrecord tool"
    set descriptions[108] "  Drag to manually snip an area to screen record it"
    set descriptions[109] " wallbash dark mode"
    set descriptions[110] " Converts chaotic aur packages to AUR"
    set descriptions[111] " Set theme"
    set descriptions[112] " Patch a theme from different repository."
    set descriptions[113] " Shell selector"
    set descriptions[114] " Hyde core Package status"
    set descriptions[115] " Edit waybar control file"

    set --local literal_transitions
    set literal_transitions[1] "set inputs 34 60 37 49 3 36 22 85 86 104 87 43 88 76 29 11 65 14 67 69 79 33 70 82; set tos 25 3 4 5 6 26 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 24 2 7"
    set literal_transitions[2] "set inputs 35 42 6 47 7; set tos 27 27 30 27 31"
    set literal_transitions[3] "set inputs 114 44; set tos 27 32"
    set literal_transitions[6] "set inputs 32 92; set tos 27 35"
    set literal_transitions[7] "set inputs 95 17 12 59; set tos 27 27 27 27"
    set literal_transitions[8] "set inputs 50 98 112 89 111; set tos 27 27 27 27 27"
    set literal_transitions[9] "set inputs 52; set tos 27"
    set literal_transitions[10] "set inputs 96 78 107; set tos 27 27 34"
    set literal_transitions[12] "set inputs 73 58; set tos 27 27"
    set literal_transitions[13] "set inputs 113; set tos 27"
    set literal_transitions[14] "set inputs 106; set tos 27"
    set literal_transitions[17] "set inputs 13 38 53 1; set tos 27 27 27 27"
    set literal_transitions[18] "set inputs 100 103 71 63; set tos 27 27 27 27"
    set literal_transitions[19] "set inputs 55 45 102 31; set tos 27 27 27 27"
    set literal_transitions[20] "set inputs 27 74 84 26 39 72 23; set tos 27 27 27 38 27 37 36"
    set literal_transitions[21] "set inputs 77 105 90; set tos 27 27 33"
    set literal_transitions[25] "set inputs 46 54 115; set tos 27 29 27"
    set literal_transitions[28] "set inputs 61; set tos 27"
    set literal_transitions[29] "set inputs 30; set tos 27"
    set literal_transitions[30] "set inputs 10 51 64 93; set tos 27 27 27 27"
    set literal_transitions[31] "set inputs 4 48 66 81; set tos 27 27 27 27"
    set literal_transitions[32] "set inputs 101 91 62; set tos 27 27 27"
    set literal_transitions[33] "set inputs 2 19 110; set tos 27 27 27"
    set literal_transitions[34] "set inputs 9 108 21 40 25 94 57 97 20; set tos 27 27 27 27 27 27 27 27 27"
    set literal_transitions[35] "set inputs 24 28 109 8; set tos 27 27 27 27"
    set literal_transitions[36] "set inputs 80 16; set tos 27 27"
    set literal_transitions[37] "set inputs 5 99 15 68 83 56; set tos 27 27 27 27 27 27"
    set literal_transitions[38] "set inputs 41 18 75; set tos 27 27 27"

    set --local match_anything_transitions_from 24 11 4 15 1 16 22 5 23 26
    set --local match_anything_transitions_to 27 27 27 27 23 27 27 27 28 27

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
