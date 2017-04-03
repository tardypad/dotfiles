qdbus_service="$1"

session=$(
  qdbus "${qdbus_service}" /Windows/1 org.kde.konsole.Window.newSession
)

qdbus "${qdbus_service}" "/Sessions/${session}" org.kde.konsole.Session.setTabTitleFormat 0 '1:Local'
qdbus "${qdbus_service}" "/Sessions/${session}" org.kde.konsole.Session.setTabTitleFormat 1 '1:Local'

qdbus "${qdbus_service}" "/Sessions/${session}" org.kde.konsole.Session.runCommand 'start_tmux_env local'
