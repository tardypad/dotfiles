socket="$1"


tmux -L "${socket}" \
  new-session -d \
  -s '4-Music' \
  -n 'ncmpcpp' \
  ncmpcpp --screen playlist --slave-screen media_library


tmux -L "${socket}" \
  new-window \
  -n 'mopidy' \
  mopidy


tmux -L "${socket}" \
  select-window \
  -t ':ncmpcpp'
