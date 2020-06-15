notify-tmux-alert(1perso)

# NAME

notify-tmux-alert - Notify an tmux alert

# SYNOPSIS

notify-tmux-alert _type_ _socket_name_ _session_id_ _session_name_ _window_id_ _window_name_

# DESCRIPTION

Send a system notification about a tmux alert. It also mark the window
containing the alert as "urgent".

# OPTIONS

None

# OPERANDS

_type_
	Type of alert (activity, bell, silence)

_socket_name_
	tmux socket name where the alert is coming from

_session_id_
	tmux session id where the alert is coming from

_session_name_
	tmux session name where the alert is coming from

_window_id_
	tmux window id where the alert is coming from

_window_name_
	tmux window name where the alert is coming from

# ENVIRONMENT VARIABLES

None

# FILES

None

# DEPENDENCIES

- notify
- swaymsg
