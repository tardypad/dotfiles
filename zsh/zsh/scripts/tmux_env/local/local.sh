session_name='1-Local'

desktop_path=/home/damien/Desktop
dotfiles_path=/home/damien/Projects/tardypad/dotfiles


window_name='root'
tmux new-session -d \
  -s "${session_name}" \
  -n "${window_name}" \
  -c "${desktop_path}"


window_name='dotfiles'
tmux new-window -d \
  -t "${session_name}" \
  -n "${window_name}" \
  -c "${dotfiles_path}"
tmux split-window -h \
  -t "${session_name}:${window_name}" \
  -c "${dotfiles_path}" \
  vim
tmux select-layout \
  -t "${session_name}:${window_name}" \
  even-horizontal


window_name='desktop'
tmux new-window -d \
  -t "${session_name}" \
  -n "${window_name}" \
  -c "${desktop_path}"
