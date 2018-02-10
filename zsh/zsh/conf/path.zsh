# add customer scripts paths
PATH="$HOME/.zsh/scripts:$PATH"
PATH="$HOME/.config/sway/scripts:$PATH"
export PATH

# set PATH in systemd user environment
systemctl --user import-environment PATH
