function _Hyde_spec_1
set 1 $argv[1]
__fish_complete_path "$1"
end

function _Hyde_spec_2
set 1 $argv[1]
__fish_complete_packages
end

function _Hyde
    set COMP_LINE (commandline --cut-at-cursor)

    set COMP_WORDS
    echo $COMP_LINE | read --tokenize --array COMP_WORDS
    if string match --quiet --regex '.*\s$' $COMP_LINE
        set COMP_CWORD (math (count $COMP_WORDS) + 1)
    else
        set COMP_CWORD (count $COMP_WORDS)
    end

    set --local literals "revert" "--uninstall" "wallbash" "--copy" "--opacity" "-j" "theme" "save" "unset" "3" "--stop" "--animations" "backup" "BackUp" "list" "cursor" "--freeze" "-p" "--no-custom" "Config" "--install" "--scan" "--record-focus" "theme" "bookmarks" "0" "--reset" "toggle" "pastebin" "1" "systeminfo" "--all" "theme" "--delete" "upgrade" "toggle" "waybar" "reload" "update" "all" "glyph" "--wipe" "--print-monitor" "game" "shell" "Config" "info" "--style" "set" "reload" "reset" "code" "--animations" "search" "--site" "version" "select" "--blur" "variety" "theme" "clean" "calc" "airplane_mode" "reload" "--browser" "--print-snip" "--reset" "reload" "--rasi" "Clone" "check" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "show" "-f" "inject" "power" "--persist" "binds" "rebuild" "screencap" "man" "asus_patch" "events" "override" "--rebuild" "--rasi" "--blur" "restore" "-d" "--browser" "sddm" "run" "--option" "cache" "control" "prev" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "next" "size" "flatpak" "Config" "screencap" "emoji" "--record-snip" "prev" "2" "--revert" "set" "patch" "select" "Package" "control"

    set --local descriptions
    set descriptions[1] " Revert to a previous backup run by 'Hyde backup all'. "
    set descriptions[2] " Removes Chaotic Aur"
    set descriptions[3] " Toggle to use wallpaper accent themes"
    set descriptions[4] "	list and copy selected"
    set descriptions[5] " Default tranparency"
    set descriptions[6] "  Show the JSON format"
    set descriptions[7] " set the code theme"
    set descriptions[8] " [*] Save power by disabling features"
    set descriptions[9] " [*] Unset specific changes"
    set descriptions[10] " wallbash light mode"
    set descriptions[11] "  Stop every instance of Screencap"
    set descriptions[12] " Disable animations"
    set descriptions[13] " Backing up commands"
    set descriptions[14] " Restores dots from previous backup"
    set descriptions[15] " List the backup"
    set descriptions[16] " Cursor setting"
    set descriptions[17] "  Frozen screen, drag to manually snip an area"
    set descriptions[18] "  Show the pretty format"
    set descriptions[19] "    run without custom '.lst' bookmark files"
    set descriptions[20] " Only restores dots from default '/Configs'"
    set descriptions[21] " Setup Chaotic Aur, append [fresh] to run in fresh install mode"
    set descriptions[22] "  Use 'tesseract' to scan image then add to clipboard"
    set descriptions[23] "  Record focused monitor"
    set descriptions[24] " Theme commands"
    set descriptions[25] " [*] Bookmark selector"
    set descriptions[26] " wallbash disabled"
    set descriptions[27] "	Reset cache"
    set descriptions[28] " Toggle ﯦ  Set/unset current changes'"
    set descriptions[29] " [*] Pastebin manager "
    set descriptions[30] " wallbash auto"
    set descriptions[31] " System information"
    set descriptions[32] " Change all the pre-set sizes"
    set descriptions[33] " Set cursor theme"
    set descriptions[34] "	list and delete selected"
    set descriptions[35] " Upgrades dots from the repository"
    set descriptions[36] " Cycles wallbash [0] off [1] auto [2] dark [3] light"
    set descriptions[37] " Waybar commands"
    set descriptions[38] " Just reload"
    set descriptions[39] " Pull updates from Hyde repository"
    set descriptions[40] " Backs up the current configuration"
    set descriptions[41] " Glyph selector"
    set descriptions[42] "	wipe database"
    set descriptions[43] "  Print focused monitor"
    set descriptions[44] " Toggle game mode"
    set descriptions[45] " Shell commands"
    set descriptions[46] " [*] Hyde Config File & Directory status"
    set descriptions[47] " Check active cursor status (only gsettings)"
    set descriptions[48] "   use style [ 1 | 2 ]"
    set descriptions[49] " Set /Path/to/Wallpaper"
    set descriptions[50] " Reloads waybar"
    set descriptions[51] " Reset changes"
    set descriptions[52] " Code editor related commands"
    set descriptions[53] " Default animations"
    set descriptions[54] " [*] Web Search"
    set descriptions[55] " Search engine to use"
    set descriptions[56] " Hyde-cli version"
    set descriptions[57] " Theme selector"
    set descriptions[58] " Disable blur"
    set descriptions[59] " [*] Use variety package to manage wallpapers"
    set descriptions[60] " Select sddm theme"
    set descriptions[61] " Clear some storage by deleting old backups"
    set descriptions[62] " [*] Calculator (libqalculate)"
    set descriptions[63] " Toogle airplane mode"
    set descriptions[64] " Reload cursors"
    set descriptions[65] "   Set Browser can also set 'BROWSER' env"
    set descriptions[66] "  Drag to manually snip an area"
    set descriptions[67] " reset hyde profile"
    set descriptions[68] " Reload wallpaper cache"
    set descriptions[69] "	set rofi configuration"
    set descriptions[70] " Restores dots from a clone repository "
    set descriptions[71] " Information about Hyde and its components"
    set descriptions[73] "   Diff mismatched dotfiles"
    set descriptions[74] " Previous wallpaper"
    set descriptions[75] " Disable border angle animation"
    set descriptions[76] " Wallpaper commands"
    set descriptions[77] " Default border angle animation"
    set descriptions[78] " Useful GUI util"
    set descriptions[79] "  Add custom .conf file"
    set descriptions[80] " User/Device specific scripts that might be useful"
    set descriptions[81] " Power Options"
    set descriptions[82] "	Saves bookmark file list to ~/.cache.So no re-caching after reboot"
    set descriptions[83] " [*] Show keybind hints"
    set descriptions[84] " Force rebuild cache"
    set descriptions[85] " Use rofi to select screenshot options "
    set descriptions[86] " Show Manual"
    set descriptions[87] " Fixes issues for asus devices"
    set descriptions[88] " Watches hyprland events and executes actions"
    set descriptions[89] " Overwrite current dots from the preferred user dir "
    set descriptions[90] "   force rebuild cached bookmark paths"
    set descriptions[91] " set rofi configuration"
    set descriptions[92] " Default blur"
    set descriptions[93] " Restore dots"
    set descriptions[94] "  Add custom delimiter symbol (default '>')"
    set descriptions[95] " Browser to use"
    set descriptions[96] " Sddm commands"
    set descriptions[97] " Executable utilities"
    set descriptions[98] "	options"
    set descriptions[99] " Manages Hyde's cache"
    set descriptions[100] " Interactive control file"
    set descriptions[101] " Previous theme"
    set descriptions[102] " [*] Add chaotic aur to you mirror"
    set descriptions[103] "   Pipes STDOUT to less"
    set descriptions[104] " [*] Set wallbash mode. [0] [1] [2] [3] "
    set descriptions[105] " Disable tranparency"
    set descriptions[106] "  Reinitialize screencap"
    set descriptions[107] " Links a clone directory. Useful if you want to change your CloneDir"
    set descriptions[108] " Inhibits idle when player status: 'Playing"
    set descriptions[109] "  Print all outputs"
    set descriptions[110] " Next theme"
    set descriptions[111] "  Display this help message"
    set descriptions[112] " Wallpaper selector"
    set descriptions[113] "   Diff preserved dotfiles"
    set descriptions[114] " Set cursor size"
    set descriptions[115] " Next wallppaer"
    set descriptions[116] " Set preavailable Hyde branch"
    set descriptions[117] " Next waybar layout"
    set descriptions[118] " [*] Set waybar size"
    set descriptions[119] " Flatpak setup for HyDE"
    set descriptions[120] " Manage users restore control list"
    set descriptions[121] " [*] Screenshot and screenrecord tool"
    set descriptions[122] " [*] Emoji selector"
    set descriptions[123] "  Drag to manually snip an area to screen record it"
    set descriptions[124] " Previous waybar layout"
    set descriptions[125] " wallbash dark mode"
    set descriptions[126] " Converts chaotic aur packages to AUR"
    set descriptions[127] " Set theme"
    set descriptions[128] " Patch a theme from different repository."
    set descriptions[129] " Shell selector"
    set descriptions[130] " Hyde core Package status"
    set descriptions[131] " Edit waybar control file"

    set --local literal_transitions
    set literal_transitions[1] "set inputs 81 71 39 56 3 35 24 96 97 116 99 37 45 100 86 31 13 76 16 78 80 89 52 93 38; set tos 7 3 4 5 6 26 8 10 11 13 12 27 14 15 16 17 18 19 20 21 22 23 25 9 2"
    set literal_transitions[3] "set inputs 130 46; set tos 29 31"
    set literal_transitions[6] "set inputs 36 104; set tos 29 32"
    set literal_transitions[7] "set inputs 28 44 8 51 9; set tos 29 29 34 29 43"
    set literal_transitions[8] "set inputs 57 110 128 101 127; set tos 29 29 29 29 29"
    set literal_transitions[9] "set inputs 107 20 14 70; set tos 29 29 29 29"
    set literal_transitions[10] "set inputs 60; set tos 29"
    set literal_transitions[11] "set inputs 63 108 88 121; set tos 29 29 29 42"
    set literal_transitions[12] "set inputs 84 68; set tos 29 29"
    set literal_transitions[14] "set inputs 129; set tos 29"
    set literal_transitions[15] "set inputs 120; set tos 29"
    set literal_transitions[18] "set inputs 15 40 61 1; set tos 29 29 29 29"
    set literal_transitions[19] "set inputs 59 112 49 115 74; set tos 44 29 29 29 29"
    set literal_transitions[20] "set inputs 64 47 114 33; set tos 29 29 29 29"
    set literal_transitions[21] "set inputs 122 62 41 83 25 85 54 29; set tos 28 33 29 37 38 29 39 40"
    set literal_transitions[22] "set inputs 87 119 102; set tos 29 29 41"
    set literal_transitions[25] "set inputs 7; set tos 29"
    set literal_transitions[27] "set inputs 118 124 50 117 131; set tos 45 29 29 29 29"
    set literal_transitions[28] "set inputs 48 69; set tos 29 30"
    set literal_transitions[31] "set inputs 113 103 73; set tos 29 29 29"
    set literal_transitions[32] "set inputs 26 30 125 10; set tos 29 29 29 29"
    set literal_transitions[33] "set inputs 27 91; set tos 29 30"
    set literal_transitions[34] "set inputs 12 58 75 105; set tos 29 29 29 29"
    set literal_transitions[35] "set inputs 72; set tos 29"
    set literal_transitions[37] "set inputs 6 111 18 79 94; set tos 29 29 29 30 29"
    set literal_transitions[38] "set inputs 90 19 82 69 65; set tos 29 29 29 30 36"
    set literal_transitions[39] "set inputs 55 95 91 27; set tos 29 29 30 29"
    set literal_transitions[40] "set inputs 98 34 42 4; set tos 29 29 29 29"
    set literal_transitions[41] "set inputs 2 21 126; set tos 29 29 29"
    set literal_transitions[42] "set inputs 11 123 23 43 17 106 66 109 22; set tos 29 29 29 29 29 29 29 29 29"
    set literal_transitions[43] "set inputs 5 53 77 92; set tos 29 29 29 29"
    set literal_transitions[44] "set inputs 67; set tos 29"
    set literal_transitions[45] "set inputs 32; set tos 29"

    set --local match_anything_transitions_from 24 30 2 4 13 17 1 16 36 5 23 26
    set --local match_anything_transitions_to 35 29 29 29 29 29 24 29 29 29 29 29

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

    set specialized_command_states 36 30
    set specialized_command_ids 2 1
    if contains $state $specialized_command_states
        set --local index (contains --index $state $specialized_command_states)
        set --local function_id $specialized_command_ids[$index]
        set --local function_name _Hyde_spec_$function_id
        set --local --erase inputs
        set --local --erase tos
        set --local lines (eval $function_name $COMP_WORDS[$COMP_CWORD])
        for line in $lines
            printf '%s\n' $line
        end
    end

    return 0
end

complete --command Hyde --no-files --arguments "(_Hyde)"
