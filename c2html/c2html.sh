#!/bin/bash

# Check if highlight is installed, if not, install it
if ! command -v highlight &> /dev/null
then
    echo "highlight not found, installing..."
    sudo apt update && sudo apt install highlight
fi

# Loop through all C files in the current directory
for file in *.c
do
    # Check if the file exists and is a C source code file
    if [[ -f "$file" ]]; then
        # Convert the C file to HTML using highlight
        output_file="${file%.c}.html"
        highlight -O html -i "$file" -o "$output_file"
        
        # Check if the conversion was successful
        if [ $? -eq 0 ]; then
            echo "Converted $file to $output_file"
        else
            echo "Error converting $file, skipping."
        fi
    fi
done

