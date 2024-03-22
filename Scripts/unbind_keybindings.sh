#!/bin/env bash

defKeys="${1:-$HOME/.config/hypr/keybindings.conf}"
usrKeys="${2:-$HOME/.config/hypr/userprefs.conf}" #Overrides

unbindKeys="$HOME/.config/hypr/unbind.conf"
touch $unbindKeys

# Get the keybindings from hyprkeys
usrBinds=$(hyprkeys --json -b --config-file "$usrKeys" | jq -r  '.[] | .[] | "\(.Dispatcher),\(.Command)[EOL]"' | grep -v '^$')
defBinds=$(hyprkeys --json -b --config-file "$defKeys" | jq -r  '.[] | .[] | "unbind = \(.Bind);\(.Dispatcher),\(.Command)[EOL]"' | grep -v '^$')

# Find the common lines (conflicts)
unbind=$(grep -Ff <(echo "$usrBinds") <(echo "$defBinds")  | cut -d';' -f 1 | sed 's/\(.*\) \([^ ]*\)$/\1, \2/' | grep -v '^$')

# Write the conflicts to the unbindKeys file
echo "$unbind" > "$unbindKeys"

sed -i '1i#! This file is autogerated by ./unbind_keybindings.sh \
#! If you want to unbind some keys do it inside ~/.config/hypr/userprefs.conf\n' "$unbindKeys"

#? Check if the source line is already in the $usrKeys file
if ! grep -q "^\s*source = $unbindKeys" "$usrKeys"; then
    # If the line is not in the file, add it at the top
    sed -i "1isource = $unbindKeys #? initially empty, Will unbind  duplicate keys for ./userprefs.conf" "$usrKeys"
    echo "[OK] Source Unbind Keys"
fi