function _Hyde
    set COMP_LINE (commandline --cut-at-cursor)

    set COMP_WORDS
    echo $COMP_LINE | read --tokenize --array COMP_WORDS
    if string match --quiet --regex '.*\s$' $COMP_LINE
        set COMP_CWORD (math (count $COMP_WORDS) + 1)
    else
        set COMP_CWORD (count $COMP_WORDS)
    end

    set --local literals "--uninstall" "revert" "--install" "wallbash" "--opacity" "-j" "save" "Config" "3" "Config" "--animations" "unset" "--stop" "backup" "BackUp" "list" "-p" "Config" "d" "--scan" "--record-focus" "theme" "-freeze" "0" "pastebin" "1" "systeminfo" "--all" "toggle" "waybar" "upgrade" "toggle" "reload" "update" "all" "glyph" "--print-monitor" "w" "game" "shell" "--less" "--presrve" "reload" "reset" "--animations" "version" "select" "--blur" "run" "theme" "clean" "size" "-f" "--print-snip" "reload" "Clone" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "-w" "inject" "power" "set" "binds" "rebuild" "screencap" "c" "man" "asus_patch" "events" "--blur" "restore" "-d" "emoji" "sddm" "cache" "control" "show" "prev" "sync" "chaotic_aur" "mode" "check" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "next" "branch" "flatpak" "screencap" "--record-snip" "2" "--revert" "set" "patch" "select" "control"

    set --local descriptions
    set descriptions[1] " Removes Chaotic Aur"
    set descriptions[2] " Revert to a previous backup run by 'Hyde backup all'. "
    set descriptions[3] " Setup Choatic Aur, append [fresh] to run in fresh install mode"
    set descriptions[4] " Toggle to use wallpaper accent themes"
    set descriptions[5] " Default tranparency"
    set descriptions[6] "  Show the JSON format"
    set descriptions[7] " [*] Save power by disabling features"
    set descriptions[8] " Manage restore control list"
    set descriptions[9] " wallbash light mode"
    set descriptions[10] " [*] check up Config File/Directory"
    set descriptions[11] " Disable animations"
    set descriptions[12] " [*] Unset specific changes"
    set descriptions[13] "  Stop every instance of Screencap"
    set descriptions[14] " Backing up commands"
    set descriptions[15] " Restores dots from previous backup"
    set descriptions[16] " List the backup"
    set descriptions[17] "  Show the pretty format"
    set descriptions[18] " Only restores dots from default '/Configs'"
    set descriptions[19] " cliphist list and delete selected"
    set descriptions[20] "  Use 'tesseract' to scan image then add to clipboard"
    set descriptions[21] "  Record focused monitor"
    set descriptions[22] " Theme commands"
    set descriptions[23] "  Frozen screen, drag to manually snip an area"
    set descriptions[24] " wallbash disabled"
    set descriptions[25] " [*] Pastebin manager "
    set descriptions[26] " wallbash auto"
    set descriptions[27] " System information"
    set descriptions[28] " Change all the pre-set sizes"
    set descriptions[29] " Cycles wallbash [0] off [1] auto [2] dark [3] light"
    set descriptions[30] " Waybar commands"
    set descriptions[31] " Upgrades dots from the repository"
    set descriptions[32] " Toggle ﯦ Set/unset current changes'"
    set descriptions[33] " Just reload"
    set descriptions[34] " Pull updates from Hyde repository"
    set descriptions[35] " Backs up the current configuration"
    set descriptions[36] " Glyph selector"
    set descriptions[37] "  Print focused monitor"
    set descriptions[38] " cliphist wipe database"
    set descriptions[39] " Toggle game mode"
    set descriptions[40] " Shell commands"
    set descriptions[41] "   Pipes stdouts to less"
    set descriptions[42] "   Diff preserved dotfiles"
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
    set descriptions[53] "  Add custom file"
    set descriptions[54] "  Drag to manually snip an area"
    set descriptions[55] " Reload wallpaper cache"
    set descriptions[56] " Restores dots from a clone repository "
    set descriptions[58] "   Diff mismatched dotfiles"
    set descriptions[59] " Previous wallpaper"
    set descriptions[60] " Disable border angle animation"
    set descriptions[61] " Wallpaper commands"
    set descriptions[62] " Default border angle animation"
    set descriptions[63] "  Custom width"
    set descriptions[64] " User/Device specific scripts that might be useful"
    set descriptions[65] " Power Options"
    set descriptions[66] " Set /Path/to/Wallpapers as new wallpaper directory"
    set descriptions[67] " [*] Show keybind hints"
    set descriptions[68] " Force rebuild cache"
    set descriptions[69] " Use rofi to select screenshot options "
    set descriptions[70] " cliphist list and copy selected"
    set descriptions[71] " Show Manual"
    set descriptions[72] " Fixes issues for asus devices"
    set descriptions[73] " Watches hyprland events and executes actions"
    set descriptions[74] " Default blur"
    set descriptions[75] " Restore dots"
    set descriptions[76] "  Add custom delimiter symbol (default '>')"
    set descriptions[77] " Emoji selector"
    set descriptions[78] " Sddm commands"
    set descriptions[79] " Manages Hyde's cache"
    set descriptions[80] " Interactive control file"
    set descriptions[81] " Some Hypr GUI you might want to use"
    set descriptions[82] " Previous theme"
    set descriptions[83] " Overwrite current dots from the user "
    set descriptions[84] " [*] Add chaotic aur to you mirror"
    set descriptions[85] " [*] Set wallbash mode. [0] [1] [2] [3] "
    set descriptions[86] " health checker"
    set descriptions[87] " Disable tranparency"
    set descriptions[88] "  Reinitialize screencap"
    set descriptions[89] " Links a clone directory. Useful if you want to change your CloneDir"
    set descriptions[90] " Inhibits idle when player status: 'Playing"
    set descriptions[91] "  Print all outputs"
    set descriptions[92] " Next theme"
    set descriptions[93] "  Display this help message"
    set descriptions[94] " Wallpaper selector"
    set descriptions[95] " Next wallppaer"
    set descriptions[96] " Set preavailable Hyde branch"
    set descriptions[97] " Flatpak setup for HyDE"
    set descriptions[98] " [*] Screenshot and screenrecord tool"
    set descriptions[99] "  Drag to manually snip an area to screen record it"
    set descriptions[100] " wallbash dark mode"
    set descriptions[101] " Converts chaotic aur packages to AUR"
    set descriptions[102] " Set theme"
    set descriptions[103] " Patch a theme from different repository."
    set descriptions[104] " Shell selector"
    set descriptions[105] " Edit waybar control file"

    set --local literal_transitions
    set literal_transitions[1] "set inputs 30 33 34 46 4 22 78 96 79 49 81 40 80 83 71 14 27 61 86 64 31 65 75; set tos 24 25 4 5 6 7 8 9 10 11 14 12 13 15 16 17 18 19 20 21 23 2 3"
    set literal_transitions[2] "set inputs 32 39 7 44 12; set tos 27 27 30 27 28"
    set literal_transitions[3] "set inputs 89 18 15 56; set tos 27 27 27 27"
    set literal_transitions[6] "set inputs 29 85; set tos 27 26"
    set literal_transitions[7] "set inputs 47 92 103 82 102; set tos 27 27 27 27 27"
    set literal_transitions[8] "set inputs 50; set tos 27"
    set literal_transitions[10] "set inputs 68 55; set tos 27 27"
    set literal_transitions[11] "set inputs 90 73 98; set tos 27 27 29"
    set literal_transitions[12] "set inputs 104; set tos 27"
    set literal_transitions[13] "set inputs 8; set tos 27"
    set literal_transitions[14] "set inputs 77 69 36 67 25; set tos 27 27 27 36 34"
    set literal_transitions[17] "set inputs 16 35 51 2; set tos 27 27 27 27"
    set literal_transitions[19] "set inputs 94 95 66 59; set tos 27 27 27 27"
    set literal_transitions[20] "set inputs 10; set tos 33"
    set literal_transitions[21] "set inputs 72 97 84; set tos 27 27 31"
    set literal_transitions[24] "set inputs 43 52 105; set tos 27 32 27"
    set literal_transitions[26] "set inputs 24 26 100 9; set tos 27 27 27 27"
    set literal_transitions[28] "set inputs 5 45 62 74; set tos 27 27 27 27"
    set literal_transitions[29] "set inputs 13 99 21 37 23 88 54 91 20; set tos 27 27 27 27 27 27 27 27 27"
    set literal_transitions[30] "set inputs 11 48 60 87; set tos 27 27 27 27"
    set literal_transitions[31] "set inputs 1 101 3; set tos 27 27 27"
    set literal_transitions[32] "set inputs 28; set tos 27"
    set literal_transitions[33] "set inputs 41 42 58; set tos 27 27 27"
    set literal_transitions[34] "set inputs 38 19 70; set tos 27 27 27"
    set literal_transitions[35] "set inputs 57; set tos 27"
    set literal_transitions[36] "set inputs 6 93 17 63 76 53; set tos 27 27 27 27 27 27"

    set --local match_anything_transitions_from 4 15 25 1 18 16 9 22 5 23
    set --local match_anything_transitions_to 27 27 27 22 27 27 27 35 27 27

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
