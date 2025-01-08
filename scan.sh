#!/bin/bash

# Function to scan and count file extensions
scan_and_count() {
    local dir="$1"

    # Use find to list all files, then extract extensions
    find "$dir" -type f | sed -n 's/.*\.\([a-zA-Z0-9_+-]*\)$/\1/p' | sort | uniq -c | sort -nr > file_report.txt

    # Add a summary header to the report
    echo "File Type Report for Directory: $dir" > final_report.txt
    echo "===================================" >> final_report.txt
    echo "" >> final_report.txt
    echo "Count   Extension" >> final_report.txt
    echo "--------------------" >> final_report.txt

    # Append counts to the final report
    cat file_report.txt >> final_report.txt

    # Cleanup
    rm file_report.txt

    echo "File report has been saved to final_report.txt."
}

# Main function call
scan_and_count "$(pwd)"

cat final_report.txt
