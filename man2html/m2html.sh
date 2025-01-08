#!/bin/bash

# Check if man2html is installed, if not, install it
if ! command -v man2html &> /dev/null
then
    echo "man2html not found, installing..."
    sudo apt update && sudo apt install man2html
fi

# Loop through all files in the current directory
for file in *
do
    # Check if the file has a valid man page extension (e.g., .1, .3, .5, .8, etc.)
    if [[ "$file" =~ \.(1|3|5|8|cat1|cat5)$ ]]; then
        # Convert the man page to HTML
        man2html "$file" > "${file}.html"

        # Check if the conversion was successful
        if [ $? -eq 0 ]; then
            echo "Converted $file to ${file}.html"
        else
            echo "Error converting $file, skipping."
        fi
    else
        echo "$file is not a valid man page file, skipping."
    fi
done

