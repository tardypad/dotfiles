desktop_path=/home/damien/Desktop
dotfiles_path=/home/damien/Projects/tardypad/dotfiles


tmux new-session -d \
  -s '1-Local' \
  -n 'root' \
  -c "${desktop_path}"


tmux new-window \
  -n 'dotfiles' \
  -c "${dotfiles_path}" \
  \; \
  split-window -h -d \
  -c "${dotfiles_path}" \
  vim \
  \; \
  select-layout even-horizontal


tmux new-window \
  -n 'desktop' \
  -c "${desktop_path}"


tmux select-window \
  -t ':desktop'
