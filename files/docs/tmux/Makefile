all: tmux-docs

tmux-docs:
	mkdir -p $(DESTDIR)$(DATA_DIR)/man/man1

	THEME=$(THEME) setup/setup-file docs/tmux/tmux-extract-tokens.scd          | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/tmux-extract-tokens.1perso
	THEME=$(THEME) setup/setup-file docs/tmux/tmux-move-pane-window-index.scd  | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/tmux-move-pane-window-index.1perso
	THEME=$(THEME) setup/setup-file docs/tmux/tmux-move-window-index.scd       | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/tmux-move-window-index.1perso
	THEME=$(THEME) setup/setup-file docs/tmux/tmux-notify-alert.scd            | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/tmux-notify-alert.1perso
	THEME=$(THEME) setup/setup-file docs/tmux/tmux-select-pane-vim.scd         | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/tmux-select-pane-vim.1perso
	THEME=$(THEME) setup/setup-file docs/tmux/tmux-send-vim.scd                | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/tmux-send-vim.1perso
	THEME=$(THEME) setup/setup-file docs/tmux/tmux-switch-session.scd          | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/tmux-switch-session.1perso
	THEME=$(THEME) setup/setup-file docs/tmux/tmux-toggle-monitoring.scd       | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/tmux-toggle-monitoring.1perso
	THEME=$(THEME) setup/setup-file docs/tmux/tmux-toggle-no-distraction.scd   | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/tmux-toggle-no-distraction.1perso
