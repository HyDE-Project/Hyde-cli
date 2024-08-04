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

    set --local literals "revert" "--uninstall" "wallbash" "--copy" "--opacity" "-j" "theme" "save" "unset" "3" "--stop" "--animations" "backup" "BackUp" "list" "cursor" "--freeze" "-p" "--no-custom" "Config" "--install" "--scan" "--record-focus" "theme" "bookmarks" "0" "--reset" "toggle" "pastebin" "1" "systeminfo" "--all" "theme" "--delete" "upgrade" "toggle" "waybar" "reload" "update" "all" "glyph" "--wipe" "--print-monitor" "game" "shell" "Config" "info" "--style" "set" "reload" "reset" "on" "--animations" "code" "search" "version" "--site" "select" "--blur" "off" "variety" "clean" "calc" "airplane_mode" "reload" "--browser" "--print-snip" "--reset" "reload" "--rasi" "Clone" "--all" "check" "--all" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "show" "-f" "inject" "power" "--persist" "binds" "rebuild" "screencap" "man" "asus_patch" "events" "override" "--rebuild" "--rasi" "--blur" "restore" "install" "-d" "--browser" "sddm" "run" "set" "--option" "cache" "list" "control" "prev" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "next" "size" "flatpak" "Config" "screencap" "emoji" "--record-snip" "prev" "2" "--revert" "set" "patch" "select" "Package" "control"

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
    set descriptions[91] " Watches hyprland events and executes actions"
    set descriptions[92] " Overwrite current dots from the preferred user dir "
    set descriptions[93] "   force rebuild cached bookmark paths"
    set descriptions[94] " set rofi configuration"
    set descriptions[95] " Default blur"
    set descriptions[96] " Restore dots"
    set descriptions[97] " Install and set sddm theme from HyDE clone Repo"
    set descriptions[98] "  Add custom delimiter symbol (default '>')"
    set descriptions[99] " Browser to use"
    set descriptions[100] " Sddm commands"
    set descriptions[101] " Executable utilities"
    set descriptions[102] " Set Sddm theme from the list"
    set descriptions[103] "	options"
    set descriptions[104] " Manages Hyde's cache"
    set descriptions[105] " List all local sddm themes"
    set descriptions[106] " Interactive control file"
    set descriptions[107] " Previous theme"
    set descriptions[108] " [*] Add chaotic aur to you mirror"
    set descriptions[109] "   Pipes STDOUT to less"
    set descriptions[110] " [*] Set wallbash mode. [0] [1] [2] [3] "
    set descriptions[111] " Disable tranparency"
    set descriptions[112] "  Reinitialize screencap"
    set descriptions[113] " Links a clone directory. Useful if you want to change your CloneDir"
    set descriptions[114] " Inhibits idle when player status: 'Playing"
    set descriptions[115] "  Print all outputs"
    set descriptions[116] " Next theme"
    set descriptions[117] "  Display this help message"
    set descriptions[118] " Wallpaper selector"
    set descriptions[119] "   Diff preserved dotfiles"
    set descriptions[120] " Set cursor size"
    set descriptions[121] " Next wallppaer"
    set descriptions[122] " Set preavailable Hyde branch"
    set descriptions[123] " Next waybar layout"
    set descriptions[124] " [*] Set waybar size"
    set descriptions[125] " Flatpak setup for HyDE"
    set descriptions[126] " Manage users restore control list"
    set descriptions[127] " [*] Screenshot and screenrecord tool"
    set descriptions[128] " [*] Emoji selector"
    set descriptions[129] "  Drag to manually snip an area to screen record it"
    set descriptions[130] " Previous waybar layout"
    set descriptions[131] " wallbash dark mode"
    set descriptions[132] " Converts chaotic aur packages to AUR"
    set descriptions[133] " Set theme"
    set descriptions[134] " Patch a theme from different repository."
    set descriptions[135] " Shell selector"
    set descriptions[136] " Hyde core Package status"
    set descriptions[137] " Edit waybar control file"

    set --local literal_transitions
    set literal_transitions[1] "set inputs 84 73 39 56 3 35 24 100 101 122 104 37 45 106 89 31 13 79 16 81 83 92 54 96 38; set tos 7 3 4 5 6 26 8 10 11 13 12 27 14 15 16 17 18 19 20 21 22 23 25 9 2"
    set literal_transitions[3] "set inputs 136 46; set tos 28 29"
    set literal_transitions[6] "set inputs 36 110; set tos 28 37"
    set literal_transitions[7] "set inputs 28 44 8 51 9; set tos 28 28 41 28 42"
    set literal_transitions[8] "set inputs 58 116 134 107 133; set tos 28 28 28 28 28"
    set literal_transitions[9] "set inputs 113 20 14 71; set tos 28 28 28 28"
    set literal_transitions[10] "set inputs 102 97 105; set tos 28 28 28"
    set literal_transitions[11] "set inputs 64 114 91 127; set tos 28 28 28 35"
    set literal_transitions[12] "set inputs 87 69; set tos 28 28"
    set literal_transitions[14] "set inputs 135; set tos 28"
    set literal_transitions[15] "set inputs 126; set tos 28"
    set literal_transitions[18] "set inputs 15 40 62 1; set tos 28 28 28 28"
    set literal_transitions[19] "set inputs 61 118 49 121 77; set tos 45 28 28 28 28"
    set literal_transitions[20] "set inputs 65 47 120 33; set tos 28 28 28 28"
    set literal_transitions[21] "set inputs 128 63 41 86 25 88 55 29; set tos 34 30 28 33 38 28 39 32"
    set literal_transitions[22] "set inputs 90 125 108; set tos 28 28 44"
    set literal_transitions[25] "set inputs 7; set tos 28"
    set literal_transitions[27] "set inputs 124 130 50 123 137; set tos 43 28 28 28 28"
    set literal_transitions[29] "set inputs 119 109 76; set tos 28 28 28"
    set literal_transitions[30] "set inputs 27 94; set tos 28 31"
    set literal_transitions[32] "set inputs 103 34 42 4; set tos 28 28 28 28"
    set literal_transitions[33] "set inputs 6 117 18 82 98; set tos 28 28 28 31 28"
    set literal_transitions[34] "set inputs 48 70; set tos 28 31"
    set literal_transitions[35] "set inputs 11 129 23 43 17 112 67 115 22; set tos 28 28 28 28 28 28 28 28 28"
    set literal_transitions[36] "set inputs 75; set tos 28"
    set literal_transitions[37] "set inputs 26 30 131 10; set tos 28 28 28 28"
    set literal_transitions[38] "set inputs 93 19 85 70 66; set tos 28 28 28 31 40"
    set literal_transitions[39] "set inputs 57 99 94 27; set tos 28 28 31 28"
    set literal_transitions[41] "set inputs 52 12 59 60 78 111 72; set tos 28 28 28 28 28 28 28"
    set literal_transitions[42] "set inputs 5 53 80 95 74; set tos 28 28 28 28 28"
    set literal_transitions[43] "set inputs 32; set tos 28"
    set literal_transitions[44] "set inputs 2 21 132; set tos 28 28 28"
    set literal_transitions[45] "set inputs 68; set tos 28"

    set --local match_anything_transitions_from 2 40 4 31 13 17 1 16 5 23 26 24
    set --local match_anything_transitions_to 28 28 28 28 28 28 24 28 28 28 28 36

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

    set specialized_command_states 40 31
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
