all: sway-docs

sway-docs:
	DESTDIR=$(DESTDIR) THEME=$(THEME) setup/setup-doc sway/sway-command-input
	DESTDIR=$(DESTDIR) THEME=$(THEME) setup/setup-doc sway/sway-create-workspace
	DESTDIR=$(DESTDIR) THEME=$(THEME) setup/setup-doc sway/sway-move-window-new-workspace
	DESTDIR=$(DESTDIR) THEME=$(THEME) setup/setup-doc sway/sway-move-workspace-direction
	DESTDIR=$(DESTDIR) THEME=$(THEME) setup/setup-doc sway/sway-move-workspace-index
	DESTDIR=$(DESTDIR) THEME=$(THEME) setup/setup-doc sway/sway-quick-command
	DESTDIR=$(DESTDIR) THEME=$(THEME) setup/setup-doc sway/sway-rename-workspace
	DESTDIR=$(DESTDIR) THEME=$(THEME) setup/setup-doc sway/sway-renumber-workspaces
	DESTDIR=$(DESTDIR) THEME=$(THEME) setup/setup-doc sway/sway-subscribe-events-run
	DESTDIR=$(DESTDIR) THEME=$(THEME) setup/setup-doc sway/sway-toggle-window-idle-inhibitor
