all: tmux-docs

tmux-docs:
	mkdir -p $(DESTDIR)$(DATA_DIR)/man/man1

	$(setup_file)/docs/tmux/tmux-extract-tokens.scd          | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/tmux-extract-tokens.1perso
	$(setup_file)/docs/tmux/tmux-move-pane-window-index.scd  | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/tmux-move-pane-window-index.1perso
	$(setup_file)/docs/tmux/tmux-move-window-index.scd       | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/tmux-move-window-index.1perso
	$(setup_file)/docs/tmux/tmux-notify-alert.scd            | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/tmux-notify-alert.1perso
	$(setup_file)/docs/tmux/tmux-select-pane-vim.scd         | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/tmux-select-pane-vim.1perso
	$(setup_file)/docs/tmux/tmux-toggle-monitor-activity.scd | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/tmux-toggle-monitor-activity.1perso
	$(setup_file)/docs/tmux/tmux-toggle-monitor-bell.scd     | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/tmux-toggle-monitor-bell.1perso
	$(setup_file)/docs/tmux/tmux-toggle-monitor-silence.scd  | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/tmux-toggle-monitor-silence.1perso
	$(setup_file)/docs/tmux/tmux-toggle-no-distraction.scd   | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/tmux-toggle-no-distraction.1perso
