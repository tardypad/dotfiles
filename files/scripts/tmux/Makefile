all: tmux-scripts

tmux-scripts:
	mkdir -p $(DESTDIR)$(BIN_DIR)

	THEME=$(THEME) setup/setup-file scripts/tmux/tmux-extract-tokens          > $(DESTDIR)$(BIN_DIR)/tmux-extract-tokens
	THEME=$(THEME) setup/setup-file scripts/tmux/tmux-move-pane-window-index  > $(DESTDIR)$(BIN_DIR)/tmux-move-pane-window-index
	THEME=$(THEME) setup/setup-file scripts/tmux/tmux-move-window-index       > $(DESTDIR)$(BIN_DIR)/tmux-move-window-index
	THEME=$(THEME) setup/setup-file scripts/tmux/tmux-notify-alert            > $(DESTDIR)$(BIN_DIR)/tmux-notify-alert
	THEME=$(THEME) setup/setup-file scripts/tmux/tmux-select-pane-vim         > $(DESTDIR)$(BIN_DIR)/tmux-select-pane-vim
	THEME=$(THEME) setup/setup-file scripts/tmux/tmux-send-vim                > $(DESTDIR)$(BIN_DIR)/tmux-send-vim
	THEME=$(THEME) setup/setup-file scripts/tmux/tmux-switch-session          > $(DESTDIR)$(BIN_DIR)/tmux-switch-session
	THEME=$(THEME) setup/setup-file scripts/tmux/tmux-toggle-monitoring       > $(DESTDIR)$(BIN_DIR)/tmux-toggle-monitoring
	THEME=$(THEME) setup/setup-file scripts/tmux/tmux-toggle-no-distraction   > $(DESTDIR)$(BIN_DIR)/tmux-toggle-no-distraction

	chmod +x $(DESTDIR)$(BIN_DIR)/tmux-extract-tokens
	chmod +x $(DESTDIR)$(BIN_DIR)/tmux-move-pane-window-index
	chmod +x $(DESTDIR)$(BIN_DIR)/tmux-move-window-index
	chmod +x $(DESTDIR)$(BIN_DIR)/tmux-notify-alert
	chmod +x $(DESTDIR)$(BIN_DIR)/tmux-select-pane-vim
	chmod +x $(DESTDIR)$(BIN_DIR)/tmux-send-vim
	chmod +x $(DESTDIR)$(BIN_DIR)/tmux-switch-session
	chmod +x $(DESTDIR)$(BIN_DIR)/tmux-toggle-monitoring
	chmod +x $(DESTDIR)$(BIN_DIR)/tmux-toggle-no-distraction
