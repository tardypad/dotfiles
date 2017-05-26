socket="$1"


tmux -L "${socket}" \
  new-session -d \
  -s '3-Mail' \
  -n 'neomutt' \
  mutt


tmux -L "${socket}" \
  select-window \
  -t ':neomutt'
