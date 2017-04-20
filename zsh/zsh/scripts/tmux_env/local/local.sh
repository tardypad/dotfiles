session_name='1-Local'

desktop_path=/home/damien/Desktop
dotfiles_path=/home/damien/Projects/tardypad/dotfiles


window_name='root'
tmux new-session -d \
  -s "${session_name}" \
  -n "${window_name}" \
  -c "${desktop_path}"


window_name='dotfiles'
tmux new-window \
  -n "${window_name}" \
  -c "${dotfiles_path}"
tmux split-window -h \
  -c "${dotfiles_path}" \
  vim
tmux select-layout \
  even-horizontal


window_name='desktop'
tmux new-window \
  -n "${window_name}" \
  -c "${desktop_path}"
