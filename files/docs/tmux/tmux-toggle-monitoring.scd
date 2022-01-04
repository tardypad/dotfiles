TMUX-TOGGLE-MONITORING(1perso)

# NAME

tmux-toggle-monitoring - Toggle monitoring in tmux window

# SYNOPSIS

tmux-toggle-monitoring _event_ _duration_ _socket_path_ _session_id_ _window_id_

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

_duration_
	Duration of the monitoring++
Valid durations are:++
- _single_++
- _continuous_

_socket_path_
	tmux socket path of window to monitor

_session_id_
	tmux session id of window to monitor

_window_id_
	tmux window id of window to monitor

# ENVIRONMENT VARIABLES

_XDG_RUNTIME_DIR_
	Path to user-specific base directory to store runtime files++
If unset, defaults to /tmp

# FILES

_$XDG_RUNTIME_DIR/tmux_alert\_{window global id}_
	File used to store the duration of the monitoring for the window

# DEPENDENCIES

- swaymsg
- tmux
