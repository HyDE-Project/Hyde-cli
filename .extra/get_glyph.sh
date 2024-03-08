#! /bin/bash

#? My Attempt to extract  the NF glyphs
#TODO: refactor

repo_dir=$(dirname "$(dirname "$(realpath "$0")")")

DB="${repo_dir}/Configs/glyph.db"
curl -s https://www.nerdfonts.com/cheat-sheet -o "${DB}"
 
data=$(grep '": ' "${DB}" | awk -F '": "' '{printf "\\u%s%s\n", $2, $1 }' | awk -F '",  "' ' {print $1,"\t" $2}')

# Set the Internal Field Separator (IFS) to a newline
IFS=$'\n'
: > ${DB}
# Iterate over each line
for line in ${data}; do
    echo -e "${line}"  >> "${DB}"
done

