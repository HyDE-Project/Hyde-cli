function _Hyde_spec_2
set 1 $argv[1]
__fish_complete_path "$1"
end

function _Hyde_spec_1
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

    set --local literals "revert" "--uninstall" "wallbash" "--copy" "--opacity" "-j" "theme" "save" "unset" "3" "--stop" "--animations" "backup" "BackUp" "list" "cursor" "--freeze" "-p" "--no-custom" "Config" "--install" "--scan" "--record-focus" "theme" "bookmarks" "0" "--reset" "toggle" "pastebin" "1" "systeminfo" "--all" "theme" "--delete" "upgrade" "toggle" "waybar" "reload" "update" "all" "glyph" "--wipe" "--print-monitor" "game" "shell" "Config" "info" "--style" "set" "reload" "reset" "on" "--animations" "code" "search" "version" "--site" "select" "--blur" "off" "variety" "clean" "calc" "airplane_mode" "reload" "--browser" "--print-snip" "--reset" "reload" "--rasi" "Clone" "--all" "check" "--all" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "show" "-f" "inject" "power" "--persist" "binds" "rebuild" "screencap" "man" "asus_patch" "unset" "override" "events" "--rebuild" "--rasi" "--blur" "restore" "install" "-d" "info" "--browser" "sddm" "run" "set" "--option" "cache" "list" "control" "prev" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "next" "size" "test" "flatpak" "Config" "screencap" "emoji" "--record-snip" "prev" "2" "--revert" "set" "patch" "select" "Package" "control"

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
    set descriptions[52] " Disable all fancy things to save more power"
    set descriptions[53] " Default animations"
    set descriptions[54] " Code editor related commands"
    set descriptions[55] " [*] Web Search"
    set descriptions[56] " Hyde-cli version"
    set descriptions[57] " Search engine to use"
    set descriptions[58] " Theme selector"
    set descriptions[59] " Disable blur"
    set descriptions[60] " Disables the power saving mode"
    set descriptions[61] " [*] Use variety package to manage wallpapers"
    set descriptions[62] " Clear some storage by deleting old backups"
    set descriptions[63] " [*] Calculator (libqalculate)"
    set descriptions[64] " Toogle airplane mode"
    set descriptions[65] " Reload cursors"
    set descriptions[66] "   Set Browser can also set 'BROWSER' env"
    set descriptions[67] "  Drag to manually snip an area"
    set descriptions[68] " reset hyde profile"
    set descriptions[69] " Reload wallpaper cache"
    set descriptions[70] "	set rofi configuration"
    set descriptions[71] " Restores dots from a clone repository "
    set descriptions[72] " Disable all to save more power"
    set descriptions[73] " Information about Hyde and its components"
    set descriptions[74] " Remove power saving mode"
    set descriptions[76] "   Diff mismatched dotfiles"
    set descriptions[77] " Previous wallpaper"
    set descriptions[78] " Disable border angle animation"
    set descriptions[79] " Wallpaper commands"
    set descriptions[80] " Default border angle animation"
    set descriptions[81] " Useful GUI util"
    set descriptions[82] "  Add custom .conf file"
    set descriptions[83] " User/Device specific scripts that might be useful"
    set descriptions[84] " Power Options"
    set descriptions[85] "	Saves bookmark file list to ~/.cache.So no re-caching after reboot"
    set descriptions[86] " [*] Show keybind hints"
    set descriptions[87] " Force rebuild cache"
    set descriptions[88] " Use rofi to select screenshot options "
    set descriptions[89] " Show Manual"
    set descriptions[90] " Fixes issues for asus devices"
    set descriptions[91] " Unset a any theme set by 'set' command"
    set descriptions[92] " Overwrite current dots from the preferred user dir "
    set descriptions[93] " Watches hyprland events and executes actions"
    set descriptions[94] "   force rebuild cached bookmark paths"
    set descriptions[95] " set rofi configuration"
    set descriptions[96] " Default blur"
    set descriptions[97] " Restore dots"
    set descriptions[98] " Install and set sddm theme from HyDE clone Repo"
    set descriptions[99] "  Add custom delimiter symbol (default '>')"
    set descriptions[100] " Check sddm theme status"
    set descriptions[101] " Browser to use"
    set descriptions[102] " Sddm commands"
    set descriptions[103] " Executable utilities"
    set descriptions[104] " Set Sddm theme from the list"
    set descriptions[105] "	options"
    set descriptions[106] " Manages Hyde's cache"
    set descriptions[107] " List all local sddm themes"
    set descriptions[108] " Interactive control file"
    set descriptions[109] " Previous theme"
    set descriptions[110] " [*] Add chaotic aur to you mirror"
    set descriptions[111] "   Pipes STDOUT to less"
    set descriptions[112] " [*] Set wallbash mode. [0] [1] [2] [3] "
    set descriptions[113] " Disable tranparency"
    set descriptions[114] "  Reinitialize screencap"
    set descriptions[115] " Links a clone directory. Useful if you want to change your CloneDir"
    set descriptions[116] " Inhibits idle when player status: 'Playing"
    set descriptions[117] "  Print all outputs"
    set descriptions[118] " Next theme"
    set descriptions[119] "  Display this help message"
    set descriptions[120] " Wallpaper selector"
    set descriptions[121] "   Diff preserved dotfiles"
    set descriptions[122] " Set cursor size"
    set descriptions[123] " Next wallppaer"
    set descriptions[124] " Set preavailable Hyde branch"
    set descriptions[125] " Next waybar layout"
    set descriptions[126] " [*] Set waybar size"
    set descriptions[127] " Test a theme"
    set descriptions[128] " Flatpak setup for HyDE"
    set descriptions[129] " Manage users restore control list"
    set descriptions[130] " [*] Screenshot and screenrecord tool"
    set descriptions[131] " [*] Emoji selector"
    set descriptions[132] "  Drag to manually snip an area to screen record it"
    set descriptions[133] " Previous waybar layout"
    set descriptions[134] " wallbash dark mode"
    set descriptions[135] " Converts chaotic aur packages to AUR"
    set descriptions[136] " Set theme"
    set descriptions[137] " Patch a theme from different repository."
    set descriptions[138] " Shell selector"
    set descriptions[139] " Hyde core Package status"
    set descriptions[140] " Edit waybar control file"

    set --local literal_transitions
    set literal_transitions[1] "set inputs 84 73 39 56 3 35 24 102 103 124 106 37 45 108 89 31 13 79 16 81 83 92 54 97 38; set tos 7 3 4 5 6 26 8 10 11 13 12 27 14 15 16 17 18 19 20 21 22 23 25 9 2"
    set literal_transitions[3] "set inputs 139 46; set tos 28 31"
    set literal_transitions[6] "set inputs 36 112; set tos 28 35"
    set literal_transitions[7] "set inputs 28 44 8 51 9; set tos 28 28 34 28 45"
    set literal_transitions[8] "set inputs 58 118 137 109 136; set tos 28 28 28 28 28"
    set literal_transitions[9] "set inputs 115 20 14 71; set tos 28 28 28 28"
    set literal_transitions[10] "set inputs 104 100 107 91 127 98; set tos 28 28 28 28 28 28"
    set literal_transitions[11] "set inputs 64 116 93 130; set tos 28 28 28 43"
    set literal_transitions[12] "set inputs 87 69; set tos 28 28"
    set literal_transitions[14] "set inputs 138; set tos 28"
    set literal_transitions[15] "set inputs 129; set tos 28"
    set literal_transitions[18] "set inputs 15 40 62 1; set tos 28 28 28 28"
    set literal_transitions[19] "set inputs 61 120 49 123 77; set tos 41 28 28 28 28"
    set literal_transitions[20] "set inputs 65 47 122 33; set tos 28 28 28 28"
    set literal_transitions[21] "set inputs 131 63 41 86 25 88 55 29; set tos 29 32 28 37 38 28 36 39"
    set literal_transitions[22] "set inputs 90 128 110; set tos 28 28 44"
    set literal_transitions[25] "set inputs 7; set tos 28"
    set literal_transitions[27] "set inputs 126 133 50 125 140; set tos 33 28 28 28 28"
    set literal_transitions[29] "set inputs 48 70; set tos 28 30"
    set literal_transitions[31] "set inputs 121 111 76; set tos 28 28 28"
    set literal_transitions[32] "set inputs 27 95; set tos 28 30"
    set literal_transitions[33] "set inputs 32; set tos 28"
    set literal_transitions[34] "set inputs 52 12 59 60 78 113 72; set tos 28 28 28 28 28 28 28"
    set literal_transitions[35] "set inputs 26 30 134 10; set tos 28 28 28 28"
    set literal_transitions[36] "set inputs 57 101 95 27; set tos 28 28 30 28"
    set literal_transitions[37] "set inputs 6 119 18 82 99; set tos 28 28 28 30 28"
    set literal_transitions[38] "set inputs 94 19 85 70 66; set tos 28 28 28 30 42"
    set literal_transitions[39] "set inputs 105 34 42 4; set tos 28 28 28 28"
    set literal_transitions[40] "set inputs 75; set tos 28"
    set literal_transitions[41] "set inputs 68; set tos 28"
    set literal_transitions[43] "set inputs 11 132 23 43 17 114 67 117 22; set tos 28 28 28 28 28 28 28 28 28"
    set literal_transitions[44] "set inputs 2 21 135; set tos 28 28 28"
    set literal_transitions[45] "set inputs 5 53 80 96 74; set tos 28 28 28 28 28"

    set --local match_anything_transitions_from 26 2 4 42 13 17 1 16 5 23 30 24
    set --local match_anything_transitions_to 28 28 28 28 28 28 24 28 28 28 28 40

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

    set specialized_command_states 42 30
    set specialized_command_ids 1 2
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
