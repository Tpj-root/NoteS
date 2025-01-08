#!/bin/bash

# Check if highlight is installed, if not, install it
if ! command -v highlight &> /dev/null
then
    echo "highlight not found, installing..."
    sudo apt update && sudo apt install highlight
fi

# Function to create an HTML file for the index
create_index() {
    local dir="$1"
    local index_file="$2"

    echo "<html>" > "$index_file"
    echo "<head>" >> "$index_file"
    echo "<title>Project Files</title>" >> "$index_file"
    echo "<style>" >> "$index_file"
    echo "body.hl { background-color: #e0eaee; }" >> "$index_file"
    echo "</style>" >> "$index_file"
    echo "</head>" >> "$index_file"
    echo "<body class='hl'>" >> "$index_file"
    echo "<h1>Project Files</h1>" >> "$index_file"
    echo "<ul>" >> "$index_file"
}

# Function to recursively process the directory and convert files
process_directory() {
    local dir="$1"
    local index_file="$2"
    local base_dir="$3"

    # Create the index.html for the current directory
    create_index "$dir" "$index_file"

    # Loop through all files and directories
    for file in "$dir"/*; do
        if [[ -d "$file" ]]; then
            # If it's a directory, recurse into it
            local dir_name=$(basename "$file")
            local sub_index_file="$file/index.html"
            echo "<li><a href='$dir_name/index.html'>$dir_name</a></li>" >> "$index_file"
            process_directory "$file" "$sub_index_file" "$base_dir"
        elif [[ -f "$file" && ( "$file" == *.c || "$file" == *.cpp || "$file" == *.hpp || "$file" == *.hpp || "$file" == *.rst || "$file" == *.yml || "$file" == *.txt|| "$file" == *.h || "$file" == *.in || "$file" == *.diagram || "$file" == *.cmake || "$file" == *.xml || "$file" == *.jam || "$file" == *.md || "$file" == *.dic || "$file" == *.cfg || "$file" == *.am || "$file" == *.yaml || "$file" == *.toml || "$file" == *.dot || "$file" == *.css || "$file" == *.aff || "$file" == *.py || "$file" == *.sh ) ]]; then
            #
            # Convert supported files into HTML
            local output_file="${file%.*}.html"
            highlight --force -O html -i "$file" -o "$output_file" 2>/dev/null

            # Calculate the relative path for the link
            local rel_path=$(realpath --relative-to="$dir" "$output_file")
            echo "<li><a href='$rel_path'>$(basename "$file")</a></li>" >> "$index_file"
        fi
    done

    # Close the HTML tags
    echo "</ul>" >> "$index_file"
    echo "</body></html>" >> "$index_file"
}

# Main directory to start processing
start_dir="."
base_dir=$(realpath "$start_dir")

# Index file location
index_file="index.html"

# Process the directory and generate HTML links for each file
process_directory "$start_dir" "$index_file" "$base_dir"

echo "Project HTML structure has been generated. Open $index_file to view the result."

