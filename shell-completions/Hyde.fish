function _Hyde
    set COMP_LINE (commandline --cut-at-cursor)

    set COMP_WORDS
    echo $COMP_LINE | read --tokenize --array COMP_WORDS
    if string match --quiet --regex '.*\s$' $COMP_LINE
        set COMP_CWORD (math (count $COMP_WORDS) + 1)
    else
        set COMP_CWORD (count $COMP_WORDS)
    end

    set --local literals "revert" "--uninstall" "wallbash" "--copy" "--opacity" "-j" "save" "unset" "3" "--stop" "--animations" "backup" "BackUp" "list" "cursor" "-p" "--no-custom" "Config" "--install" "--scan" "--record-focus" "theme" "bookmarks" "0" "-freeze" "--reset" "toggle" "pastebin" "1" "systeminfo" "--all" "theme" "--delete" "upgrade" "toggle" "waybar" "reload" "update" "all" "glyph" "--wipe" "--print-monitor" "game" "shell" "Config" "info" "search" "set" "reload" "reset" "--animations" "--site" "version" "select" "--blur" "variety" "theme" "clean" "size" "reload" "-f" "--print-snip" "--reset" "reload" "Clone" "check" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "show" "inject" "power" "binds" "rebuild" "screencap" "man" "asus_patch" "events" "override" "--rebuild" "--blur" "restore" "-d" "emoji" "--browser" "sddm" "run" "--option" "cache" "control" "prev" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "flatpak" "Config" "screencap" "--record-snip" "2" "--revert" "set" "patch" "select" "Package" "control"

    set --local descriptions
    set descriptions[1] " Revert to a previous backup run by 'Hyde backup all'. "
    set descriptions[2] " Removes Chaotic Aur"
    set descriptions[3] " Toggle to use wallpaper accent themes"
    set descriptions[4] "	list and copy selected"
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
    set descriptions[17] "    run without custom '.lst' bookmark files"
    set descriptions[18] " Only restores dots from default '/Configs'"
    set descriptions[19] " Setup Chaotic Aur, append [fresh] to run in fresh install mode"
    set descriptions[20] "  Use 'tesseract' to scan image then add to clipboard"
    set descriptions[21] "  Record focused monitor"
    set descriptions[22] " Theme commands"
    set descriptions[23] " [*] Bookmark selector"
    set descriptions[24] " wallbash disabled"
    set descriptions[25] "  Frozen screen, drag to manually snip an area"
    set descriptions[26] "	Reset cache"
    set descriptions[27] " Toggle ﯦ  Set/unset current changes'"
    set descriptions[28] " [*] Pastebin manager "
    set descriptions[29] " wallbash auto"
    set descriptions[30] " System information"
    set descriptions[31] " Change all the pre-set sizes"
    set descriptions[32] " Set cursor theme"
    set descriptions[33] "	list and delete selected"
    set descriptions[34] " Upgrades dots from the repository"
    set descriptions[35] " Cycles wallbash [0] off [1] auto [2] dark [3] light"
    set descriptions[36] " Waybar commands"
    set descriptions[37] " Just reload"
    set descriptions[38] " Pull updates from Hyde repository"
    set descriptions[39] " Backs up the current configuration"
    set descriptions[40] " Glyph selector"
    set descriptions[41] "	wipe database"
    set descriptions[42] "  Print focused monitor"
    set descriptions[43] " Toggle game mode"
    set descriptions[44] " Shell commands"
    set descriptions[45] " [*] Hyde Config File & Directory status"
    set descriptions[46] " Check active cursor status (only gsettings)"
    set descriptions[47] " [*] Web Search"
    set descriptions[48] " Set /Path/to/Wallpaper"
    set descriptions[49] " Reloads waybar"
    set descriptions[50] " Reset changes"
    set descriptions[51] " Default animations"
    set descriptions[52] " Search engine to use"
    set descriptions[53] " Hyde-cli version"
    set descriptions[54] " Theme selector"
    set descriptions[55] " Disable blur"
    set descriptions[56] " [*] Use variety package to manage wallpapers"
    set descriptions[57] " Select sddm theme"
    set descriptions[58] " Clear some storage by deleting old backups"
    set descriptions[59] " [*]Set waybar size"
    set descriptions[60] " Reload cursors"
    set descriptions[61] "  Add custom file"
    set descriptions[62] "  Drag to manually snip an area"
    set descriptions[63] " reset hyde profile"
    set descriptions[64] " Reload wallpaper cache"
    set descriptions[65] " Restores dots from a clone repository "
    set descriptions[66] " Information about Hyde and its components"
    set descriptions[68] "   Diff mismatched dotfiles"
    set descriptions[69] " Previous wallpaper"
    set descriptions[70] " Disable border angle animation"
    set descriptions[71] " Wallpaper commands"
    set descriptions[72] " Default border angle animation"
    set descriptions[73] " Useful GUI util"
    set descriptions[74] " User/Device specific scripts that might be useful"
    set descriptions[75] " Power Options"
    set descriptions[76] " [*] Show keybind hints"
    set descriptions[77] " Force rebuild cache"
    set descriptions[78] " Use rofi to select screenshot options "
    set descriptions[79] " Show Manual"
    set descriptions[80] " Fixes issues for asus devices"
    set descriptions[81] " Watches hyprland events and executes actions"
    set descriptions[82] " Overwrite current dots from the preferred user dir "
    set descriptions[83] "   force rebuild cached bookmark paths"
    set descriptions[84] " Default blur"
    set descriptions[85] " Restore dots"
    set descriptions[86] "  Add custom delimiter symbol (default '>')"
    set descriptions[87] " Emoji selector"
    set descriptions[88] " Browser to use"
    set descriptions[89] " Sddm commands"
    set descriptions[90] " Executable utilities"
    set descriptions[91] "	options"
    set descriptions[92] " Manages Hyde's cache"
    set descriptions[93] " Interactive control file"
    set descriptions[94] " Previous theme"
    set descriptions[95] " [*] Add chaotic aur to you mirror"
    set descriptions[96] "   Pipes STDOUT to less"
    set descriptions[97] " [*] Set wallbash mode. [0] [1] [2] [3] "
    set descriptions[98] " Disable tranparency"
    set descriptions[99] "  Reinitialize screencap"
    set descriptions[100] " Links a clone directory. Useful if you want to change your CloneDir"
    set descriptions[101] " Inhibits idle when player status: 'Playing"
    set descriptions[102] "  Print all outputs"
    set descriptions[103] " Next theme"
    set descriptions[104] "  Display this help message"
    set descriptions[105] " Wallpaper selector"
    set descriptions[106] "   Diff preserved dotfiles"
    set descriptions[107] " Set cursor size"
    set descriptions[108] " Next wallppaer"
    set descriptions[109] " Set preavailable Hyde branch"
    set descriptions[110] " Flatpak setup for HyDE"
    set descriptions[111] " Manage users restore control list"
    set descriptions[112] " [*] Screenshot and screenrecord tool"
    set descriptions[113] "  Drag to manually snip an area to screen record it"
    set descriptions[114] " wallbash dark mode"
    set descriptions[115] " Converts chaotic aur packages to AUR"
    set descriptions[116] " Set theme"
    set descriptions[117] " Patch a theme from different repository."
    set descriptions[118] " Shell selector"
    set descriptions[119] " Hyde core Package status"
    set descriptions[120] " Edit waybar control file"

    set --local literal_transitions
    set literal_transitions[1] "set inputs 36 66 38 53 3 37 22 89 90 109 92 44 93 79 30 12 71 15 73 74 82 34 75 85; set tos 25 3 4 5 6 26 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 24 2 7"
    set literal_transitions[2] "set inputs 27 43 7 50 8; set tos 28 28 33 28 32"
    set literal_transitions[3] "set inputs 119 45; set tos 28 34"
    set literal_transitions[6] "set inputs 35 97; set tos 28 30"
    set literal_transitions[7] "set inputs 100 18 13 65; set tos 28 28 28 28"
    set literal_transitions[8] "set inputs 54 103 117 94 116; set tos 28 28 28 28 28"
    set literal_transitions[9] "set inputs 57; set tos 28"
    set literal_transitions[10] "set inputs 101 81 112; set tos 28 28 27"
    set literal_transitions[12] "set inputs 77 64; set tos 28 28"
    set literal_transitions[13] "set inputs 118; set tos 28"
    set literal_transitions[14] "set inputs 111; set tos 28"
    set literal_transitions[17] "set inputs 14 39 58 1; set tos 28 28 28 28"
    set literal_transitions[18] "set inputs 56 105 48 108 69; set tos 31 28 28 28 28"
    set literal_transitions[19] "set inputs 60 46 107 32; set tos 28 28 28 28"
    set literal_transitions[20] "set inputs 87 78 28 47 40 76 23; set tos 28 28 37 39 28 36 38"
    set literal_transitions[21] "set inputs 80 110 95; set tos 28 28 35"
    set literal_transitions[25] "set inputs 49 59 120; set tos 28 29 28"
    set literal_transitions[27] "set inputs 10 113 21 42 25 99 62 102 20; set tos 28 28 28 28 28 28 28 28 28"
    set literal_transitions[29] "set inputs 31; set tos 28"
    set literal_transitions[30] "set inputs 24 29 114 9; set tos 28 28 28 28"
    set literal_transitions[31] "set inputs 63; set tos 28"
    set literal_transitions[32] "set inputs 5 51 72 84; set tos 28 28 28 28"
    set literal_transitions[33] "set inputs 11 55 70 98; set tos 28 28 28 28"
    set literal_transitions[34] "set inputs 106 96 68; set tos 28 28 28"
    set literal_transitions[35] "set inputs 2 19 115; set tos 28 28 28"
    set literal_transitions[36] "set inputs 6 104 16 61 86; set tos 28 28 28 28 28"
    set literal_transitions[37] "set inputs 91 33 41 4; set tos 28 28 28 28"
    set literal_transitions[38] "set inputs 83 17; set tos 28 28"
    set literal_transitions[39] "set inputs 26 52 88; set tos 28 28 28"
    set literal_transitions[40] "set inputs 67; set tos 28"

    set --local match_anything_transitions_from 24 11 4 15 1 16 22 5 23 26
    set --local match_anything_transitions_to 28 28 28 28 23 28 28 28 40 28

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
