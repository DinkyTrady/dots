#!/usr/bin/env sh

dir_ss="$HOME/Pictures/Screenshots"
save_file=$(date +"%d-%m-%Y_%H:%M:%S.png")
tmp_ss="$dir_ss/tmp_$save_file"
edited_ss="satty-screenshot_$save_file"

case $1 in
p)
  grimblast save screen "$tmp_ss" && satty -f "$tmp_ss" --output-filename "$dir_ss/$edited_ss"
  ;;
a)
  grimblast save area "$tmp_ss" && satty -f "$tmp_ss" --output-filename "$dir_ss/$edited_ss"
  ;;
*)
  "No Valid options"
  ;;
esac

if [ ! -f "$dir_ss/$edited_ss" ]; then
  rm "$tmp_ss"
  notify-send "No Screenshots Saved" "Please copy or save using satty"
else
  rm "$tmp_ss"
  notify-send "Screenshots Saved and Copied" "$dir_ss/$edited_ss" -i "$dir_ss/$edited_ss"
fi
