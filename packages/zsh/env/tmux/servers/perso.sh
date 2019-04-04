socket="$1"
session_name="$2"

tmux -L "${socket}" \
  new-session -d \
  -s "${session_name}" \
  -n 'tardypad' \
  'TERM=xterm-256color ssh tardypad'
