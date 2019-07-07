all: tmux
.SILENT: tmux

tmux:
	$(start_setup)

	mkdir -p $(DESTDIR)$(HOME)/.tmux/config.d
	mkdir -p $(DESTDIR)$(HOME)/.tmux/scripts

	$(setup_packages_file)/tmux.conf                          > $(DESTDIR)$(HOME)/.tmux.conf
	$(setup_packages_file)/config.d/bindings.tmux             > $(DESTDIR)$(HOME)/.tmux/config.d/bindings.tmux
	$(setup_packages_file)/config.d/general.tmux              > $(DESTDIR)$(HOME)/.tmux/config.d/general.tmux
	$(setup_packages_file)/config.d/style.tmux                > $(DESTDIR)$(HOME)/.tmux/config.d/style.tmux
	$(setup_packages_file)/scripts/extract_tokens.sh          > $(DESTDIR)$(HOME)/.tmux/scripts/extract_tokens.sh
	$(setup_packages_file)/scripts/move_pane_window_index.sh  > $(DESTDIR)$(HOME)/.tmux/scripts/move_pane_window_index.sh
	$(setup_packages_file)/scripts/move_window_index.sh       > $(DESTDIR)$(HOME)/.tmux/scripts/move_window_index.sh
	$(setup_packages_file)/scripts/notify_alert.sh            > $(DESTDIR)$(HOME)/.tmux/scripts/notify_alert.sh
	$(setup_packages_file)/scripts/select_pane_vim.sh         > $(DESTDIR)$(HOME)/.tmux/scripts/select_pane_vim.sh
	$(setup_packages_file)/scripts/toggle_monitor_activity.sh > $(DESTDIR)$(HOME)/.tmux/scripts/toggle_monitor_activity.sh
	$(setup_packages_file)/scripts/toggle_monitor_silence.sh  > $(DESTDIR)$(HOME)/.tmux/scripts/toggle_monitor_silence.sh
	$(setup_packages_file)/scripts/toggle_no_distraction.sh   > $(DESTDIR)$(HOME)/.tmux/scripts/toggle_no_distraction.sh

	chmod +x $(DESTDIR)$(HOME)/.tmux/scripts/*

	$(end_setup)
