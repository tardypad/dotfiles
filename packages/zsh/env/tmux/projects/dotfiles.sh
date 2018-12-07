socket="$1"
session_name="$2"

dotfiles_path=$( get-project-repo-path dotfiles )


tmux -L "${socket}" \
  new-session -d \
  -s "${session_name}" \
  -n 'terminal' \
  -c "${dotfiles_path}"


tmux -L "${socket}" \
  new-window \
  -n 'code' \
  -c "${dotfiles_path}" \
  "vim \
    -c 'TabooRename TODO' \
    -c 'tabnew' \
    -- TODO.md"


tmux -L "${socket}" \
  select-window \
  -t ':terminal'
