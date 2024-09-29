!/bin/bash

# Function to check if the filename is valid
is_valid_filename() {
    [[ "$1" =~ ^[a-zA-Z0-9._-]+$ ]] && [[ "$1" != "." ]] && [[ "$1" != ".." ]]
}

OUTPUT=$(zenity --forms --title="File to paste to" --add-entry="Filename")
accepted=$?
if ((accepted != 0)); then
    echo "something went wrong"
    exit 1
fi

filename=$OUTPUT

# Check if the filename is valid
if ! is_valid_filename "$filename"; then
    zenity --error --text="Invalid filename. Only alphanumeric characters, dots, underscores, and hyphens are allowed."
    exit 1
fi

# Use xclip to paste the clipboard content into the specified file
xclip -o > "$filename"