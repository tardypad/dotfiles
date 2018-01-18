socket="$1"


tmux -L "${socket}" \
  new-session -d \
  -s '02-Mail' \
  -n 'client' \
  neomutt


tmux -L "${socket}" \
  select-window \
  -t ':client'
