all: tmux-configs

tmux-configs:
	setup/setup-config tmux/tmux.conf              $(CONFIG_DIR)/tmux/tmux.conf
	setup/setup-config tmux/config.d/bindings.tmux $(CONFIG_DIR)/tmux/config.d/bindings.tmux
	setup/setup-config tmux/config.d/general.tmux  $(CONFIG_DIR)/tmux/config.d/general.tmux
	setup/setup-config tmux/config.d/style.tmux    $(CONFIG_DIR)/tmux/config.d/style.tmux
