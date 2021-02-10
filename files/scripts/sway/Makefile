all: sway-scripts

sway-scripts:
	mkdir -p $(DESTDIR)$(BIN_DIR)

	$(setup_file)/scripts/sway/sway-command-input                > $(DESTDIR)$(BIN_DIR)/sway-command-input
	$(setup_file)/scripts/sway/sway-create-workspace             > $(DESTDIR)$(BIN_DIR)/sway-create-workspace
	$(setup_file)/scripts/sway/sway-focus-window-title           > $(DESTDIR)$(BIN_DIR)/sway-focus-window-title
	$(setup_file)/scripts/sway/sway-move-window-new-workspace    > $(DESTDIR)$(BIN_DIR)/sway-move-window-new-workspace
	$(setup_file)/scripts/sway/sway-move-workspace-direction     > $(DESTDIR)$(BIN_DIR)/sway-move-workspace-direction
	$(setup_file)/scripts/sway/sway-move-workspace-index         > $(DESTDIR)$(BIN_DIR)/sway-move-workspace-index
	$(setup_file)/scripts/sway/sway-quick-command                > $(DESTDIR)$(BIN_DIR)/sway-quick-command
	$(setup_file)/scripts/sway/sway-rename-workspace             > $(DESTDIR)$(BIN_DIR)/sway-rename-workspace
	$(setup_file)/scripts/sway/sway-renumber-workspaces          > $(DESTDIR)$(BIN_DIR)/sway-renumber-workspaces
	$(setup_file)/scripts/sway/sway-subscribe-events-run         > $(DESTDIR)$(BIN_DIR)/sway-subscribe-events-run
	$(setup_file)/scripts/sway/sway-toggle-window-idle-inhibitor > $(DESTDIR)$(BIN_DIR)/sway-toggle-window-idle-inhibitor

	chmod +x $(DESTDIR)$(BIN_DIR)/sway-command-input
	chmod +x $(DESTDIR)$(BIN_DIR)/sway-create-workspace
	chmod +x $(DESTDIR)$(BIN_DIR)/sway-focus-window-title
	chmod +x $(DESTDIR)$(BIN_DIR)/sway-move-window-new-workspace
	chmod +x $(DESTDIR)$(BIN_DIR)/sway-move-workspace-direction
	chmod +x $(DESTDIR)$(BIN_DIR)/sway-move-workspace-index
	chmod +x $(DESTDIR)$(BIN_DIR)/sway-quick-command
	chmod +x $(DESTDIR)$(BIN_DIR)/sway-rename-workspace
	chmod +x $(DESTDIR)$(BIN_DIR)/sway-renumber-workspaces
	chmod +x $(DESTDIR)$(BIN_DIR)/sway-subscribe-events-run
	chmod +x $(DESTDIR)$(BIN_DIR)/sway-toggle-window-idle-inhibitor
