if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload top &
    MONITOR=$m polybar --reload toph &
  done
else
  polybar --reload top &
  polybar --reload toph &
fi
