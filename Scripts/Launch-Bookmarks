#!/bin/bash
#  ____              _                         _
# | __ )  ___   ___ | | ___ __ ___   __ _ _ __| | _____
# |  _ \ / _ \ / _ \| |/ / '_ ` _ \ / _` | '__| |/ / __|
# | |_) | (_) | (_) |   <| | | | | | (_| | |  |   <\__ \
# |____/ \___/ \___/|_|\_\_| |_| |_|\__,_|_|  |_|\_\___/
#
# -----------------------------------------------------

# Define the path to the bookmarks file
BOOKMARKS_PATH="$HOME/.config/BraveSoftware/Brave-Browser/Default/Bookmarks"

if [[ $BROWSER == "vivaldi" || $BROWSER == "chromium" ]]; then
	BOOKMARKS_PATH="$HOME/.config/$BROWSER/Default/Bookmarks"
fi

if [[ $BROWSER == "google-chrome-stable" ]]; then
	BOOKMARKS_PATH="$HOME/.config/google/Default/Bookmarks"
fi

selected=$(grep '"url":' "$BOOKMARKS_PATH" | awk '{print $2}' | sed 's/"//g' | rofi -dmenu -p "Select a Browser Bookmark")

if [ "$selected" ]; then
	$BROWSER "$selected"
fi
