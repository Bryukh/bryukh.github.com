#!/bin/bash

# Create a new file to store the merged content
output_file="merged_markdown.mad"
touch $output_file

# Loop through each markdown (.md) file in the current directory
for file in *.markdown; do
    # Extract the filename without extension for the title
    title="${file%.*}"

    # Append the title and file content to the output file
    echo -e "# $title\n" >> $output_file
    cat "$file" >> $output_file
    echo -e "\n\n" >> $output_file
done

echo "Merging complete. Output file: $output_file"