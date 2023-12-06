#!/bin/bash
{ 
  source ~/.config/hypr/scripts/globalcontrol.sh
  ScrDir="$ConfDir/hypr/scripts"
  ScriptDir="$CloneDir/Scripts"
  cd $ScriptDir
} 2> /dev/null || { 
  read -n 1 -s -r -p "[ENTER:yes ANY:no] Hyprdots not detected! This will run the installation. " key
  [[ -z "$key" ]] || exit 0 
  git clone --depth 1 https://github.com/prasanthrangan/hyprdots ~/Hyprdots
  cd ~/Hyprdots/Scripts
  ./install.sh
}

echo "Hyprdots: $(git describe --tags --always)" #? Fetches the latest git tag
Function="${1}"

#??? Check for updates every 12 Hrs; Running Hyprdots update resets this.
[ ! -f "/tmp/hyprdots_update_check" ] || [[ $(find "/tmp/hyprdots_update_check" -mmin +720) ]] && \
( echo "CloneDirectory: $CloneDir" && \
git fetch > /dev/null 2>&1 && \
( [ "$(git rev-parse HEAD)" != "$(git rev-parse @{u})" ] && echo -e "Updates available! \nRUN: \033[0;34mHyprdots update\033[0m"  || echo -e "\033[0;32mHyprdots Up to date\033[0m" ) && \
touch "/tmp/hyprdots_update_check" )

#??? Handle Syntax errors
help=$(grep -E '^\w+ *\( *\)\s*\{ #\?' $0 | awk 'BEGIN { FS = "[()#?]" } { printf "  %-20s %s\n", $1, $5 }')
if [ -z "$1" ]; then exit 1 
elif ! (echo "$help" | awk '{print $1}' | grep -w "$Function" 1> /dev/null); then echo -e "\nUsage: hyprdots-ctl [Function] [Arguments] [Parameter]\n$help" ; exit 1
fi

Parameters() { #TODO: Add conditionals here like 'case'
Function="${Function// /}"
if awk "/^$Function\(\) \{/,/}/" $0 | grep > /dev/null  'case'; then
  awk "/^$Function\(\) \{/,/esac/" $0 | grep -E '^\s+\w+\)' | awk 'BEGIN { FS = "[()#?]" } { sub(/^[ \t]+/, "", $1); printf "                          %-15s %s\n","["$1"]", $4 }'
fi
} 

SelectOption() { #TODO Can be improved soon using other package.
    echo ""
    IFS=$'\n' read -d '' -ra options < <(echo "$1")
    select selected in "${options[@]}" ; do echo "You selected: $selected" ; break ; done
    #echo "$selected"
}

ConfigCtl() {
    FILE="$1"
    EDITOR="${EDITOR:-code}"  # Use VS Code as the default editor
    echo -e "[Editor]: $EDITOR (\"export EDITOR=pref_editor\") \n[Modifying]: $FILE \nPress Any Key if done editing"
    #kitty -o allow_remote_control=yes -o listen_on=unix:/tmp/mykitty $(which $EDITOR) "$FILE" > /dev/null 2>&1 &
    kitty $(which $EDITOR) "$FILE" > /dev/null 2>&1 &
    LAST_MD5SUM=$(md5sum "$FILE")
    while true; do CURRENT_MD5SUM=$(md5sum "$FILE")
        if [ "$CURRENT_MD5SUM" != "$LAST_MD5SUM" ]; then eval "$ACTION"
            LAST_MD5SUM="$CURRENT_MD5SUM"
        fi ; read -t 2 -n 1 > /dev/null && break #? loop every 2 seconds
    done
}

PreserveCloneDir() { #* Use: Not to mess up the current CloneDir If installing backup.
if [ -f $HOME/.config/hypr/scripts/globalcontrol.sh ] ; then
    sed -i "/^CloneDir=/c\CloneDir=\"$CloneDir\"" $HOME/.config/hypr/scripts/globalcontrol.sh
fi
}
