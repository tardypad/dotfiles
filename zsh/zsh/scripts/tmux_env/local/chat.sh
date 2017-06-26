socket="$1"


tmux -L "${socket}" \
  new-session -d \
  -s '2-Chat' \
  -n 'client' \
  weechat


tmux -L "${socket}" \
  select-window \
  -t ':client'
