function _Hyde
    set COMP_LINE (commandline --cut-at-cursor)

    set COMP_WORDS
    echo $COMP_LINE | read --tokenize --array COMP_WORDS
    if string match --quiet --regex '.*\s$' $COMP_LINE
        set COMP_CWORD (math (count $COMP_WORDS) + 1)
    else
        set COMP_CWORD (count $COMP_WORDS)
    end

    set --local literals "binds" "game" "::=" "version" "all" "update" "wallpaper" "shell" "0" "Link" "reload" "--blur" "restore" "revert" "cache" "--opacity" "list" "prev" "3" "next" "control" "monitors" "save" "unset" "power" "next" "1" "2" "Config" "systeminfo" "--borderangle" "BackUp" "mode" "theme" "branch" "wallbash" "prev" "backup" "reset" "events" "select" "toggle" "--opacity" "glyph" "set" "patch" "--borderangle" "emoji" "pastebin" "set" "toggle" "clean" "rebuild" "--animations" "inject" "screencap" "select" "screencap" "reload" "sddm" "Clone" "theme" "show" "select" "waybar" "--animations" "upgrade" "run" "chaotic" "--blur" "man"

    set --local descriptions
    set descriptions[1] "Keybind hints"
    set descriptions[2] "Toggle game mode"
    set descriptions[4] "Hyde-cli version"
    set descriptions[5] "Backs up the current configuration"
    set descriptions[6] "Pull Updates From Hyde repository"
    set descriptions[7] "Wallpaper Commands"
    set descriptions[8] "Shell commands"
    set descriptions[10] "Links a clone directory. Useful if you want to change your CloneDir"
    set descriptions[11] "Just Reload"
    set descriptions[12] "Disable blur"
    set descriptions[13] "Restore dots"
    set descriptions[14] "Revert to a previous backup run by 'Hyde backup all'"
    set descriptions[15] "Manages Hyde's cache"
    set descriptions[16] "Disable opacity"
    set descriptions[17] "List the backup"
    set descriptions[18] "Previous wallpaper"
    set descriptions[20] "Next theme"
    set descriptions[22] "Manages Monitors using nwg-displays"
    set descriptions[25] "Power options"
    set descriptions[26] "Next wallpaper"
    set descriptions[29] "Only restores dots from default"
    set descriptions[30] "System information"
    set descriptions[31] "Default border angle animation"
    set descriptions[32] "Restores dots from previous backup"
    set descriptions[33] "Set wallbash mode. [0] [1] [2] [3] "
    set descriptions[35] "Set pref Hyde branch"
    set descriptions[36] "Toggle to use wallpaper accent themes"
    set descriptions[37] "Previous theme"
    set descriptions[38] "Backing up commands"
    set descriptions[39] "Reset changes"
    set descriptions[40] "Watches hyprland events and executes actions"
    set descriptions[42] "Cycles wallbash [0] off [1] auto [2] dark [3] light"
    set descriptions[43] "Default opacity"
    set descriptions[44] "Glyph selector"
    set descriptions[45] "Set theme"
    set descriptions[46] "Patch a theme from different repository"
    set descriptions[47] "Disable border angle animation"
    set descriptions[48] "Emoji selector "
    set descriptions[49] "Pastebin manager"
    set descriptions[50] "Set /Path/to/Wallpapers as new wallpaper directory"
    set descriptions[51] "Set/unset current changes"
    set descriptions[52] "Clear some storage by deleting old backups"
    set descriptions[53] "Force rebuild cache"
    set descriptions[54] "Default animations"
    set descriptions[55] "User/Device specific scripts that might be useful"
    set descriptions[56] "Use rofi to select screenshot options"
    set descriptions[57] "Theme selector"
    set descriptions[58] "Screenshot and screenrecord tool"
    set descriptions[59] "Wallpaper Cache"
    set descriptions[60] "Sddm commands"
    set descriptions[61] "Restores dots from a clone repository"
    set descriptions[62] "Theme commands"
    set descriptions[63] "Some Hypr GUI you might want to use"
    set descriptions[64] "Wallpaper selector"
    set descriptions[65] "Waybar commands"
    set descriptions[66] "Disable animations"
    set descriptions[67] "Upgrades dots from the repository "
    set descriptions[68] "Executables"
    set descriptions[70] "Default blur"
    set descriptions[71] "Show manual"

    set --local literal_transitions
    set literal_transitions[1] "set inputs 55 4 25 60 6 62 7 30 63 8 65 67 11 35 68 36 13 38 15; set tos 2 4 5 6 4 7 8 4 9 10 11 4 4 4 12 13 14 15 16"
    set literal_transitions[2] "set inputs 69; set tos 4"
    set literal_transitions[5] "set inputs 24 39 2 51 23; set tos 21 4 4 4 19"
    set literal_transitions[6] "set inputs 34; set tos 4"
    set literal_transitions[7] "set inputs 57 20 37 45 46; set tos 4 4 4 4 4"
    set literal_transitions[8] "set inputs 50 64 26 18; set tos 4 4 4 4"
    set literal_transitions[9] "set inputs 22 44 1 56 48 49; set tos 4 4 4 4 4 4"
    set literal_transitions[10] "set inputs 41; set tos 4"
    set literal_transitions[11] "set inputs 21; set tos 4"
    set literal_transitions[12] "set inputs 40 58; set tos 4 4"
    set literal_transitions[13] "set inputs 42 33; set tos 4 20"
    set literal_transitions[14] "set inputs 10 29 61 32; set tos 4 4 4 4"
    set literal_transitions[15] "set inputs 17 52 5 14; set tos 4 4 4 4"
    set literal_transitions[16] "set inputs 59 53; set tos 4 4"
    set literal_transitions[17] "set inputs 3; set tos 18"
    set literal_transitions[18] "set inputs 71; set tos 4"
    set literal_transitions[19] "set inputs 16 12 47 66; set tos 4 4 4 4"
    set literal_transitions[20] "set inputs 19 28 27 9; set tos 4 4 4 4"
    set literal_transitions[21] "set inputs 43 31 54 70; set tos 4 4 4 4"

    set --local match_anything_transitions_from 1 3
    set --local match_anything_transitions_to 3 17

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
