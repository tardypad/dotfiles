socket="$1"


tmux -L "${socket}" \
  new-session -d \
  -s '03-Mail' \
  -n 'client' \
  mutt


tmux -L "${socket}" \
  select-window \
  -t ':client'
