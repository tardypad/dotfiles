socket="$1"


tmux -L "${socket}" \
  new-session -d \
  -s '05-News' \
  -n 'reader' \
  newsbeuter


tmux -L "${socket}" \
  select-window \
  -t ':reader'
