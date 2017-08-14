socket="$1"

desktop_path=/home/damien/Desktop


tmux -L "${socket}" \
  new-session -d \
  -s '01-Terminal' \
  -n 'root' \
  -c "${desktop_path}"


tmux -L "${socket}" \
  new-window \
  -n 'shell' \
  -c "${desktop_path}"


tmux -L "${socket}" \
  select-window \
  -t ':shell'
