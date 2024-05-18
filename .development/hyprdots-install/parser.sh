#!/bin/env bash 

FILE='./packages.ini'

process_input() {
    local -a DEFAULT=()

    # Read the input line by line
    while IFS= read -r line; do
        # Check if the line starts with '+'
        if [[ $line == \+* ]]; then
            # Remove the '+' character and add the line to the DEFAULT array
            DEFAULT+=("${line#\+}")
            # Print the line without the '+' character
            echo "${line#\+}"
        else
            # Print all other lines as they are
            echo "$line"
        fi
    done

    # Convert the array to a string and export it
    export DEFAULT_STR="$(printf "%s\n" "${DEFAULT[@]}")"
}


# Function to parse the ini file
parse_section() {
    local section="$1"
    local file="$2"

    # Use awk to print lines between the specified section and the next section
    awk -v section="$section" '
        BEGIN { in_section = 0 }
        /^\[/ { in_section = ($0 == "[" section "]") }
        in_section && !/^\[/ && !/^#/ && !/^$/ { print}
    ' "$file"

}

# Call the function with the section name and the path to the ini file
#+ parse_section "$1" "$FILE"


ls_sec() {
    local ini_file="$1"
    # Use awk to print lines that start with '[' and end with ']', excluding those with '+'
    awk -F'[][]' '/^\[.+\]$/ && !/\+/ { print $2 }' "$ini_file"

}

# Call the function with the path to the ini file
SECTION=$(ls_sec "$FILE" | fzf)

# echo $SECTION

parse_section "$SECTION" ${FILE} | process_input

for item in "${DEFAULT[@]}"; do
    echo "Item in DEFAULT array: $item"
done