qdbus_service="$1"
session="$2"

qdbus "${qdbus_service}" "/Sessions/${session}" org.kde.konsole.Session.setTabTitleFormat 0 '1:Local' &> /dev/null
qdbus "${qdbus_service}" "/Sessions/${session}" org.kde.konsole.Session.setTabTitleFormat 1 '1:Local' &> /dev/null

qdbus "${qdbus_service}" "/Sessions/${session}" org.kde.konsole.Session.runCommand 'start_tmux_env local' &> /dev/null
