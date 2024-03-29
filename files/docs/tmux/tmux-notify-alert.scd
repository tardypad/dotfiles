TMUX-NOTIFY-ALERT(1perso)

# NAME

tmux-notify-alert - Handle a tmux alert for notification

# SYNOPSIS

tmux-notify-alert _type_ _socket_path_ _session_id_ _window_id_

# DESCRIPTION

Handle a tmux alert by displaying a message in tmux about the type and source
of the alert. It also trigger a system notification with the same info and
mark the window containing the alert as "urgent".

# OPTIONS

None

# OPERANDS

_type_
	Type of alert (activity, bell, silence)

_socket_path_
	tmux socket path where the alert is coming from

_session_id_
	tmux session id where the alert is coming from

_window_id_
	tmux window id where the alert is coming from

# ENVIRONMENT VARIABLES

_XDG_RUNTIME_DIR_
	Path to user-specific base directory to store runtime files++
If unset, defaults to /tmp

# FILES

_$XDG_RUNTIME_DIR/tmux_alert\_{window global id}_
	File used to store the duration of the monitoring for the window

# DEPENDENCIES

- notify
- swaymsg
- tmux
