all: sway-docs

sway-docs:
	mkdir -p $(DESTDIR)$(DATA_DIR)/man/man1

	$(setup_file)/docs/sway/sway-command-input.scd                | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/sway-command-input.1perso
	$(setup_file)/docs/sway/sway-create-workspace.scd             | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/sway-create-workspace.1perso
	$(setup_file)/docs/sway/sway-move-window-new-workspace.scd    | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/sway-move-window-new-workspace.1perso
	$(setup_file)/docs/sway/sway-move-workspace-direction.scd     | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/sway-move-workspace-direction.1perso
	$(setup_file)/docs/sway/sway-move-workspace-index.scd         | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/sway-move-workspace-index.1perso
	$(setup_file)/docs/sway/sway-quick-command.scd                | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/sway-quick-command.1perso
	$(setup_file)/docs/sway/sway-rename-workspace.scd             | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/sway-rename-workspace.1perso
	$(setup_file)/docs/sway/sway-renumber-workspaces.scd          | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/sway-renumber-workspaces.1perso
	$(setup_file)/docs/sway/sway-subscribe-events-run.scd         | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/sway-subscribe-events-run.1perso
	$(setup_file)/docs/sway/sway-toggle-window-idle-inhibitor.scd | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/sway-toggle-window-idle-inhibitor.1perso
