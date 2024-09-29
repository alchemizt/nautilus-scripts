#!/bin/bash

# Check if a file was passed as an argument
if [ $# -eq 0 ]; then
    echo "No file selected. Exiting."
    exit 1
fi

# Get the filename and path from the argument
SELECTED_FILE="$1"

# Make the file executable
cat "$SELECTED_FILE" | xclip

