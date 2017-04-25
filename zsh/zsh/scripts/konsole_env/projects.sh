qdbus_service="$1"
session="$2"

qdbus "${qdbus_service}" "/Sessions/${session}" org.kde.konsole.Session.setTabTitleFormat 0 '2:Projects' &> /dev/null
qdbus "${qdbus_service}" "/Sessions/${session}" org.kde.konsole.Session.setTabTitleFormat 1 '2:Projects' &> /dev/null

qdbus "${qdbus_service}" "/Sessions/${session}" org.kde.konsole.Session.runCommand 'start_tmux_env projects' &> /dev/null
