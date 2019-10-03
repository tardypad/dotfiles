all: tmux-configs

tmux-configs:
	mkdir -p $(DESTDIR)$(HOME)/.tmux/config.d

	$(setup_file)/configs/tmux/tmux.conf              > $(DESTDIR)$(HOME)/.tmux.conf
	$(setup_file)/configs/tmux/config.d/bindings.tmux > $(DESTDIR)$(HOME)/.tmux/config.d/bindings.tmux
	$(setup_file)/configs/tmux/config.d/general.tmux  > $(DESTDIR)$(HOME)/.tmux/config.d/general.tmux
	$(setup_file)/configs/tmux/config.d/style.tmux    > $(DESTDIR)$(HOME)/.tmux/config.d/style.tmux
