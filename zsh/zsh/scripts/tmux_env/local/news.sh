socket="$1"


tmux -L "${socket}" \
  new-session -d \
  -s '04-News' \
  -n 'reader' \
  newsboat


tmux -L "${socket}" \
  select-window \
  -t ':reader'
