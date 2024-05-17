function _Hyde
    set COMP_LINE (commandline --cut-at-cursor)

    set COMP_WORDS
    echo $COMP_LINE | read --tokenize --array COMP_WORDS
    if string match --quiet --regex '.*\s$' $COMP_LINE
        set COMP_CWORD (math (count $COMP_WORDS) + 1)
    else
        set COMP_CWORD (count $COMP_WORDS)
    end

    set --local literals "--uninstall" "revert" "--install" "wallbash" "--opacity" "-j" "save" "unset" "3" "--stop" "--animations" "backup" "BackUp" "list" "-p" "Config" "d" "--scan" "--record-focus" "theme" "-freeze" "0" "pastebin" "1" "systeminfo" "--all" "toggle" "waybar" "upgrade" "toggle" "reload" "update" "all" "glyph" "--print-monitor" "w" "game" "shell" "Config" "reload" "reset" "--animations" "version" "select" "--blur" "run" "theme" "clean" "size" "-f" "--print-snip" "reload" "Clone" "check" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "-w" "inject" "power" "set" "binds" "rebuild" "screencap" "c" "man" "asus_patch" "events" "--blur" "restore" "-d" "emoji" "sddm" "cache" "control" "show" "prev" "sync" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "next" "branch" "flatpak" "Config" "screencap" "--record-snip" "2" "--revert" "set" "patch" "select" "Package" "control"

    set --local descriptions
    set descriptions[1] " Removes Chaotic Aur"
    set descriptions[2] " Revert to a previous backup run by 'Hyde backup all'. "
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
    set descriptions[15] "  Show the pretty format"
    set descriptions[16] " Only restores dots from default '/Configs'"
    set descriptions[17] " cliphist list and delete selected"
    set descriptions[18] "  Use 'tesseract' to scan image then add to clipboard"
    set descriptions[19] "  Record focused monitor"
    set descriptions[20] " Theme commands"
    set descriptions[21] "  Frozen screen, drag to manually snip an area"
    set descriptions[22] " wallbash disabled"
    set descriptions[23] " [*] Pastebin manager "
    set descriptions[24] " wallbash auto"
    set descriptions[25] " System information"
    set descriptions[26] " Change all the pre-set sizes"
    set descriptions[27] " Cycles wallbash [0] off [1] auto [2] dark [3] light"
    set descriptions[28] " Waybar commands"
    set descriptions[29] " Upgrades dots from the repository"
    set descriptions[30] " Toggle ﯦ Set/unset current changes'"
    set descriptions[31] " Just reload"
    set descriptions[32] " Pull updates from Hyde repository"
    set descriptions[33] " Backs up the current configuration"
    set descriptions[34] " Glyph selector"
    set descriptions[35] "  Print focused monitor"
    set descriptions[36] " cliphist wipe database"
    set descriptions[37] " Toggle game mode"
    set descriptions[38] " Shell commands"
    set descriptions[39] " [*] Hyde Config File & Directory status"
    set descriptions[40] " Reloads waybar"
    set descriptions[41] " Reset changes"
    set descriptions[42] " Default animations"
    set descriptions[43] " Hyde-cli version"
    set descriptions[44] " Theme selector"
    set descriptions[45] " Disable blur"
    set descriptions[46] " Executables"
    set descriptions[47] " Select sddm theme"
    set descriptions[48] " Clear some storage by deleting old backups"
    set descriptions[49] " [*]Set waybar size"
    set descriptions[50] "  Add custom file"
    set descriptions[51] "  Drag to manually snip an area"
    set descriptions[52] " Reload wallpaper cache"
    set descriptions[53] " Restores dots from a clone repository "
    set descriptions[54] " Information about Hyde and its components"
    set descriptions[56] "   Diff mismatched dotfiles"
    set descriptions[57] " Previous wallpaper"
    set descriptions[58] " Disable border angle animation"
    set descriptions[59] " Wallpaper commands"
    set descriptions[60] " Default border angle animation"
    set descriptions[61] "  Custom width"
    set descriptions[62] " User/Device specific scripts that might be useful"
    set descriptions[63] " Power Options"
    set descriptions[64] " Set /Path/to/Wallpapers as new wallpaper directory"
    set descriptions[65] " [*] Show keybind hints"
    set descriptions[66] " Force rebuild cache"
    set descriptions[67] " Use rofi to select screenshot options "
    set descriptions[68] " cliphist list and copy selected"
    set descriptions[69] " Show Manual"
    set descriptions[70] " Fixes issues for asus devices"
    set descriptions[71] " Watches hyprland events and executes actions"
    set descriptions[72] " Default blur"
    set descriptions[73] " Restore dots"
    set descriptions[74] "  Add custom delimiter symbol (default '>')"
    set descriptions[75] " Emoji selector"
    set descriptions[76] " Sddm commands"
    set descriptions[77] " Manages Hyde's cache"
    set descriptions[78] " Interactive control file"
    set descriptions[79] " Some Hypr GUI you might want to use"
    set descriptions[80] " Previous theme"
    set descriptions[81] " Overwrite current dots from the user "
    set descriptions[82] " [*] Add chaotic aur to you mirror"
    set descriptions[83] "   Pipes STDOUT to less"
    set descriptions[84] " [*] Set wallbash mode. [0] [1] [2] [3] "
    set descriptions[85] " Disable tranparency"
    set descriptions[86] "  Reinitialize screencap"
    set descriptions[87] " Links a clone directory. Useful if you want to change your CloneDir"
    set descriptions[88] " Inhibits idle when player status: 'Playing"
    set descriptions[89] "  Print all outputs"
    set descriptions[90] " Next theme"
    set descriptions[91] "  Display this help message"
    set descriptions[92] " Wallpaper selector"
    set descriptions[93] "   Diff preserved dotfiles"
    set descriptions[94] " Next wallppaer"
    set descriptions[95] " Set preavailable Hyde branch"
    set descriptions[96] " Flatpak setup for HyDE"
    set descriptions[97] " Manage users restore control list"
    set descriptions[98] " [*] Screenshot and screenrecord tool"
    set descriptions[99] "  Drag to manually snip an area to screen record it"
    set descriptions[100] " wallbash dark mode"
    set descriptions[101] " Converts chaotic aur packages to AUR"
    set descriptions[102] " Set theme"
    set descriptions[103] " Patch a theme from different repository."
    set descriptions[104] " Shell selector"
    set descriptions[105] " Hyde core Package status"
    set descriptions[106] " Edit waybar control file"

    set --local literal_transitions
    set literal_transitions[1] "set inputs 28 54 32 43 4 31 20 76 95 77 46 79 38 78 81 69 12 25 59 62 29 63 73; set tos 24 3 4 5 6 25 8 9 10 11 12 15 13 14 16 17 18 19 20 21 23 2 7"
    set literal_transitions[2] "set inputs 30 37 7 41 8; set tos 26 26 33 26 35"
    set literal_transitions[3] "set inputs 105 39; set tos 26 36"
    set literal_transitions[6] "set inputs 27 84; set tos 26 31"
    set literal_transitions[7] "set inputs 87 16 13 53; set tos 26 26 26 26"
    set literal_transitions[8] "set inputs 44 90 103 80 102; set tos 26 26 26 26 26"
    set literal_transitions[9] "set inputs 47; set tos 26"
    set literal_transitions[11] "set inputs 66 52; set tos 26 26"
    set literal_transitions[12] "set inputs 88 71 98; set tos 26 26 30"
    set literal_transitions[13] "set inputs 104; set tos 26"
    set literal_transitions[14] "set inputs 97; set tos 26"
    set literal_transitions[15] "set inputs 75 67 34 65 23; set tos 26 26 26 27 28"
    set literal_transitions[18] "set inputs 14 33 48 2; set tos 26 26 26 26"
    set literal_transitions[20] "set inputs 92 94 64 57; set tos 26 26 26 26"
    set literal_transitions[21] "set inputs 70 96 82; set tos 26 26 29"
    set literal_transitions[24] "set inputs 40 49 106; set tos 26 34 26"
    set literal_transitions[27] "set inputs 6 91 15 61 74 50; set tos 26 26 26 26 26 26"
    set literal_transitions[28] "set inputs 36 17 68; set tos 26 26 26"
    set literal_transitions[29] "set inputs 1 101 3; set tos 26 26 26"
    set literal_transitions[30] "set inputs 10 99 19 35 21 86 51 89 18; set tos 26 26 26 26 26 26 26 26 26"
    set literal_transitions[31] "set inputs 22 24 100 9; set tos 26 26 26 26"
    set literal_transitions[32] "set inputs 55; set tos 26"
    set literal_transitions[33] "set inputs 11 45 58 85; set tos 26 26 26 26"
    set literal_transitions[34] "set inputs 26; set tos 26"
    set literal_transitions[35] "set inputs 5 42 60 72; set tos 26 26 26 26"
    set literal_transitions[36] "set inputs 93 83 56; set tos 26 26 26"

    set --local match_anything_transitions_from 4 19 17 25 1 16 10 22 5 23
    set --local match_anything_transitions_to 26 26 26 26 22 26 26 32 26 26

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
