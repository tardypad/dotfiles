all: tmux-configs

tmux-configs:
	$(start_setup)

	mkdir -p $(DESTDIR)$(HOME)/.tmux/config.d

	$(setup_configs_file)/tmux/tmux.conf              > $(DESTDIR)$(HOME)/.tmux.conf
	$(setup_configs_file)/tmux/config.d/bindings.tmux > $(DESTDIR)$(HOME)/.tmux/config.d/bindings.tmux
	$(setup_configs_file)/tmux/config.d/general.tmux  > $(DESTDIR)$(HOME)/.tmux/config.d/general.tmux
	$(setup_configs_file)/tmux/config.d/style.tmux    > $(DESTDIR)$(HOME)/.tmux/config.d/style.tmux
