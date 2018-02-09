# add customer scripts paths
PATH="$HOME/.zsh/scripts:$PATH"
PATH="$HOME/.config/sway/scripts:$PATH"
export PATH

# add local shared libraries
export LD_LIBRARY_PATH=/usr/local/lib:${LD_LIBRARY_PATH}

# set PATH in systemd user environment
systemctl --user import-environment PATH
