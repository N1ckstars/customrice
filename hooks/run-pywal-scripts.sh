#!/usr/bin/env bash

SCRIPTDIR="$HOME/.config/wal/hooks/scripts"

for script in "$SCRIPTDIR"/*.sh; do
	[ -x $script ] || continue

	"$script"
done
