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

    set --local literals "revert" "--uninstall" "wallbash" "--opacity" "-j" "theme" "save" "unset" "3" "--copy" "--animations" "--stop" "backup" "BackUp" "list" "cursor" "--deps" "-p" "--no-custom" "Config" "--freeze" "--install" "set" "--scan" "--record-focus" "theme" "bookmarks" "0" "--reset" "toggle" "pastebin" "unset" "1" "systeminfo" "--all" "theme" "--reset" "--delete" "upgrade" "toggle" "waybar" "reload" "update" "all" "--wipe" "--print-monitor" "game" "shell" "Config" "info" "--style" "reload" "code" "reset" "on" "--animations" "search" "--site" "version" "select" "--blur" "off" "variety" "clean" "calc" "airplane_mode" "--browser" "reload" "--print-snip" "--reset" "reload" "--rasi" "Clone" "--all" "check" "--all" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "show" "-f" "inject" "power" "--persist" "binds" "rebuild" "screencap" "man" "asus_patch" "events" "override" "--rebuild" "--rasi" "--blur" "restore" "install" "-d" "info" "--browser" "sddm" "run" "--option" "cache" "list" "control" "prev" "patch" "chaotic_aur" "--less" "mode" "--opacity" "Link" "audio_idle" "--print-all" "next" "-h" "set" "--preserve" "size" "next" "branch" "select" "next" "size" "test" "flatpak" "import" "Config" "screencap" "select" "emoji" "--record-snip" "prev" "2" "--revert" "set" "select" "--deps" "Package" "glyph" "control"

    set --local descriptions
    set descriptions[1] " Revert to a previous backup run by 'Hyde backup all'. "
    set descriptions[2] " Removes Chaotic Aur"
    set descriptions[3] " Toggle to use wallpaper accent themes"
    set descriptions[4] " Default tranparency"
    set descriptions[5] "  Show the JSON format"
    set descriptions[6] " set the code theme"
    set descriptions[7] " [*] Save power by disabling features"
    set descriptions[8] " [*] Unset specific changes"
    set descriptions[9] " wallbash light mode"
    set descriptions[10] " list and copy selected"
    set descriptions[11] " Disable animations"
    set descriptions[12] "  Stop every instance of Screencap"
    set descriptions[13] " Backing up commands"
    set descriptions[14] " Restores dots from previous backup"
    set descriptions[15] " List the backup"
    set descriptions[16] " Cursor setting"
    set descriptions[17] " check and resolve dependencies"
    set descriptions[18] "  Show the pretty format"
    set descriptions[19] "    run without custom '.lst' bookmark files"
    set descriptions[20] " Only restores dots from default '/Configs'"
    set descriptions[21] "  Frozen screen, drag to manually snip an area"
    set descriptions[22] " Setup Chaotic Aur, append [fresh] to run in fresh install mode"
    set descriptions[23] " Set Sddm theme"
    set descriptions[24] "  Use 'tesseract' to scan image then add to clipboard"
    set descriptions[25] "  Record focused monitor"
    set descriptions[26] " Theme commands"
    set descriptions[27] " [*] Bookmark selector"
    set descriptions[28] " wallbash disabled"
    set descriptions[29] "	Reset cache"
    set descriptions[30] " Toggle ﯦ  Set/unset current changes'"
    set descriptions[31] " [*] Pastebin manager "
    set descriptions[32] " Unset a theme set by 'set' command"
    set descriptions[33] " wallbash auto"
    set descriptions[34] " System information"
    set descriptions[35] " Change all the pre-set sizes"
    set descriptions[36] " Set cursor theme"
    set descriptions[37] "  Reinitialize"
    set descriptions[38] "	list and delete selected"
    set descriptions[39] " Upgrades dots from the repository"
    set descriptions[40] " Cycles wallbash [0] off [1] auto [2] dark [3] light"
    set descriptions[41] " Waybar commands"
    set descriptions[42] " Just reload"
    set descriptions[43] " Pull updates from Hyde repository"
    set descriptions[44] " Backs up the current configuration"
    set descriptions[45] "	wipe database"
    set descriptions[46] "  Print focused monitor"
    set descriptions[47] " Toggle game mode"
    set descriptions[48] " Shell commands"
    set descriptions[49] " [*] Hyde Config File & Directory status"
    set descriptions[50] " Check active cursor status (only gsettings)"
    set descriptions[51] "   use style [ 1 | 2 ]"
    set descriptions[52] " Reloads waybar"
    set descriptions[53] " Code editor related commands"
    set descriptions[54] " Reset changes"
    set descriptions[55] " Disable all fancy things to save more power"
    set descriptions[56] " Default animations"
    set descriptions[57] " [*] Web Search"
    set descriptions[58] " Search engine to use"
    set descriptions[59] " Hyde-cli version"
    set descriptions[60] " Theme selector"
    set descriptions[61] " Disable blur"
    set descriptions[62] " Disables the power saving mode"
    set descriptions[63] " [*] Use variety package to manage wallpapers"
    set descriptions[64] " Clear some storage by deleting old backups"
    set descriptions[65] " [*] Calculator (libqalculate)"
    set descriptions[66] " Toogle airplane mode"
    set descriptions[67] "   Set Browser can also set 'BROWSER' env"
    set descriptions[68] " Reload cursors"
    set descriptions[69] "  Drag to manually snip an area"
    set descriptions[70] " reset hyde profile"
    set descriptions[71] " Reload wallpaper cache"
    set descriptions[72] "	set rofi configuration"
    set descriptions[73] " Restores dots from a clone repository "
    set descriptions[74] " Disable all to save more power"
    set descriptions[75] " Information about Hyde and its components"
    set descriptions[76] " Remove power saving mode"
    set descriptions[78] "   Diff mismatched dotfiles"
    set descriptions[79] " Previous wallpaper"
    set descriptions[80] " Disable border angle animation"
    set descriptions[81] " Wallpaper commands"
    set descriptions[82] " Default border angle animation"
    set descriptions[83] " Useful GUI util"
    set descriptions[84] "  Add custom .conf file"
    set descriptions[85] " User/Device specific scripts that might be useful"
    set descriptions[86] " Power Options"
    set descriptions[87] "	Saves bookmark file list to ~/.cache.So no re-caching after reboot"
    set descriptions[88] " [*] Show keybind hints"
    set descriptions[89] " Force rebuild cache"
    set descriptions[90] " Use rofi to select screenshot options "
    set descriptions[91] " Show Manual"
    set descriptions[92] " Fixes issues for asus devices"
    set descriptions[93] " Watches hyprland events and executes actions"
    set descriptions[94] " Overwrite current dots from the preferred user dir "
    set descriptions[95] "   force rebuild cached bookmark paths"
    set descriptions[96] " set rofi configuration"
    set descriptions[97] " Default blur"
    set descriptions[98] " Restore dots"
    set descriptions[99] " Install and set sddm theme from HyDE clone Repo"
    set descriptions[100] "  Add custom delimiter symbol (default '>')"
    set descriptions[101] " Check sddm theme status"
    set descriptions[102] " Browser to use"
    set descriptions[103] " Sddm commands"
    set descriptions[104] " Executable utilities"
    set descriptions[105] "	options"
    set descriptions[106] " Manages Hyde's cache"
    set descriptions[107] " List all local sddm themes"
    set descriptions[108] " Interactive control file"
    set descriptions[109] " Previous theme"
    set descriptions[111] " [*] Add chaotic aur to you mirror"
    set descriptions[112] "   Pipes STDOUT to less"
    set descriptions[113] " [*] Set wallbash mode. [0] [1] [2] [3] "
    set descriptions[114] " Disable tranparency"
    set descriptions[115] " Links a clone directory. Useful if you want to change your CloneDir"
    set descriptions[116] " Inhibits idle when player status: 'Playing"
    set descriptions[117] "  Print all outputs"
    set descriptions[118] " Next theme"
    set descriptions[119] "  Display this help message"
    set descriptions[120] " [*] Set /Path/to/Wallpaper"
    set descriptions[121] "   Diff preserved dotfiles"
    set descriptions[122] " Set cursor size"
    set descriptions[123] " Next wallppaer"
    set descriptions[124] " Set preavailable Hyde branch"
    set descriptions[125] " Wallpaper selector"
    set descriptions[126] " Next waybar layout"
    set descriptions[127] " [*] Set waybar size"
    set descriptions[128] " Test a theme"
    set descriptions[129] " Flatpak setup for HyDE"
    set descriptions[130] " [*] Import a theme from different repository."
    set descriptions[131] " Manage users restore control list"
    set descriptions[132] " [*] Screenshot and screenrecord tool"
    set descriptions[133] " Select Sddm theme from the list"
    set descriptions[134] " [*] Emoji selector"
    set descriptions[135] "  Drag to manually snip an area to screen record it"
    set descriptions[136] " Previous waybar layout"
    set descriptions[137] " wallbash dark mode"
    set descriptions[138] " Converts chaotic aur packages to AUR"
    set descriptions[139] " Set theme"
    set descriptions[140] " Shell selector"
    set descriptions[141] "  Chek and resolve dependencies"
    set descriptions[142] " Hyde core Package status"
    set descriptions[143] " [*] Glyph selector"
    set descriptions[144] " Edit waybar control file"

    set --local literal_transitions
    set literal_transitions[1] "set inputs 86 75 43 59 3 39 26 103 104 124 106 41 48 108 91 34 13 81 16 83 85 94 53 98 42; set tos 7 3 4 5 6 26 8 10 11 13 12 27 14 15 16 17 18 19 20 21 22 23 25 9 2"
    set literal_transitions[3] "set inputs 142 49; set tos 28 37"
    set literal_transitions[6] "set inputs 40 113; set tos 28 38"
    set literal_transitions[7] "set inputs 30 47 7 54 8; set tos 28 28 40 28 29"
    set literal_transitions[8] "set inputs 60 118 139 110 130 109; set tos 28 28 28 28 31 28"
    set literal_transitions[9] "set inputs 115 20 14 73; set tos 28 28 28 28"
    set literal_transitions[10] "set inputs 133 32 101 107 99 128 23; set tos 28 28 28 28 28 28 28"
    set literal_transitions[11] "set inputs 66 116 93 132; set tos 28 28 28 44"
    set literal_transitions[12] "set inputs 89 71; set tos 28 28"
    set literal_transitions[14] "set inputs 140; set tos 28"
    set literal_transitions[15] "set inputs 131; set tos 28"
    set literal_transitions[18] "set inputs 15 44 64 1; set tos 28 28 28 28"
    set literal_transitions[19] "set inputs 63 120 123 125 79; set tos 36 31 28 28 28"
    set literal_transitions[20] "set inputs 68 50 122 36; set tos 28 28 28 28"
    set literal_transitions[21] "set inputs 134 65 88 27 90 57 143 31; set tos 39 33 41 30 28 35 42 34"
    set literal_transitions[22] "set inputs 92 129 111; set tos 28 28 45"
    set literal_transitions[25] "set inputs 6; set tos 28"
    set literal_transitions[27] "set inputs 127 136 52 126 144; set tos 46 28 28 28 28"
    set literal_transitions[29] "set inputs 4 56 82 97 76; set tos 28 28 28 28 28"
    set literal_transitions[30] "set inputs 67 95 19 87 72 17; set tos 32 28 28 28 31 28"
    set literal_transitions[33] "set inputs 17 29 96; set tos 28 28 31"
    set literal_transitions[34] "set inputs 105 38 45 10 17; set tos 28 28 28 28 28"
    set literal_transitions[35] "set inputs 58 102 96 29; set tos 28 28 31 28"
    set literal_transitions[36] "set inputs 70; set tos 28"
    set literal_transitions[37] "set inputs 121 112 78; set tos 28 28 28"
    set literal_transitions[38] "set inputs 28 33 137 9; set tos 28 28 28 28"
    set literal_transitions[39] "set inputs 17 72 51; set tos 28 31 28"
    set literal_transitions[40] "set inputs 55 11 61 62 80 114 74; set tos 28 28 28 28 28 28 28"
    set literal_transitions[41] "set inputs 5 119 18 84 100; set tos 28 28 28 31 28"
    set literal_transitions[42] "set inputs 17; set tos 28"
    set literal_transitions[43] "set inputs 77; set tos 28"
    set literal_transitions[44] "set inputs 12 135 25 46 21 37 69 141 117 24; set tos 28 28 28 28 28 28 28 28 28 28"
    set literal_transitions[45] "set inputs 2 22 138; set tos 28 28 28"
    set literal_transitions[46] "set inputs 35; set tos 28"

    set --local match_anything_transitions_from 2 4 31 13 17 32 1 16 5 23 26 24
    set --local match_anything_transitions_to 28 28 28 28 28 28 24 28 28 28 28 43

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

    set specialized_command_states 31 32
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
