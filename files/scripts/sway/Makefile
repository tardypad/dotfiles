all: sway-scripts

sway-scripts:
	mkdir -p $(DESTDIR)$(BIN_DIR)

	$(setup_file)/scripts/sway/sway-app-tmux-env              > $(DESTDIR)$(BIN_DIR)/sway-app-tmux-env
	$(setup_file)/scripts/sway/sway-command-input             > $(DESTDIR)$(BIN_DIR)/sway-command-input
	$(setup_file)/scripts/sway/sway-create-workspace          > $(DESTDIR)$(BIN_DIR)/sway-create-workspace
	$(setup_file)/scripts/sway/sway-focus-window-title        > $(DESTDIR)$(BIN_DIR)/sway-focus-window-title
	$(setup_file)/scripts/sway/sway-launch-command            > $(DESTDIR)$(BIN_DIR)/sway-launch-command
	$(setup_file)/scripts/sway/sway-launch-system             > $(DESTDIR)$(BIN_DIR)/sway-launch-system
	$(setup_file)/scripts/sway/sway-launch-tmux-env           > $(DESTDIR)$(BIN_DIR)/sway-launch-tmux-env
	$(setup_file)/scripts/sway/sway-launcher                  > $(DESTDIR)$(BIN_DIR)/sway-launcher
	$(setup_file)/scripts/sway/sway-move-window-new-workspace > $(DESTDIR)$(BIN_DIR)/sway-move-window-new-workspace
	$(setup_file)/scripts/sway/sway-move-workspace-direction  > $(DESTDIR)$(BIN_DIR)/sway-move-workspace-direction
	$(setup_file)/scripts/sway/sway-move-workspace-index      > $(DESTDIR)$(BIN_DIR)/sway-move-workspace-index
	$(setup_file)/scripts/sway/sway-quick-command             > $(DESTDIR)$(BIN_DIR)/sway-quick-command
	$(setup_file)/scripts/sway/sway-rename-workspace          > $(DESTDIR)$(BIN_DIR)/sway-rename-workspace
	$(setup_file)/scripts/sway/sway-renumber-workspaces       > $(DESTDIR)$(BIN_DIR)/sway-renumber-workspaces
	$(setup_file)/scripts/sway/sway-run-command               > $(DESTDIR)$(BIN_DIR)/sway-run-command
	$(setup_file)/scripts/sway/sway-subscribe-events-run      > $(DESTDIR)$(BIN_DIR)/sway-subscribe-events-run

	chmod +x $(DESTDIR)$(BIN_DIR)/sway-app-tmux-env
	chmod +x $(DESTDIR)$(BIN_DIR)/sway-command-input
	chmod +x $(DESTDIR)$(BIN_DIR)/sway-create-workspace
	chmod +x $(DESTDIR)$(BIN_DIR)/sway-focus-window-title
	chmod +x $(DESTDIR)$(BIN_DIR)/sway-launch-command
	chmod +x $(DESTDIR)$(BIN_DIR)/sway-launch-system
	chmod +x $(DESTDIR)$(BIN_DIR)/sway-launch-tmux-env
	chmod +x $(DESTDIR)$(BIN_DIR)/sway-launcher
	chmod +x $(DESTDIR)$(BIN_DIR)/sway-move-window-new-workspace
	chmod +x $(DESTDIR)$(BIN_DIR)/sway-move-workspace-direction
	chmod +x $(DESTDIR)$(BIN_DIR)/sway-move-workspace-index
	chmod +x $(DESTDIR)$(BIN_DIR)/sway-quick-command
	chmod +x $(DESTDIR)$(BIN_DIR)/sway-rename-workspace
	chmod +x $(DESTDIR)$(BIN_DIR)/sway-renumber-workspaces
	chmod +x $(DESTDIR)$(BIN_DIR)/sway-run-command
	chmod +x $(DESTDIR)$(BIN_DIR)/sway-subscribe-events-run
