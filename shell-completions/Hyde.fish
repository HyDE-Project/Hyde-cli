function _Hyde
    set COMP_LINE (commandline --cut-at-cursor)

    set COMP_WORDS
    echo $COMP_LINE | read --tokenize --array COMP_WORDS
    if string match --quiet --regex '.*\s$' $COMP_LINE
        set COMP_CWORD (math (count $COMP_WORDS) + 1)
    else
        set COMP_CWORD (count $COMP_WORDS)
    end

    set --local literals "control" "revert" "wallbash" "::=" "prev" "--opacity" "-j" "chaotic_aur" "branch" "save" "3" "--borderangle" "--animations" "unset" "backup" "BackUp" "list" "wallpaper" "--borderangle" "-p" "Config" "-w" "power" "d" "inject" "set" "theme" "binds" "rebuild" "0" "screencap" "pastebin" "c" "man" "1" "systeminfo" "events" "asus_patch" "--blur" "toggle" "restore" "waybar" "upgrade" "toggle" "update" "all" "-d" "sddm" "emoji" "w" "game" "cache" "glyph" "shell" "show" "audio_idle" "prev" "sync" "reload" "mode" "--opacity" "Link" "reset" "next" "--animations" "version" "next" "select" "-h" "select" "--blur" "run" "screencap" "theme" "clean" "2" "-f" "set" "patch" "select" "reload" "Clone"

    set --local descriptions
    set descriptions[1] " Edit waybar control file"
    set descriptions[2] " Revert to a previous backup run by 'Hyde backup all'. "
    set descriptions[3] " Toggle to use wallpaper accent themes"
    set descriptions[5] " Previous wallpaper"
    set descriptions[6] " Default tranparency"
    set descriptions[7] "  Show the JSON format"
    set descriptions[8] " Add chaotic aur"
    set descriptions[9] " Set preavailable Hyde branch "
    set descriptions[10] " [*] Save power by disabling features"
    set descriptions[11] " wallbash light mode"
    set descriptions[12] " Disable border angle animation"
    set descriptions[13] " Disable animations"
    set descriptions[14] " [*] Unset specific changes"
    set descriptions[15] " Backing up commands"
    set descriptions[16] " Restores dots from previous backup"
    set descriptions[17] " List the backup"
    set descriptions[18] " Wallpaper commands"
    set descriptions[19] " Default border angle animation"
    set descriptions[20] "  Show the pretty format"
    set descriptions[21] " Only restores dots from default '/Configs'"
    set descriptions[22] "  Custom width"
    set descriptions[23] " Power Options"
    set descriptions[24] " cliphist list and delete selected"
    set descriptions[25] " User/Device specific scripts that might be useful"
    set descriptions[26] " Set /Path/to/Wallpapers as new wallpaper directory"
    set descriptions[27] " Theme commands"
    set descriptions[28] " [*] Show keybind hints"
    set descriptions[29] " Force rebuild cache"
    set descriptions[30] " wallbash disabled"
    set descriptions[31] " Use rofi to select screenshot options "
    set descriptions[32] " [*] Pastebin manager "
    set descriptions[33] " cliphist list and copy selected"
    set descriptions[34] " Show Manual"
    set descriptions[35] " wallbash auto"
    set descriptions[36] " System information"
    set descriptions[37] " Watches hyprland events and executes actions"
    set descriptions[38] " Fixes issues for asus devices"
    set descriptions[39] " Default blur"
    set descriptions[40] " Cycles wallbash [0] off [1] auto [2] dark [3] light"
    set descriptions[41] " Restore dots"
    set descriptions[42] " Waybar commands"
    set descriptions[43] " Upgrades dots from the repository"
    set descriptions[44] " Toggle ﯦ Set/unset current changes'"
    set descriptions[45] " Pull updates from Hyde repository"
    set descriptions[46] " Backs up the current configuration"
    set descriptions[47] "  Add custom delimiter symbol (default '>')"
    set descriptions[48] " Sddm commands"
    set descriptions[49] " Emoji selector"
    set descriptions[50] " cliphist wipe database"
    set descriptions[51] " Toggle game mode"
    set descriptions[52] " Manages Hyde's cache"
    set descriptions[53] " Glyph selector"
    set descriptions[54] " Shell commands"
    set descriptions[55] " Some Hypr GUI you might want to use"
    set descriptions[56] " Inhibits idle when player is 'Playing'"
    set descriptions[57] " Previous theme"
    set descriptions[58] " Overwrite current dots from the user "
    set descriptions[59] " Just reload"
    set descriptions[60] " [*] Set wallbash mode. [0] [1] [2] [3] "
    set descriptions[61] " Disable tranparency"
    set descriptions[62] " Links a clone directory. Useful if you want to change your CloneDir"
    set descriptions[63] " Reset changes"
    set descriptions[64] " Next theme"
    set descriptions[65] " Default animations"
    set descriptions[66] " Hyde-cli version"
    set descriptions[67] " Next wallppaer"
    set descriptions[68] " Wallpaper selector"
    set descriptions[69] "  Display this help message"
    set descriptions[70] " Theme selector"
    set descriptions[71] " Disable blur"
    set descriptions[72] " Executables"
    set descriptions[73] " Screenshot and screenrecord tool"
    set descriptions[74] " Select sddm theme"
    set descriptions[75] " Clear some storage by deleting old backups"
    set descriptions[76] " wallbash dark mode"
    set descriptions[77] "  Add custom file"
    set descriptions[78] " Set theme"
    set descriptions[79] " Patch a theme from different repository."
    set descriptions[80] " Shell selector"
    set descriptions[81] " Reload wallpaper cache"
    set descriptions[82] " Restores dots from a clone repository "

    set --local literal_transitions
    set literal_transitions[1] "set inputs 42 23 45 66 3 27 48 52 72 55 54 9 58 34 15 36 18 25 43 41 59; set tos 22 23 4 5 6 7 8 10 11 14 12 13 15 16 17 18 19 20 21 2 3"
    set literal_transitions[2] "set inputs 62 21 16 82; set tos 24 24 24 24"
    set literal_transitions[6] "set inputs 40 60; set tos 24 27"
    set literal_transitions[7] "set inputs 64 70 79 57 78; set tos 24 24 24 24 24"
    set literal_transitions[8] "set inputs 74; set tos 24"
    set literal_transitions[10] "set inputs 29 81; set tos 24 24"
    set literal_transitions[11] "set inputs 37 56 73; set tos 24 24 24"
    set literal_transitions[12] "set inputs 80; set tos 24"
    set literal_transitions[14] "set inputs 49 31 53 28 32; set tos 24 24 24 29 25"
    set literal_transitions[17] "set inputs 17 46 75 2; set tos 24 24 24 24"
    set literal_transitions[19] "set inputs 68 67 26 5; set tos 24 24 24 24"
    set literal_transitions[20] "set inputs 8 38; set tos 24 24"
    set literal_transitions[22] "set inputs 1; set tos 24"
    set literal_transitions[23] "set inputs 44 51 10 63 14; set tos 24 24 28 24 30"
    set literal_transitions[25] "set inputs 33 24 50; set tos 24 24 24"
    set literal_transitions[26] "set inputs 4; set tos 24"
    set literal_transitions[27] "set inputs 30 35 76 11; set tos 24 24 24 24"
    set literal_transitions[28] "set inputs 13 71 12 61; set tos 24 24 24 24"
    set literal_transitions[29] "set inputs 7 69 20 47 77 22; set tos 24 24 24 24 24 24"
    set literal_transitions[30] "set inputs 6 19 65 39; set tos 24 24 24 24"

    set --local match_anything_transitions_from 4 13 15 3 1 18 16 21 9 5
    set --local match_anything_transitions_to 24 24 24 24 9 24 24 24 26 24

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
