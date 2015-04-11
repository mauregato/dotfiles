#xsetroot -name "$(date +a %d-%m-%Y-%T)"
setxkbmap es
#startfluxbox

# Loop
while true
do
    # Set root title
   sh .xsetroot.sh
    # Update every 10s
  sleep 10s
done &


xscreensaver &
#conky -c .conkyrc-dwm| while read -r; do xsetroot -name "$REPLY"; done &
exec dwm
