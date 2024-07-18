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

    set --local literals "revert" "--uninstall" "wallbash" "--copy" "--opacity" "-j" "theme" "save" "unset" "3" "--stop" "--animations" "backup" "BackUp" "list" "cursor" "--freeze" "-p" "--no-custom" "Config" "--install" "--scan" "--record-focus" "theme" "bookmarks" "0" "--reset" "toggle" "pastebin" "1" "systeminfo" "--all" "theme" "--delete" "upgrade" "toggle" "waybar" "reload" "update" "all" "glyph" "--wipe" "--print-monitor" "game" "shell" "Config" "info" "--style" "set" "reload" "reset" "code" "--animations" "search" "--site" "version" "select" "--blur" "variety" "clean" "calc" "airplane_mode" "reload" "--browser" "--print-snip" "--reset" "reload" "--rasi" "Clone" "check" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "show" "-f" "inject" "power" "--persist" "binds" "rebuild" "screencap" "man" "asus_patch" "events" "override" "--rebuild" "--rasi" "--blur" "restore" "install" "-d" "--browser" "sddm" "run" "set" "--option" "cache" "list" "control" "prev" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "next" "size" "flatpak" "Config" "screencap" "emoji" "--record-snip" "prev" "2" "--revert" "set" "patch" "select" "Package" "control"

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
    set descriptions[60] " Clear some storage by deleting old backups"
    set descriptions[61] " [*] Calculator (libqalculate)"
    set descriptions[62] " Toogle airplane mode"
    set descriptions[63] " Reload cursors"
    set descriptions[64] "   Set Browser can also set 'BROWSER' env"
    set descriptions[65] "  Drag to manually snip an area"
    set descriptions[66] " reset hyde profile"
    set descriptions[67] " Reload wallpaper cache"
    set descriptions[68] "	set rofi configuration"
    set descriptions[69] " Restores dots from a clone repository "
    set descriptions[70] " Information about Hyde and its components"
    set descriptions[72] "   Diff mismatched dotfiles"
    set descriptions[73] " Previous wallpaper"
    set descriptions[74] " Disable border angle animation"
    set descriptions[75] " Wallpaper commands"
    set descriptions[76] " Default border angle animation"
    set descriptions[77] " Useful GUI util"
    set descriptions[78] "  Add custom .conf file"
    set descriptions[79] " User/Device specific scripts that might be useful"
    set descriptions[80] " Power Options"
    set descriptions[81] "	Saves bookmark file list to ~/.cache.So no re-caching after reboot"
    set descriptions[82] " [*] Show keybind hints"
    set descriptions[83] " Force rebuild cache"
    set descriptions[84] " Use rofi to select screenshot options "
    set descriptions[85] " Show Manual"
    set descriptions[86] " Fixes issues for asus devices"
    set descriptions[87] " Watches hyprland events and executes actions"
    set descriptions[88] " Overwrite current dots from the preferred user dir "
    set descriptions[89] "   force rebuild cached bookmark paths"
    set descriptions[90] " set rofi configuration"
    set descriptions[91] " Default blur"
    set descriptions[92] " Restore dots"
    set descriptions[93] " Install and set sddm theme from HyDE clone Repo"
    set descriptions[94] "  Add custom delimiter symbol (default '>')"
    set descriptions[95] " Browser to use"
    set descriptions[96] " Sddm commands"
    set descriptions[97] " Executable utilities"
    set descriptions[98] " Set Sddm theme from the list"
    set descriptions[99] "	options"
    set descriptions[100] " Manages Hyde's cache"
    set descriptions[101] " List all local sddm themes"
    set descriptions[102] " Interactive control file"
    set descriptions[103] " Previous theme"
    set descriptions[104] " [*] Add chaotic aur to you mirror"
    set descriptions[105] "   Pipes STDOUT to less"
    set descriptions[106] " [*] Set wallbash mode. [0] [1] [2] [3] "
    set descriptions[107] " Disable tranparency"
    set descriptions[108] "  Reinitialize screencap"
    set descriptions[109] " Links a clone directory. Useful if you want to change your CloneDir"
    set descriptions[110] " Inhibits idle when player status: 'Playing"
    set descriptions[111] "  Print all outputs"
    set descriptions[112] " Next theme"
    set descriptions[113] "  Display this help message"
    set descriptions[114] " Wallpaper selector"
    set descriptions[115] "   Diff preserved dotfiles"
    set descriptions[116] " Set cursor size"
    set descriptions[117] " Next wallppaer"
    set descriptions[118] " Set preavailable Hyde branch"
    set descriptions[119] " Next waybar layout"
    set descriptions[120] " [*] Set waybar size"
    set descriptions[121] " Flatpak setup for HyDE"
    set descriptions[122] " Manage users restore control list"
    set descriptions[123] " [*] Screenshot and screenrecord tool"
    set descriptions[124] " [*] Emoji selector"
    set descriptions[125] "  Drag to manually snip an area to screen record it"
    set descriptions[126] " Previous waybar layout"
    set descriptions[127] " wallbash dark mode"
    set descriptions[128] " Converts chaotic aur packages to AUR"
    set descriptions[129] " Set theme"
    set descriptions[130] " Patch a theme from different repository."
    set descriptions[131] " Shell selector"
    set descriptions[132] " Hyde core Package status"
    set descriptions[133] " Edit waybar control file"

    set --local literal_transitions
    set literal_transitions[1] "set inputs 80 70 39 56 3 35 24 96 97 118 100 37 45 102 85 31 13 75 16 77 79 88 52 92 38; set tos 7 3 4 5 6 26 8 10 11 13 12 27 14 15 16 17 18 19 20 21 22 23 25 9 2"
    set literal_transitions[3] "set inputs 132 46; set tos 28 37"
    set literal_transitions[6] "set inputs 36 106; set tos 28 38"
    set literal_transitions[7] "set inputs 28 44 8 51 9; set tos 28 28 42 28 44"
    set literal_transitions[8] "set inputs 57 112 130 103 129; set tos 28 28 28 28 28"
    set literal_transitions[9] "set inputs 109 20 14 69; set tos 28 28 28 28"
    set literal_transitions[10] "set inputs 98 93 101; set tos 28 28 28"
    set literal_transitions[11] "set inputs 62 110 87 123; set tos 28 28 28 36"
    set literal_transitions[12] "set inputs 83 67; set tos 28 28"
    set literal_transitions[14] "set inputs 131; set tos 28"
    set literal_transitions[15] "set inputs 122; set tos 28"
    set literal_transitions[18] "set inputs 15 40 60 1; set tos 28 28 28 28"
    set literal_transitions[19] "set inputs 59 114 49 117 73; set tos 30 28 28 28 28"
    set literal_transitions[20] "set inputs 63 47 116 33; set tos 28 28 28 28"
    set literal_transitions[21] "set inputs 124 61 41 82 25 84 54 29; set tos 40 35 28 32 41 28 34 31"
    set literal_transitions[22] "set inputs 86 121 104; set tos 28 28 45"
    set literal_transitions[25] "set inputs 7; set tos 28"
    set literal_transitions[27] "set inputs 120 126 50 119 133; set tos 43 28 28 28 28"
    set literal_transitions[30] "set inputs 66; set tos 28"
    set literal_transitions[31] "set inputs 99 34 42 4; set tos 28 28 28 28"
    set literal_transitions[32] "set inputs 6 113 18 78 94; set tos 28 28 28 33 28"
    set literal_transitions[34] "set inputs 55 95 90 27; set tos 28 28 33 28"
    set literal_transitions[35] "set inputs 27 90; set tos 28 33"
    set literal_transitions[36] "set inputs 11 125 23 43 17 108 65 111 22; set tos 28 28 28 28 28 28 28 28 28"
    set literal_transitions[37] "set inputs 115 105 72; set tos 28 28 28"
    set literal_transitions[38] "set inputs 26 30 127 10; set tos 28 28 28 28"
    set literal_transitions[39] "set inputs 71; set tos 28"
    set literal_transitions[40] "set inputs 48 68; set tos 28 33"
    set literal_transitions[41] "set inputs 89 19 81 68 64; set tos 28 28 28 33 29"
    set literal_transitions[42] "set inputs 12 58 74 107; set tos 28 28 28 28"
    set literal_transitions[43] "set inputs 32; set tos 28"
    set literal_transitions[44] "set inputs 5 53 76 91; set tos 28 28 28 28"
    set literal_transitions[45] "set inputs 2 21 128; set tos 28 28 28"

    set --local match_anything_transitions_from 2 4 29 17 13 1 16 33 5 23 26 24
    set --local match_anything_transitions_to 28 28 28 28 28 24 28 28 28 28 28 39

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

    set specialized_command_states 33 29
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
