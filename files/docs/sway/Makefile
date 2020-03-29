all: sway-docs

sway-docs:
	mkdir -p $(DESTDIR)$(DATA_DIR)/man/man1

	scdoc < files/docs/sway/sway-app-tmux-env.scd              > $(DESTDIR)$(DATA_DIR)/man/man1/sway-app-tmux-env.1$(MAN_SUFFIX)
	scdoc < files/docs/sway/sway-command-input.scd             > $(DESTDIR)$(DATA_DIR)/man/man1/sway-command-input.1$(MAN_SUFFIX)
	scdoc < files/docs/sway/sway-create-workspace.scd          > $(DESTDIR)$(DATA_DIR)/man/man1/sway-create-workspace.1$(MAN_SUFFIX)
	scdoc < files/docs/sway/sway-focus-window-title.scd        > $(DESTDIR)$(DATA_DIR)/man/man1/sway-focus-window-title.1$(MAN_SUFFIX)
	scdoc < files/docs/sway/sway-launch-command.scd            > $(DESTDIR)$(DATA_DIR)/man/man1/sway-launch-command.1$(MAN_SUFFIX)
	scdoc < files/docs/sway/sway-launch-system.scd             > $(DESTDIR)$(DATA_DIR)/man/man1/sway-launch-system.1$(MAN_SUFFIX)
	scdoc < files/docs/sway/sway-launch-tmux-env.scd           > $(DESTDIR)$(DATA_DIR)/man/man1/sway-launch-tmux-env.1$(MAN_SUFFIX)
	scdoc < files/docs/sway/sway-launcher.scd                  > $(DESTDIR)$(DATA_DIR)/man/man1/sway-launcher.1$(MAN_SUFFIX)
	scdoc < files/docs/sway/sway-move-window-new-workspace.scd > $(DESTDIR)$(DATA_DIR)/man/man1/sway-move-window-new-workspace.1$(MAN_SUFFIX)
	scdoc < files/docs/sway/sway-move-workspace-direction.scd  > $(DESTDIR)$(DATA_DIR)/man/man1/sway-move-workspace-direction.1$(MAN_SUFFIX)
	scdoc < files/docs/sway/sway-move-workspace-index.scd      > $(DESTDIR)$(DATA_DIR)/man/man1/sway-move-workspace-index.1$(MAN_SUFFIX)
	scdoc < files/docs/sway/sway-rename-workspace.scd          > $(DESTDIR)$(DATA_DIR)/man/man1/sway-rename-workspace.1$(MAN_SUFFIX)
	scdoc < files/docs/sway/sway-renumber-workspaces.scd       > $(DESTDIR)$(DATA_DIR)/man/man1/sway-renumber-workspaces.1$(MAN_SUFFIX)
	scdoc < files/docs/sway/sway-run-command.scd               > $(DESTDIR)$(DATA_DIR)/man/man1/sway-run-command.1$(MAN_SUFFIX)
	scdoc < files/docs/sway/sway-subscribe-events-run.scd      > $(DESTDIR)$(DATA_DIR)/man/man1/sway-subscribe-events-run.1$(MAN_SUFFIX)
