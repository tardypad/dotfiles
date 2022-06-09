all: tmux-docs

tmux-docs:
	DESTDIR=$(DESTDIR) THEME=$(THEME) setup/setup-doc tmux/tmux-extract-tokens
	DESTDIR=$(DESTDIR) THEME=$(THEME) setup/setup-doc tmux/tmux-move-pane-window-index
	DESTDIR=$(DESTDIR) THEME=$(THEME) setup/setup-doc tmux/tmux-move-window-index
	DESTDIR=$(DESTDIR) THEME=$(THEME) setup/setup-doc tmux/tmux-notify-alert
	DESTDIR=$(DESTDIR) THEME=$(THEME) setup/setup-doc tmux/tmux-select-pane-vim
	DESTDIR=$(DESTDIR) THEME=$(THEME) setup/setup-doc tmux/tmux-send-vim
	DESTDIR=$(DESTDIR) THEME=$(THEME) setup/setup-doc tmux/tmux-switch-session
	DESTDIR=$(DESTDIR) THEME=$(THEME) setup/setup-doc tmux/tmux-toggle-monitoring
	DESTDIR=$(DESTDIR) THEME=$(THEME) setup/setup-doc tmux/tmux-toggle-no-distraction
