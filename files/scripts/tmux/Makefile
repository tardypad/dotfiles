all: tmux-scripts

tmux-scripts:
	mkdir -p $(DESTDIR)$(BIN_DIR)

	$(setup_file)/scripts/tmux/tmux-extract-tokens          > $(DESTDIR)$(BIN_DIR)/tmux-extract-tokens
	$(setup_file)/scripts/tmux/tmux-move-pane-window-index  > $(DESTDIR)$(BIN_DIR)/tmux-move-pane-window-index
	$(setup_file)/scripts/tmux/tmux-move-window-index       > $(DESTDIR)$(BIN_DIR)/tmux-move-window-index
	$(setup_file)/scripts/tmux/tmux-notify-alert            > $(DESTDIR)$(BIN_DIR)/tmux-notify-alert
	$(setup_file)/scripts/tmux/tmux-select-pane-vim         > $(DESTDIR)$(BIN_DIR)/tmux-select-pane-vim
	$(setup_file)/scripts/tmux/tmux-toggle-monitor-activity > $(DESTDIR)$(BIN_DIR)/tmux-toggle-monitor-activity
	$(setup_file)/scripts/tmux/tmux-toggle-monitor-bell     > $(DESTDIR)$(BIN_DIR)/tmux-toggle-monitor-bell
	$(setup_file)/scripts/tmux/tmux-toggle-monitor-silence  > $(DESTDIR)$(BIN_DIR)/tmux-toggle-monitor-silence
	$(setup_file)/scripts/tmux/tmux-toggle-no-distraction   > $(DESTDIR)$(BIN_DIR)/tmux-toggle-no-distraction

	chmod +x $(DESTDIR)$(BIN_DIR)/tmux-extract-tokens
	chmod +x $(DESTDIR)$(BIN_DIR)/tmux-move-pane-window-index
	chmod +x $(DESTDIR)$(BIN_DIR)/tmux-move-window-index
	chmod +x $(DESTDIR)$(BIN_DIR)/tmux-notify-alert
	chmod +x $(DESTDIR)$(BIN_DIR)/tmux-select-pane-vim
	chmod +x $(DESTDIR)$(BIN_DIR)/tmux-toggle-monitor-activity
	chmod +x $(DESTDIR)$(BIN_DIR)/tmux-toggle-monitor-bell
	chmod +x $(DESTDIR)$(BIN_DIR)/tmux-toggle-monitor-silence
	chmod +x $(DESTDIR)$(BIN_DIR)/tmux-toggle-no-distraction
