tmux-toggle-monitoring(1perso)

# NAME

tmux-toggle-monitoring - Toggle monitoring in tmux window

# SYNOPSIS

tmux-toggle-monitoring _event_ _socket_path_ _session_id_ _window_id_

# DESCRIPTION

Toggle monitoring in tmux window. It also marks the window within sway for
further use on trigger.

# OPTIONS

None

# OPERANDS

_event_
	Event to monitor++
Valid events are:++
- _activity_++
- _bell_++
- _silence_

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
