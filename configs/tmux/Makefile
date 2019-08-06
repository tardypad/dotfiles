all: tmux

tmux:
	$(start_setup)

	mkdir -p $(DESTDIR)$(HOME)/.tmux/config.d

	$(setup_configs_file)/tmux.conf              > $(DESTDIR)$(HOME)/.tmux.conf
	$(setup_configs_file)/config.d/bindings.tmux > $(DESTDIR)$(HOME)/.tmux/config.d/bindings.tmux
	$(setup_configs_file)/config.d/general.tmux  > $(DESTDIR)$(HOME)/.tmux/config.d/general.tmux
	$(setup_configs_file)/config.d/style.tmux    > $(DESTDIR)$(HOME)/.tmux/config.d/style.tmux
