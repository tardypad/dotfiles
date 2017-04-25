socket="$1"

desktop_path=/home/damien/Desktop
dotfiles_path=/home/damien/Projects/tardypad/dotfiles


tmux -L "${socket}" \
  new-session -d \
  -s '1-Local' \
  -n 'root' \
  -c "${desktop_path}"


tmux -L "${socket}" \
  new-window \
  -n 'dotfiles' \
  -c "${dotfiles_path}" \
  \; \
  split-window -h -d \
  -c "${dotfiles_path}" \
  vim --servername dotfiles \
  \; \
  select-layout even-horizontal


tmux -L "${socket}" \
  new-window \
  -n 'desktop' \
  -c "${desktop_path}"


tmux -L "${socket}" \
  select-window \
  -t ':desktop'
