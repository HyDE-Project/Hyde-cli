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

    set --local literals "revert" "--uninstall" "wallbash" "--copy" "--opacity" "-j" "theme" "save" "unset" "3" "--stop" "--animations" "backup" "BackUp" "list" "cursor" "--freeze" "-p" "--no-custom" "Config" "--install" "--scan" "--record-focus" "theme" "bookmarks" "0" "--reset" "toggle" "pastebin" "unset" "1" "systeminfo" "--all" "theme" "--delete" "upgrade" "toggle" "waybar" "reload" "update" "all" "glyph" "--wipe" "--print-monitor" "game" "shell" "Config" "info" "--style" "set" "reload" "reset" "on" "--animations" "code" "search" "version" "--site" "select" "--blur" "off" "variety" "clean" "calc" "airplane_mode" "reload" "--browser" "--print-snip" "--reset" "reload" "--rasi" "Clone" "--all" "check" "--all" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "show" "-f" "inject" "power" "--persist" "binds" "rebuild" "screencap" "man" "asus_patch" "events" "override" "--rebuild" "--rasi" "--blur" "restore" "install" "-d" "info" "--browser" "sddm" "run" "set" "--option" "cache" "list" "control" "prev" "patch" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "import" "--preserve" "size" "next" "branch" "select" "next" "size" "test" "flatpak" "Config" "screencap" "emoji" "--record-snip" "prev" "2" "--revert" "set" "select" "Package" "control"

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
    set descriptions[30] " Unset a theme set by 'set' command"
    set descriptions[31] " wallbash auto"
    set descriptions[32] " System information"
    set descriptions[33] " Change all the pre-set sizes"
    set descriptions[34] " Set cursor theme"
    set descriptions[35] "	list and delete selected"
    set descriptions[36] " Upgrades dots from the repository"
    set descriptions[37] " Cycles wallbash [0] off [1] auto [2] dark [3] light"
    set descriptions[38] " Waybar commands"
    set descriptions[39] " Just reload"
    set descriptions[40] " Pull updates from Hyde repository"
    set descriptions[41] " Backs up the current configuration"
    set descriptions[42] " Glyph selector"
    set descriptions[43] "	wipe database"
    set descriptions[44] "  Print focused monitor"
    set descriptions[45] " Toggle game mode"
    set descriptions[46] " Shell commands"
    set descriptions[47] " [*] Hyde Config File & Directory status"
    set descriptions[48] " Check active cursor status (only gsettings)"
    set descriptions[49] "   use style [ 1 | 2 ]"
    set descriptions[50] " Set /Path/to/Wallpaper"
    set descriptions[51] " Reloads waybar"
    set descriptions[52] " Reset changes"
    set descriptions[53] " Disable all fancy things to save more power"
    set descriptions[54] " Default animations"
    set descriptions[55] " Code editor related commands"
    set descriptions[56] " [*] Web Search"
    set descriptions[57] " Hyde-cli version"
    set descriptions[58] " Search engine to use"
    set descriptions[59] " Theme selector"
    set descriptions[60] " Disable blur"
    set descriptions[61] " Disables the power saving mode"
    set descriptions[62] " [*] Use variety package to manage wallpapers"
    set descriptions[63] " Clear some storage by deleting old backups"
    set descriptions[64] " [*] Calculator (libqalculate)"
    set descriptions[65] " Toogle airplane mode"
    set descriptions[66] " Reload cursors"
    set descriptions[67] "   Set Browser can also set 'BROWSER' env"
    set descriptions[68] "  Drag to manually snip an area"
    set descriptions[69] " reset hyde profile"
    set descriptions[70] " Reload wallpaper cache"
    set descriptions[71] "	set rofi configuration"
    set descriptions[72] " Restores dots from a clone repository "
    set descriptions[73] " Disable all to save more power"
    set descriptions[74] " Information about Hyde and its components"
    set descriptions[75] " Remove power saving mode"
    set descriptions[77] "   Diff mismatched dotfiles"
    set descriptions[78] " Previous wallpaper"
    set descriptions[79] " Disable border angle animation"
    set descriptions[80] " Wallpaper commands"
    set descriptions[81] " Default border angle animation"
    set descriptions[82] " Useful GUI util"
    set descriptions[83] "  Add custom .conf file"
    set descriptions[84] " User/Device specific scripts that might be useful"
    set descriptions[85] " Power Options"
    set descriptions[86] "	Saves bookmark file list to ~/.cache.So no re-caching after reboot"
    set descriptions[87] " [*] Show keybind hints"
    set descriptions[88] " Force rebuild cache"
    set descriptions[89] " Use rofi to select screenshot options "
    set descriptions[90] " Show Manual"
    set descriptions[91] " Fixes issues for asus devices"
    set descriptions[92] " Watches hyprland events and executes actions"
    set descriptions[93] " Overwrite current dots from the preferred user dir "
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
    set descriptions[111] " [*] Add chaotic aur to you mirror"
    set descriptions[112] "   Pipes STDOUT to less"
    set descriptions[113] " [*] Set wallbash mode. [0] [1] [2] [3] "
    set descriptions[114] " Disable tranparency"
    set descriptions[115] "  Reinitialize screencap"
    set descriptions[116] " Links a clone directory. Useful if you want to change your CloneDir"
    set descriptions[117] " Inhibits idle when player status: 'Playing"
    set descriptions[118] "  Print all outputs"
    set descriptions[119] " Next theme"
    set descriptions[120] "  Display this help message"
    set descriptions[121] " Import a theme from different repository."
    set descriptions[122] "   Diff preserved dotfiles"
    set descriptions[123] " Set cursor size"
    set descriptions[124] " Next wallppaer"
    set descriptions[125] " Set preavailable Hyde branch"
    set descriptions[126] " Wallpaper selector"
    set descriptions[127] " Next waybar layout"
    set descriptions[128] " [*] Set waybar size"
    set descriptions[129] " Test a theme"
    set descriptions[130] " Flatpak setup for HyDE"
    set descriptions[131] " Manage users restore control list"
    set descriptions[132] " [*] Screenshot and screenrecord tool"
    set descriptions[133] " [*] Emoji selector"
    set descriptions[134] "  Drag to manually snip an area to screen record it"
    set descriptions[135] " Previous waybar layout"
    set descriptions[136] " wallbash dark mode"
    set descriptions[137] " Converts chaotic aur packages to AUR"
    set descriptions[138] " Set theme"
    set descriptions[139] " Shell selector"
    set descriptions[140] " Hyde core Package status"
    set descriptions[141] " Edit waybar control file"

    set --local literal_transitions
    set literal_transitions[1] "set inputs 85 74 40 57 3 36 24 102 103 125 106 38 46 108 90 32 13 80 16 82 84 93 55 97 39; set tos 7 3 4 5 6 26 8 10 11 13 12 27 14 15 16 17 18 19 20 21 22 23 25 9 2"
    set literal_transitions[3] "set inputs 140 47; set tos 28 35"
    set literal_transitions[6] "set inputs 37 113; set tos 28 30"
    set literal_transitions[7] "set inputs 28 45 8 52 9; set tos 28 28 41 28 34"
    set literal_transitions[8] "set inputs 59 119 138 121 110 109; set tos 28 28 28 28 28 28"
    set literal_transitions[9] "set inputs 116 20 14 72; set tos 28 28 28 28"
    set literal_transitions[10] "set inputs 104 30 100 107 129 98; set tos 28 28 28 28 28 28"
    set literal_transitions[11] "set inputs 65 117 92 132; set tos 28 28 28 43"
    set literal_transitions[12] "set inputs 88 70; set tos 28 28"
    set literal_transitions[14] "set inputs 139; set tos 28"
    set literal_transitions[15] "set inputs 131; set tos 28"
    set literal_transitions[18] "set inputs 15 41 63 1; set tos 28 28 28 28"
    set literal_transitions[19] "set inputs 62 126 50 124 78; set tos 44 28 28 28 28"
    set literal_transitions[20] "set inputs 66 48 123 34; set tos 28 28 28 28"
    set literal_transitions[21] "set inputs 133 64 42 87 25 89 56 29; set tos 36 37 28 31 38 28 39 40"
    set literal_transitions[22] "set inputs 91 130 111; set tos 28 28 33"
    set literal_transitions[25] "set inputs 7; set tos 28"
    set literal_transitions[27] "set inputs 128 135 51 127 141; set tos 45 28 28 28 28"
    set literal_transitions[30] "set inputs 26 31 136 10; set tos 28 28 28 28"
    set literal_transitions[31] "set inputs 6 120 18 83 99; set tos 28 28 28 29 28"
    set literal_transitions[33] "set inputs 2 21 137; set tos 28 28 28"
    set literal_transitions[34] "set inputs 5 54 81 96 75; set tos 28 28 28 28 28"
    set literal_transitions[35] "set inputs 122 112 77; set tos 28 28 28"
    set literal_transitions[36] "set inputs 49 71; set tos 28 29"
    set literal_transitions[37] "set inputs 27 95; set tos 28 29"
    set literal_transitions[38] "set inputs 94 19 86 71 67; set tos 28 28 28 29 32"
    set literal_transitions[39] "set inputs 58 101 95 27; set tos 28 28 29 28"
    set literal_transitions[40] "set inputs 105 35 43 4; set tos 28 28 28 28"
    set literal_transitions[41] "set inputs 53 12 60 61 79 114 73; set tos 28 28 28 28 28 28 28"
    set literal_transitions[42] "set inputs 76; set tos 28"
    set literal_transitions[43] "set inputs 11 134 23 44 17 115 68 118 22; set tos 28 28 28 28 28 28 28 28 28"
    set literal_transitions[44] "set inputs 69; set tos 28"
    set literal_transitions[45] "set inputs 33; set tos 28"

    set --local match_anything_transitions_from 26 2 4 29 17 13 32 1 16 5 23 24
    set --local match_anything_transitions_to 28 28 28 28 28 28 28 24 28 28 28 42

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

    set specialized_command_states 32 29
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
