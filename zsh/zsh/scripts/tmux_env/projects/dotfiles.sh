socket="$1"

dotfiles_path=/home/damien/Projects/tardypad/dotfiles


tmux -L "${socket}" \
  new-session -d \
  -s '1-Dotfiles' \
  -n 'terminal' \
  -c "${dotfiles_path}"


tmux -L "${socket}" \
  new-window \
  -n 'code' \
  -c "${dotfiles_path}" \
  vim --servername dotfiles


tmux -L "${socket}" \
  select-window \
  -t ':terminal'
