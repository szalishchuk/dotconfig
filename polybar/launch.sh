#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

# Launch bars for all available monitors
for i in $(polybar -m | awk -F: '{print $1}');
  do MONITOR=$i polybar --reload -c $HOME/.config/polybar/config main & done

# Set the wallpaper
feh --bg-scale --no-xinerama ~/ownCloud/Wallpapers/agriculture-beautiful-view-city-park-1080722.jpg

echo "Polybars have been launched"
