#!/bin/bash




recurse() {
# Define the backup directory
BkpDir="$1"
> ./BAKrestore_cfg.lst
# Read the file line by line
while IFS= read -r line ; do IFS='|' read -r -a array <<< "$line"

  # Get the directory and file/directory name from the 3rd and 4th columns
    dir="${array[2]}"
    files="${array[3]}"
    pkg="${array[4]}"
    cur="${dir/\$\{HOME\}/}"

  # Split the files into an array
  IFS=' ' read -r -a files_array <<< "$files"
echo ""
  # Iterate over each file or directory in the 4th column
  for file in "${files_array[@]}"; do

        if [ -e "$BkpDir$cur/$file" ]; then
        echo -e "$cur/$file"
        echo "Y|Y|$dir|$file|$pkg" >> "./BAKrestore_cfg.lst"
        fi
  done
done < "./restore_cfg.lst"

}

recurse $1