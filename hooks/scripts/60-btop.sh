#!/usr/bin/env bash

set -euo pipefail

. "$HOME/.cache/wal/colors.sh"

cat > "$HOME/.config/btop/themes/wal.theme" <<EOF
# Theme: Pywal
# By: Nicky

# Main bg
theme[main_bg]="$color1"

# Main text color
theme[main_fg]="$color7"

# Title color for boxes
theme[title]="$color1"

# Highlight color for keyboard shortcuts
theme[hi_fg]="$color6"

# Background color of selected item in processes box
theme[selected_bg]="$color5"

# Foreground color of selected item in processes box
theme[selected_fg]="$color1"

# Color of inactive/disabled text
theme[inactive_fg]="$color4"

# Misc colors for processes box including mini cpu graphs, details memory graph and details status text
theme[proc_misc]="$color6"

# Cpu box outline color
theme[cpu_box]="$color4"

# Memory/disks box outline color
theme[mem_box]="$color4"

# Net up/down box outline color
theme[net_box]="$color4"

# Processes box outline color
theme[proc_box]="$color4"

# Box divider line and small boxes line color
theme[div_line]="$color4"

# Temperature graph colors
theme[temp_start]="$color2"
theme[temp_mid]="$color3"
theme[temp_end]="$color1"

# CPU graph colors
theme[cpu_start]="$color2"
theme[cpu_mid]="$color3"
theme[cpu_end]="$color1"

# Mem/Disk free meter
theme[free_start]="$color2"
theme[free_mid]="$color3"
theme[free_end]="$color1"

# Mem/Disk cached meter
theme[cached_start]="$color2"
theme[cached_mid]="$color3"
theme[cached_end]="$color1"

# Mem/Disk available meter
theme[available_start]="$color2"
theme[available_mid]="$color3"
theme[available_end]="$color1"

# Mem/Disk used meter
theme[used_start]="$color2"
theme[used_mid]="$color3"
theme[used_end]="$color1"

# Download graph colors
theme[download_start]="$color2"
theme[download_mid]="$color3"
theme[download_end]="$color1"

# Upload graph colors
theme[upload_start]="$color2"
theme[upload_mid]="$color3"
theme[upload_end]="$color1"
EOF

echo "did a thing"
