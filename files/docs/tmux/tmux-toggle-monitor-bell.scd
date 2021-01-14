tmux-toggle-monitor-bell(1perso)

# NAME

tmux-toggle-monitor-bell - Toggle bell monitoring in tmux window

# SYNOPSIS

tmux-toggle-monitor-bell _socket_path_ _session_id_ _window_id_

# DESCRIPTION

Toggle bell monitoring in current tmux window. It also marks the current
window within sway for further use on trigger.

# OPTIONS

None

# OPERANDS

_socket_path_
	tmux socket path of window to monitor

_session_id_
	tmux session id of window to monitor

_window_id_
	tmux window id of window to monitor

# ENVIRONMENT VARIABLES

None

# FILES

None

# DEPENDENCIES

- swaymsg
- tmux
