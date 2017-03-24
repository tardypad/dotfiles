if tmux has-session &> /dev/null; then
  exit
fi

tmux new-session -d -s '1-Local' -n 'root'
tmux new-window -d -n 'dotfiles'
tmux new-window -d -n 'desktop'
