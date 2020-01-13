all: tmux-docs

tmux-docs:
	mkdir -p $(DESTDIR)$(DATA_DIR)/man/man1

	scdoc < files/docs/tmux/tmux-extract-tokens.scd          > $(DESTDIR)$(DATA_DIR)/man/man1/tmux-extract-tokens.1$(MAN_SUFFIX)
	scdoc < files/docs/tmux/tmux-move-pane-window-index.scd  > $(DESTDIR)$(DATA_DIR)/man/man1/tmux-move-pane-window-index.1$(MAN_SUFFIX)
	scdoc < files/docs/tmux/tmux-move-window-index.scd       > $(DESTDIR)$(DATA_DIR)/man/man1/tmux-move-window-index.1$(MAN_SUFFIX)
	scdoc < files/docs/tmux/tmux-notify-alert.scd            > $(DESTDIR)$(DATA_DIR)/man/man1/tmux-notify-alert.1$(MAN_SUFFIX)
	scdoc < files/docs/tmux/tmux-select-pane-vim.scd         > $(DESTDIR)$(DATA_DIR)/man/man1/tmux-select-pane-vim.1$(MAN_SUFFIX)
	scdoc < files/docs/tmux/tmux-toggle-monitor-activity.scd > $(DESTDIR)$(DATA_DIR)/man/man1/tmux-toggle-monitor-activity.1$(MAN_SUFFIX)
	scdoc < files/docs/tmux/tmux-toggle-monitor-silence.scd  > $(DESTDIR)$(DATA_DIR)/man/man1/tmux-toggle-monitor-silence.1$(MAN_SUFFIX)
	scdoc < files/docs/tmux/tmux-toggle-no-distraction.scd   > $(DESTDIR)$(DATA_DIR)/man/man1/tmux-toggle-no-distraction.1$(MAN_SUFFIX)
