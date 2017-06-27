socket="$1"


tmux -L "${socket}" \
  new-session -d \
  -s '4-Music' \
  -n 'client' \
  ncmpcpp


tmux -L "${socket}" \
  new-window \
  -n 'server' \
  mopidy


tmux -L "${socket}" \
  select-window \
  -t ':client'
