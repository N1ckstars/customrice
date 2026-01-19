#!/usr/bin/env bash

# Update spicetify config

if pgrep -x spotify >/dev/null; then
	echo "Updating spicetify theme..."

	pkill -x spotify
	wait 1
	spicetify apply
	flatpak run com.spotify.Client &
else
	echo "Applying theme to Spotify for next use..."
	spicetify apply
fi
