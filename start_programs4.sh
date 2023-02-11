#!/bin/bash

# Check if VSCode is running
vscode_pid=$(ps -eo pid,comm | grep -E "code" | awk '{print $1}')
if [ -n "$vscode_pid" ]; then
    echo "VSCode is running with PID: $vscode_pid"
    # Start Notepad
    gedit &

    # Start the default browser
    xdg-open "http://www.google.com" &

    # Start the terminal
    gnome-terminal &
else
    echo "VSCode is not running"
fi
