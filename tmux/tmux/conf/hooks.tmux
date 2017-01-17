set-hook -g after-new-session 'run "~/.tmux/scripts/cache_sessions_name.sh"'
set-hook -g before-attach-session 'run "~/.tmux/scripts/cache_sessions_name.sh"'
