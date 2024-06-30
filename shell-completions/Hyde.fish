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

    set --local literals "revert" "--uninstall" "wallbash" "--copy" "--opacity" "-j" "save" "unset" "3" "--stop" "--animations" "backup" "BackUp" "list" "cursor" "--freeze" "-p" "--no-custom" "Config" "--install" "--scan" "--record-focus" "theme" "bookmarks" "0" "--reset" "toggle" "pastebin" "1" "systeminfo" "--all" "theme" "--delete" "upgrade" "toggle" "waybar" "reload" "update" "all" "glyph" "--wipe" "--print-monitor" "game" "shell" "Config" "info" "--style" "set" "reload" "reset" "search" "--animations" "--site" "version" "select" "--blur" "variety" "theme" "clean" "calc" "airplane_mode" "reload" "--browser" "--print-snip" "--reset" "reload" "--rasi" "Clone" "check" "::=" "--mismatch" "prev" "--borderangle" "wallpaper" "--borderangle" "show" "-f" "inject" "power" "--persist" "binds" "rebuild" "screencap" "man" "asus_patch" "events" "override" "--rebuild" "--rasi" "--blur" "restore" "-d" "--browser" "sddm" "run" "--option" "cache" "control" "prev" "chaotic_aur" "--less" "mode" "--opacity" "--reset" "Link" "audio_idle" "--print-all" "next" "-h" "select" "--preserve" "size" "next" "branch" "next" "size" "flatpak" "Config" "screencap" "emoji" "--record-snip" "prev" "2" "--revert" "set" "patch" "select" "Package" "control"

    set --local descriptions
    set descriptions[1] " Revert to a previous backup run by 'Hyde backup all'. "
    set descriptions[2] " Removes Chaotic Aur"
    set descriptions[3] " Toggle to use wallpaper accent themes"
    set descriptions[4] "	list and copy selected"
    set descriptions[5] " Default tranparency"
    set descriptions[6] "  Show the JSON format"
    set descriptions[7] " [*] Save power by disabling features"
    set descriptions[8] " [*] Unset specific changes"
    set descriptions[9] " wallbash light mode"
    set descriptions[10] "  Stop every instance of Screencap"
    set descriptions[11] " Disable animations"
    set descriptions[12] " Backing up commands"
    set descriptions[13] " Restores dots from previous backup"
    set descriptions[14] " List the backup"
    set descriptions[15] " Cursor setting"
    set descriptions[16] "  Frozen screen, drag to manually snip an area"
    set descriptions[17] "  Show the pretty format"
    set descriptions[18] "    run without custom '.lst' bookmark files"
    set descriptions[19] " Only restores dots from default '/Configs'"
    set descriptions[20] " Setup Chaotic Aur, append [fresh] to run in fresh install mode"
    set descriptions[21] "  Use 'tesseract' to scan image then add to clipboard"
    set descriptions[22] "  Record focused monitor"
    set descriptions[23] " Theme commands"
    set descriptions[24] " [*] Bookmark selector"
    set descriptions[25] " wallbash disabled"
    set descriptions[26] "	Reset cache"
    set descriptions[27] " Toggle ﯦ  Set/unset current changes'"
    set descriptions[28] " [*] Pastebin manager "
    set descriptions[29] " wallbash auto"
    set descriptions[30] " System information"
    set descriptions[31] " Change all the pre-set sizes"
    set descriptions[32] " Set cursor theme"
    set descriptions[33] "	list and delete selected"
    set descriptions[34] " Upgrades dots from the repository"
    set descriptions[35] " Cycles wallbash [0] off [1] auto [2] dark [3] light"
    set descriptions[36] " Waybar commands"
    set descriptions[37] " Just reload"
    set descriptions[38] " Pull updates from Hyde repository"
    set descriptions[39] " Backs up the current configuration"
    set descriptions[40] " Glyph selector"
    set descriptions[41] "	wipe database"
    set descriptions[42] "  Print focused monitor"
    set descriptions[43] " Toggle game mode"
    set descriptions[44] " Shell commands"
    set descriptions[45] " [*] Hyde Config File & Directory status"
    set descriptions[46] " Check active cursor status (only gsettings)"
    set descriptions[47] "   use style [ 1 | 2 ]"
    set descriptions[48] " Set /Path/to/Wallpaper"
    set descriptions[49] " Reloads waybar"
    set descriptions[50] " Reset changes"
    set descriptions[51] " [*] Web Search"
    set descriptions[52] " Default animations"
    set descriptions[53] " Search engine to use"
    set descriptions[54] " Hyde-cli version"
    set descriptions[55] " Theme selector"
    set descriptions[56] " Disable blur"
    set descriptions[57] " [*] Use variety package to manage wallpapers"
    set descriptions[58] " Select sddm theme"
    set descriptions[59] " Clear some storage by deleting old backups"
    set descriptions[60] " [*] Calculator (libqalculate)"
    set descriptions[61] " Toogle airplane mode"
    set descriptions[62] " Reload cursors"
    set descriptions[63] "   Set Browser can also set 'BROWSER' env"
    set descriptions[64] "  Drag to manually snip an area"
    set descriptions[65] " reset hyde profile"
    set descriptions[66] " Reload wallpaper cache"
    set descriptions[67] "	set rofi configuration"
    set descriptions[68] " Restores dots from a clone repository "
    set descriptions[69] " Information about Hyde and its components"
    set descriptions[71] "   Diff mismatched dotfiles"
    set descriptions[72] " Previous wallpaper"
    set descriptions[73] " Disable border angle animation"
    set descriptions[74] " Wallpaper commands"
    set descriptions[75] " Default border angle animation"
    set descriptions[76] " Useful GUI util"
    set descriptions[77] "  Add custom .conf file"
    set descriptions[78] " User/Device specific scripts that might be useful"
    set descriptions[79] " Power Options"
    set descriptions[80] "	Saves bookmark file list to ~/.cache.So no re-caching after reboot"
    set descriptions[81] " [*] Show keybind hints"
    set descriptions[82] " Force rebuild cache"
    set descriptions[83] " Use rofi to select screenshot options "
    set descriptions[84] " Show Manual"
    set descriptions[85] " Fixes issues for asus devices"
    set descriptions[86] " Watches hyprland events and executes actions"
    set descriptions[87] " Overwrite current dots from the preferred user dir "
    set descriptions[88] "   force rebuild cached bookmark paths"
    set descriptions[89] " set rofi configuration"
    set descriptions[90] " Default blur"
    set descriptions[91] " Restore dots"
    set descriptions[92] "  Add custom delimiter symbol (default '>')"
    set descriptions[93] " Browser to use"
    set descriptions[94] " Sddm commands"
    set descriptions[95] " Executable utilities"
    set descriptions[96] "	options"
    set descriptions[97] " Manages Hyde's cache"
    set descriptions[98] " Interactive control file"
    set descriptions[99] " Previous theme"
    set descriptions[100] " [*] Add chaotic aur to you mirror"
    set descriptions[101] "   Pipes STDOUT to less"
    set descriptions[102] " [*] Set wallbash mode. [0] [1] [2] [3] "
    set descriptions[103] " Disable tranparency"
    set descriptions[104] "  Reinitialize screencap"
    set descriptions[105] " Links a clone directory. Useful if you want to change your CloneDir"
    set descriptions[106] " Inhibits idle when player status: 'Playing"
    set descriptions[107] "  Print all outputs"
    set descriptions[108] " Next theme"
    set descriptions[109] "  Display this help message"
    set descriptions[110] " Wallpaper selector"
    set descriptions[111] "   Diff preserved dotfiles"
    set descriptions[112] " Set cursor size"
    set descriptions[113] " Next wallppaer"
    set descriptions[114] " Set preavailable Hyde branch"
    set descriptions[115] " Next waybar layout"
    set descriptions[116] " [*] Set waybar size"
    set descriptions[117] " Flatpak setup for HyDE"
    set descriptions[118] " Manage users restore control list"
    set descriptions[119] " [*] Screenshot and screenrecord tool"
    set descriptions[120] " [*] Emoji selector"
    set descriptions[121] "  Drag to manually snip an area to screen record it"
    set descriptions[122] " Previous waybar layout"
    set descriptions[123] " wallbash dark mode"
    set descriptions[124] " Converts chaotic aur packages to AUR"
    set descriptions[125] " Set theme"
    set descriptions[126] " Patch a theme from different repository."
    set descriptions[127] " Shell selector"
    set descriptions[128] " Hyde core Package status"
    set descriptions[129] " Edit waybar control file"

    set --local literal_transitions
    set literal_transitions[1] "set inputs 36 69 38 54 3 37 23 94 95 114 97 44 98 84 30 12 74 15 76 78 87 34 79 91; set tos 25 3 4 5 6 26 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 24 2 7"
    set literal_transitions[2] "set inputs 27 43 7 50 8; set tos 27 27 32 27 34"
    set literal_transitions[3] "set inputs 128 45; set tos 27 36"
    set literal_transitions[6] "set inputs 35 102; set tos 27 37"
    set literal_transitions[7] "set inputs 105 19 13 68; set tos 27 27 27 27"
    set literal_transitions[8] "set inputs 55 108 126 99 125; set tos 27 27 27 27 27"
    set literal_transitions[9] "set inputs 58; set tos 27"
    set literal_transitions[10] "set inputs 61 106 86 119; set tos 27 27 27 28"
    set literal_transitions[12] "set inputs 82 66; set tos 27 27"
    set literal_transitions[13] "set inputs 127; set tos 27"
    set literal_transitions[14] "set inputs 118; set tos 27"
    set literal_transitions[17] "set inputs 14 39 59 1; set tos 27 27 27 27"
    set literal_transitions[18] "set inputs 57 110 48 113 72; set tos 35 27 27 27 27"
    set literal_transitions[19] "set inputs 62 46 112 32; set tos 27 27 27 27"
    set literal_transitions[20] "set inputs 120 60 40 81 24 83 51 28; set tos 33 41 27 29 42 27 31 39"
    set literal_transitions[21] "set inputs 85 117 100; set tos 27 27 38"
    set literal_transitions[25] "set inputs 116 122 49 115 129; set tos 44 27 27 27 27"
    set literal_transitions[28] "set inputs 10 121 22 42 16 104 64 107 21; set tos 27 27 27 27 27 27 27 27 27"
    set literal_transitions[29] "set inputs 6 109 17 77 92; set tos 27 27 27 30 27"
    set literal_transitions[31] "set inputs 53 93 89 26; set tos 27 27 30 27"
    set literal_transitions[32] "set inputs 11 56 73 103; set tos 27 27 27 27"
    set literal_transitions[33] "set inputs 47 67; set tos 27 30"
    set literal_transitions[34] "set inputs 5 52 75 90; set tos 27 27 27 27"
    set literal_transitions[35] "set inputs 65; set tos 27"
    set literal_transitions[36] "set inputs 111 101 71; set tos 27 27 27"
    set literal_transitions[37] "set inputs 25 29 123 9; set tos 27 27 27 27"
    set literal_transitions[38] "set inputs 2 20 124; set tos 27 27 27"
    set literal_transitions[39] "set inputs 96 33 41 4; set tos 27 27 27 27"
    set literal_transitions[40] "set inputs 70; set tos 27"
    set literal_transitions[41] "set inputs 26 89; set tos 27 30"
    set literal_transitions[42] "set inputs 88 18 80 67 63; set tos 27 27 27 30 43"
    set literal_transitions[44] "set inputs 31; set tos 27"

    set --local match_anything_transitions_from 26 43 11 4 15 1 16 22 5 23 30 24
    set --local match_anything_transitions_to 27 27 27 27 27 23 27 27 27 40 27 27

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

    set specialized_command_states 43 30
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
