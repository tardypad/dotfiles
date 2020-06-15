tmux-toggle-monitor-silence(1perso)

# NAME

tmux-toggle-monitor-silence - Toggle silence monitoring in tmux window

# SYNOPSIS

tmux-toggle-monitor-silence _socket_path_ _session_id_ _window_id_

# DESCRIPTION

Toggle silence monitoring in current tmux window. It also marks the current
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
