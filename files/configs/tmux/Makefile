all: tmux-configs

tmux-configs:
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/tmux/config.d

	THEME=$(THEME) setup/setup-file configs/tmux/tmux.conf              > $(DESTDIR)$(CONFIG_DIR)/tmux/tmux.conf
	THEME=$(THEME) setup/setup-file configs/tmux/config.d/bindings.tmux > $(DESTDIR)$(CONFIG_DIR)/tmux/config.d/bindings.tmux
	THEME=$(THEME) setup/setup-file configs/tmux/config.d/general.tmux  > $(DESTDIR)$(CONFIG_DIR)/tmux/config.d/general.tmux
	THEME=$(THEME) setup/setup-file configs/tmux/config.d/style.tmux    > $(DESTDIR)$(CONFIG_DIR)/tmux/config.d/style.tmux
