#!/bin/sh

# Handle SIGTERM
terminate () {
    # Exit process if allowed
    if $can_exit; then
        exit
    # If process can't exit, allow it to
    else
        # Allow this process to exit from a TERM signal
        can_exit=true
    fi
}

# Kill previous instances of this process
kill_previous() {
    # Get the TERM signal
    trap terminate TERM

    # Ensure this process won't exit from a TERM signal
    can_exit=false

    # Send TERM signal to all instances of this process (Since, can_exit is false, this instance won't terminate)
    pkill -f $( basename $0 )
}

# Randomize the background at a given frequency
randomize_bg() {
    # Kill previous instances
    kill_previous
    # Path to parent directory + wallpaper directory
    DIR="$( dirname $0 )/wallpaper/"

    while true; do
        # Get a random image in the directory (and don't create .fehbg file)
        feh --randomize --bg-fill --no-fehbg $DIR
        # Wait for given number of seconds (while checking for SIGTERM)
        sleep $1 & wait $!
    done
}

# Randomize the bg at given frequency (in seconds)
randomize_bg $1
