function _Hyde
    set COMP_LINE (commandline --cut-at-cursor)

    set COMP_WORDS
    echo $COMP_LINE | read --tokenize --array COMP_WORDS
    if string match --quiet --regex '.*\s$' $COMP_LINE
        set COMP_CWORD (math (count $COMP_WORDS) + 1)
    else
        set COMP_CWORD (count $COMP_WORDS)
    end

    set --local literals "waybar" "update" "wallbash" "::=" "sddm" "reload" "cache" "shell" "branch" "show" "sync" "backup" "wallpaper" "inject" "power" "version" "theme" "run" "man" "shell_completion" "systeminfo" "upgrade" "restore"

    set --local descriptions
    set descriptions[1] " Waybar commands"
    set descriptions[2] " Pull updates from Hyde repository"
    set descriptions[3] " Toggle to use wallpaper accent themes"
    set descriptions[5] " Sddm commands"
    set descriptions[6] " Just reload"
    set descriptions[7] " Manages Hyde's cache"
    set descriptions[8] " Shell commands"
    set descriptions[9] " Set preavailable Hyde branch "
    set descriptions[10] " Some Hypr GUI you might want to use"
    set descriptions[11] " Overwrite current dots from the user "
    set descriptions[12] " Backing up commands"
    set descriptions[13] " Wallpaper commands"
    set descriptions[14] " User/Device specific scripts that might be useful"
    set descriptions[15] " Power Options"
    set descriptions[16] " Hyde-cli version"
    set descriptions[17] " Theme commands"
    set descriptions[18] " Executables"
    set descriptions[19] " Show Manual"
    set descriptions[20] " Generate Shell Completions"
    set descriptions[21] " System information"
    set descriptions[22] " Upgrades dots from the repository"
    set descriptions[23] " Restore dots"

    set --local literal_transitions
    set literal_transitions[1] "set inputs 15 6 2 16 3 5 17 7 18 10 9 8 11 19 20 12 21 13 14 22 1 23; set tos 23 24 4 5 6 7 8 10 11 12 14 13 15 16 17 18 19 20 21 22 2 3"
    set literal_transitions[26] "set inputs 4; set tos 25"

    set --local match_anything_transitions_from 2 22 1 20 11 7 16 10 4 18 6 21 9 3 13 12 8 19 14 15 17 5 23 24
    set --local match_anything_transitions_to 25 25 9 25 25 25 25 25 25 25 25 25 26 25 25 25 25 25 25 25 25 25 25 25

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
