function _Hyde
    set COMP_LINE (commandline --cut-at-cursor)

    set COMP_WORDS
    echo $COMP_LINE | read --tokenize --array COMP_WORDS
    if string match --quiet --regex '.*\s$' $COMP_LINE
        set COMP_CWORD (math (count $COMP_WORDS) + 1)
    else
        set COMP_CWORD (count $COMP_WORDS)
    end

    set --local literals "binds" "save" "game" "::=" "version" "all" "update" "wallpaper" "shell" "reload" "Link" "restore" "revert" "cache" "list" "prev" "control" "monitors" "next" "power" "next" "Config" "systeminfo" "BackUp" "mode" "theme" "branch" "wallbash" "unset" "prev" "backup" "reset" "events" "select" "toggle" "glyph" "set" "patch" "emoji" "pastebin" "set" "clean" "rebuild" "inject" "screencap" "select" "screencap" "reload" "sddm" "show" "run" "Clone" "theme" "select" "waybar" "upgrade" "chaotic" "man"

    set --local descriptions
    set descriptions[1] "Keybind hints"
    set descriptions[2] "Save power by disabling features"
    set descriptions[3] "Toggle game mode"
    set descriptions[5] "Hyde-cli version"
    set descriptions[6] "Backs up the current configuration"
    set descriptions[7] "Pull Updates From Hyde repository"
    set descriptions[8] "Wallpaper Commands"
    set descriptions[9] "Shell commands"
    set descriptions[10] "Just Reload"
    set descriptions[11] "Links a clone directory. Useful if you want to change your CloneDir"
    set descriptions[12] "Restore dots"
    set descriptions[13] "Revert to a previous backup run by 'Hyde backup all'"
    set descriptions[14] "Manages Hyde's cache"
    set descriptions[15] "List the backup"
    set descriptions[16] "Previous wallpaper"
    set descriptions[18] "Manages Monitors using nwg-displays"
    set descriptions[19] "Next theme"
    set descriptions[20] "Power options"
    set descriptions[21] "Next wallpaper"
    set descriptions[22] "Only restores dots from default"
    set descriptions[23] "System information"
    set descriptions[24] "Restores dots from previous backup"
    set descriptions[25] "Set wallbash mode. [0] [1] [2] [3] "
    set descriptions[27] "Set pref Hyde branch"
    set descriptions[28] "Toggle to use wallpaper accent themes"
    set descriptions[29] "Unset specific changes"
    set descriptions[30] "Previous theme"
    set descriptions[31] "Backing up commands"
    set descriptions[32] "Reset changes"
    set descriptions[33] "Watches hyprland events and executes actions"
    set descriptions[35] "Cycles wallbash [0] off [1] auto [2] dark [3] light"
    set descriptions[36] "Glyph selector"
    set descriptions[37] "Set theme"
    set descriptions[38] "Patch a theme from different repository"
    set descriptions[39] "Emoji selector "
    set descriptions[40] "Pastebin manager"
    set descriptions[41] "Set /Path/to/Wallpapers as new wallpaper directory"
    set descriptions[42] "Clear some storage by deleting old backups"
    set descriptions[43] "Force rebuild cache"
    set descriptions[44] "User/Device specific scripts that might be useful"
    set descriptions[45] "Use rofi to select screenshot options"
    set descriptions[46] "Theme selector"
    set descriptions[47] "Screenshot and screenrecord tool"
    set descriptions[48] "Wallpaper Cache"
    set descriptions[49] "Sddm commands"
    set descriptions[50] "Some Hypr GUI you might want to use"
    set descriptions[51] "Executables"
    set descriptions[52] "Restores dots from a clone repository"
    set descriptions[53] "Theme commands"
    set descriptions[54] "Wallpaper selector"
    set descriptions[55] "Waybar commands"
    set descriptions[56] "Upgrades dots from the repository "
    set descriptions[58] "Show manual"

    set --local literal_transitions
    set literal_transitions[1] "set inputs 44 5 20 49 7 50 8 23 51 9 53 55 10 27 56 28 12 31 14; set tos 2 4 5 6 4 7 8 4 9 10 11 12 4 4 4 13 14 15 16"
    set literal_transitions[2] "set inputs 57; set tos 4"
    set literal_transitions[5] "set inputs 32 29 3 2; set tos 4 4 4 4"
    set literal_transitions[6] "set inputs 26; set tos 4"
    set literal_transitions[7] "set inputs 18 36 1 45 39 40; set tos 4 4 4 4 4 4"
    set literal_transitions[8] "set inputs 41 54 21 16; set tos 4 4 4 4"
    set literal_transitions[9] "set inputs 33 47; set tos 4 4"
    set literal_transitions[10] "set inputs 34; set tos 4"
    set literal_transitions[11] "set inputs 46 19 30 37 38; set tos 4 4 4 4 4"
    set literal_transitions[12] "set inputs 17; set tos 4"
    set literal_transitions[13] "set inputs 35 25; set tos 4 4"
    set literal_transitions[14] "set inputs 11 22 52 24; set tos 4 4 4 4"
    set literal_transitions[15] "set inputs 15 42 6 13; set tos 4 4 4 4"
    set literal_transitions[16] "set inputs 48 43; set tos 4 4"
    set literal_transitions[17] "set inputs 4; set tos 18"
    set literal_transitions[18] "set inputs 58; set tos 4"

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
