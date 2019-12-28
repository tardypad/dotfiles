tmux-toggle-monitor-activity(1)

# NAME

tmux-toggle-monitor-activity - Toggle activity monitoring in tmux window

# SYNOPSIS

tmux-toggle-monitor-activity _socket_path_ _session_id_ _window_id_

# DESCRIPTION

Toggle activity monitoring in current tmux window. It also marks the current
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

# DEPENDENCIES

- swaymsg
- tmux
