#!/bin/bash

# Check if a file was passed as an argument
if [ $# -eq 0 ]; then
    echo "No file selected. Exiting."
    exit 1
fi

# Get the filename and path from the argument
SELECTED_FILE="$1"

# Make the file executable
chmod +x "$SELECTED_FILE"

# Check if the command was successful
if [ $? -eq 0 ]; then
    echo "Made '$SELECTED_FILE' executable."
else
    echo "Failed to make '$SELECTED_FILE' executable."
fi
