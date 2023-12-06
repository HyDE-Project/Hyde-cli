#!/bin/bash

defKeys="${1:-$HOME/.config/hypr/keybindings.conf}"
usrKeys="${2:-$HOME/.config/hypr/userprefs.conf}" #Overrides
backupFile=$(mktemp)


# Create a backup of the defKeys file
cp "$defKeys" "$backupFile"

#? Handles Variables to overwrite existing  variables.
usrVar=$(grep '^\s*\$.*=' "$usrKeys" | sed 's/^[ \t]*//' )
defVar=$(grep '^\s*\$.*=' "$defKeys" | sed 's/^[ \t]*//' | cut -d'=' -f 1)

IFS=$'\n' read -rd '' -a usrVarValArray <<<"$usrVar"

for line in "${usrVarValArray[@]}"; do
    varName=$(echo "$line" | cut -d '=' -f 1)
    varValue=$(echo "$line" | cut -d '=' -f 2)
if grep -Ff <(echo "$varName") <(echo "$defVar") > /dev/null   ; then
        sed -i "s/^$varName.*$/$varName=$varValue/" "$defKeys"
    fi
done

echo -e "Variable Defaults: \n$(grep '^\s*\$.*=' "$defKeys" | sed 's/^[ \t]*//' )"

# Ask for user confirmation to keep the changes
echo "Please try to check if your configuration are still correct."
echo "Would you like to keep the changes? "
read -n 1 -s -r -p "[ENTER:yes ANY:no]"
if [[ $REPLY != "" ]]; then
    echo -e "\nOperation cancelled by user."
    # Restore the defKeys file from the backup
    mv "$backupFile" "$defKeys"
    exit 0
fi
echo -e "\n[OK]"