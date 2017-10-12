socket="$1"

source ~/.zsh/conf/function.zsh

dotfiles_path=$( get_project_repo_path dotfiles )


tmux -L "${socket}" \
  new-session -d \
  -s '01-Dotfiles' \
  -n 'terminal' \
  -c "${dotfiles_path}"


tmux -L "${socket}" \
  new-window \
  -n 'code' \
  -c "${dotfiles_path}" \
  vim --servername dotfiles -c NERDTree


tmux -L "${socket}" \
  new-window \
  -n 'tests' \
  -c "${dotfiles_path}"


tmux -L "${socket}" \
  select-window \
  -t ':terminal'
