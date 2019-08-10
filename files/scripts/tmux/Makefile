all: tmux-scripts

tmux-scripts:
	$(start_setup)

	mkdir -p $(DESTDIR)$(BIN_DIR)

	$(setup_scripts_file)/tmux/tmux-extract-tokens          > $(DESTDIR)$(BIN_DIR)/tmux-extract-tokens
	$(setup_scripts_file)/tmux/tmux-move-pane-window-index  > $(DESTDIR)$(BIN_DIR)/tmux-move-pane-window-index
	$(setup_scripts_file)/tmux/tmux-move-window-index       > $(DESTDIR)$(BIN_DIR)/tmux-move-window-index
	$(setup_scripts_file)/tmux/tmux-notify-alert            > $(DESTDIR)$(BIN_DIR)/tmux-notify-alert
	$(setup_scripts_file)/tmux/tmux-select-pane-vim         > $(DESTDIR)$(BIN_DIR)/tmux-select-pane-vim
	$(setup_scripts_file)/tmux/tmux-toggle-monitor-activity > $(DESTDIR)$(BIN_DIR)/tmux-toggle-monitor-activity
	$(setup_scripts_file)/tmux/tmux-toggle-monitor-silence  > $(DESTDIR)$(BIN_DIR)/tmux-toggle-monitor-silence
	$(setup_scripts_file)/tmux/tmux-toggle-no-distraction   > $(DESTDIR)$(BIN_DIR)/tmux-toggle-no-distraction

	chmod +x $(DESTDIR)$(BIN_DIR)/tmux-extract-tokens
	chmod +x $(DESTDIR)$(BIN_DIR)/tmux-move-pane-window-index
	chmod +x $(DESTDIR)$(BIN_DIR)/tmux-move-window-index
	chmod +x $(DESTDIR)$(BIN_DIR)/tmux-notify-alert
	chmod +x $(DESTDIR)$(BIN_DIR)/tmux-select-pane-vim
	chmod +x $(DESTDIR)$(BIN_DIR)/tmux-toggle-monitor-activity
	chmod +x $(DESTDIR)$(BIN_DIR)/tmux-toggle-monitor-silence
	chmod +x $(DESTDIR)$(BIN_DIR)/tmux-toggle-no-distraction
