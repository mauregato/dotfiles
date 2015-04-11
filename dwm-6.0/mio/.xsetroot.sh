DATETIME=`date +%d-%m-%Y-[%T]`
UPTIME=`uptime | sed 's/.*up\s*//' | sed 's/,\s*[0-9]* user.*//' | sed 's/  / /g'`
VOLUME=$( amixer sget Master | grep -e 'Front Left:' | \
    sed 's/[^\[]*\[\([0-9]\{1,3\}%\).*\(on\|off\).*/\2 \1/' | sed 's/off/M/' | sed 's/on //' )



xsetroot -name "${VOLUME} | ${DATETIME} | Up ${UPTIME}"  

