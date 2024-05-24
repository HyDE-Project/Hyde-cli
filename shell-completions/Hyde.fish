function _Hyde
    set COMP_LINE (commandline --cut-at-cursor)

    set COMP_WORDS
    echo $COMP_LINE | read --tokenize --array COMP_WORDS
    if string match --quiet --regex '.*\s$' $COMP_LINE
        set COMP_CWORD (math (count $COMP_WORDS) + 1)
    else
        set COMP_CWORD (count $COMP_WORDS)
    end

    set --local literals "revert" "--uninstall" "--install" "wallbash" "--opacity" "-j" "save" "unset" "3" "--rebuild" "--animations" "--stop" "backup" "BackUp" "list" "cursor" "-p" "Config" "d" "--scan" "--record-focus" "theme" "bookmarks" "0" "-freeze" "pastebin" "1" "systeminfo" "--all" "theme" "toggle" "upgrade" "waybar" "toggle" "reload" "update" "all" "glyph" "--print-monitor" "w" "game" "shell" "Config" "info" "reload" "reset" "--animations" "version" "select" "--blur" "theme" "clean" "size" "reload" "-f" "--print-snip" "reload" "Clone" "check" "override" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "show" "-w" "inject" "power" "set" "binds" "rebuild" "screencap" "c" "man" "asus_patch" "events" "--blur" "restore" "-d" "emoji" "sddm" "run" "cache" "control" "prev" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "flatpak" "Config" "screencap" "--record-snip" "2" "--revert" "set" "patch" "select" "Package" "control"

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
    set descriptions[18] " Only restores dots from default '/Configs'"
    set descriptions[19] " cliphist list and delete selected"
    set descriptions[20] "  Use 'tesseract' to scan image then add to clipboard"
    set descriptions[21] "  Record focused monitor"
    set descriptions[22] " Theme commands"
    set descriptions[23] " [*] Bookmark selector"
    set descriptions[24] " wallbash disabled"
    set descriptions[25] "  Frozen screen, drag to manually snip an area"
    set descriptions[26] " [*] Pastebin manager "
    set descriptions[27] " wallbash auto"
    set descriptions[28] " System information"
    set descriptions[29] " Change all the pre-set sizes"
    set descriptions[30] " Set cursor theme"
    set descriptions[31] " Cycles wallbash [0] off [1] auto [2] dark [3] light"
    set descriptions[32] " Upgrades dots from the repository"
    set descriptions[33] " Waybar commands"
    set descriptions[34] " Toggle ﯦ Set/unset current changes'"
    set descriptions[35] " Just reload"
    set descriptions[36] " Pull updates from Hyde repository"
    set descriptions[37] " Backs up the current configuration"
    set descriptions[38] " Glyph selector"
    set descriptions[39] "  Print focused monitor"
    set descriptions[40] " cliphist wipe database"
    set descriptions[41] " Toggle game mode"
    set descriptions[42] " Shell commands"
    set descriptions[43] " [*] Hyde Config File & Directory status"
    set descriptions[44] " Check active cursor status (only gsettings)"
    set descriptions[45] " Reloads waybar"
    set descriptions[46] " Reset changes"
    set descriptions[47] " Default animations"
    set descriptions[48] " Hyde-cli version"
    set descriptions[49] " Theme selector"
    set descriptions[50] " Disable blur"
    set descriptions[51] " Select sddm theme"
    set descriptions[52] " Clear some storage by deleting old backups"
    set descriptions[53] " [*]Set waybar size"
    set descriptions[54] " Reload cursors"
    set descriptions[55] "  Add custom file"
    set descriptions[56] "  Drag to manually snip an area"
    set descriptions[57] " Reload wallpaper cache"
    set descriptions[58] " Restores dots from a clone repository "
    set descriptions[59] " Information about Hyde and its components"
    set descriptions[60] " Overwrite current dots from the prefered user dir "
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
    set descriptions[79] " Default blur"
    set descriptions[80] " Restore dots"
    set descriptions[81] "  Add custom delimiter symbol (default '>')"
    set descriptions[82] " Emoji selector"
    set descriptions[83] " Sddm commands"
    set descriptions[84] " Executable utilities"
    set descriptions[85] " Manages Hyde's cache"
    set descriptions[86] " Interactive control file"
    set descriptions[87] " Previous theme"
    set descriptions[88] " [*] Add chaotic aur to you mirror"
    set descriptions[89] "   Pipes STDOUT to less"
    set descriptions[90] " [*] Set wallbash mode. [0] [1] [2] [3] "
    set descriptions[91] " Disable tranparency"
    set descriptions[92] "  Reinitialize screencap"
    set descriptions[93] " Links a clone directory. Useful if you want to change your CloneDir"
    set descriptions[94] " Inhibits idle when player status: 'Playing"
    set descriptions[95] "  Print all outputs"
    set descriptions[96] " Next theme"
    set descriptions[97] "  Display this help message"
    set descriptions[98] " Wallpaper selector"
    set descriptions[99] "   Diff preserved dotfiles"
    set descriptions[100] " Set cursor size"
    set descriptions[101] " Next wallppaer"
    set descriptions[102] " Set preavailable Hyde branch"
    set descriptions[103] " Flatpak setup for HyDE"
    set descriptions[104] " Manage users restore control list"
    set descriptions[105] " [*] Screenshot and screenrecord tool"
    set descriptions[106] "  Drag to manually snip an area to screen record it"
    set descriptions[107] " wallbash dark mode"
    set descriptions[108] " Converts chaotic aur packages to AUR"
    set descriptions[109] " Set theme"
    set descriptions[110] " Patch a theme from different repository."
    set descriptions[111] " Shell selector"
    set descriptions[112] " Hyde core Package status"
    set descriptions[113] " Edit waybar control file"

    set --local literal_transitions
    set literal_transitions[1] "set inputs 33 59 36 48 4 60 22 83 84 102 85 35 42 86 76 28 13 65 16 67 69 32 70 80; set tos 25 3 4 5 6 7 8 10 11 13 12 26 14 15 16 17 18 19 20 21 22 24 2 9"
    set literal_transitions[2] "set inputs 34 41 7 46 8; set tos 28 28 38 28 35"
    set literal_transitions[3] "set inputs 112 43; set tos 28 27"
    set literal_transitions[6] "set inputs 31 90; set tos 28 36"
    set literal_transitions[8] "set inputs 49 96 110 87 109; set tos 28 28 28 28 28"
    set literal_transitions[9] "set inputs 93 18 14 58; set tos 28 28 28 28"
    set literal_transitions[10] "set inputs 51; set tos 28"
    set literal_transitions[11] "set inputs 94 78 105; set tos 28 28 31"
    set literal_transitions[12] "set inputs 73 57; set tos 28 28"
    set literal_transitions[14] "set inputs 111; set tos 28"
    set literal_transitions[15] "set inputs 104; set tos 28"
    set literal_transitions[18] "set inputs 15 37 52 1; set tos 28 28 28 28"
    set literal_transitions[19] "set inputs 98 101 71 63; set tos 28 28 28 28"
    set literal_transitions[20] "set inputs 54 44 100 30; set tos 28 28 28 28"
    set literal_transitions[21] "set inputs 82 74 26 38 72 23; set tos 28 28 34 28 33 32"
    set literal_transitions[22] "set inputs 77 103 88; set tos 28 28 30"
    set literal_transitions[25] "set inputs 45 53 113; set tos 28 37 28"
    set literal_transitions[27] "set inputs 99 89 62; set tos 28 28 28"
    set literal_transitions[29] "set inputs 61; set tos 28"
    set literal_transitions[30] "set inputs 2 108 3; set tos 28 28 28"
    set literal_transitions[31] "set inputs 12 106 21 39 25 92 56 95 20; set tos 28 28 28 28 28 28 28 28 28"
    set literal_transitions[32] "set inputs 10; set tos 28"
    set literal_transitions[33] "set inputs 6 97 17 68 81 55; set tos 28 28 28 28 28 28"
    set literal_transitions[34] "set inputs 40 19 75; set tos 28 28 28"
    set literal_transitions[35] "set inputs 5 47 66 79; set tos 28 28 28 28"
    set literal_transitions[36] "set inputs 24 27 107 9; set tos 28 28 28 28"
    set literal_transitions[37] "set inputs 29; set tos 28"
    set literal_transitions[38] "set inputs 11 50 64 91; set tos 28 28 28 28"

    set --local match_anything_transitions_from 4 13 17 1 7 16 5 23 26 24
    set --local match_anything_transitions_to 28 28 28 23 28 28 28 29 28 28

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
