all: script

script:
	$(start_setup)

	mkdir -p $(DESTDIR)$(CONFIG_DIR)/git/scripts
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/i3blocks/scripts
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/sway/scripts
	mkdir -p $(DESTDIR)$(HOME)/.tmux/scripts
	mkdir -p $(DESTDIR)$(HOME)/.zsh/scripts

	$(setup_scripts_file)/git/git-init-todo                   > $(DESTDIR)$(CONFIG_DIR)/git/scripts/git-init-todo
	$(setup_scripts_file)/git/git-reauthor                    > $(DESTDIR)$(CONFIG_DIR)/git/scripts/git-reauthor
	$(setup_scripts_file)/git/git-run-command                 > $(DESTDIR)$(CONFIG_DIR)/git/scripts/git-run-command
	$(setup_scripts_file)/git/git-sed                         > $(DESTDIR)$(CONFIG_DIR)/git/scripts/git-sed
	$(setup_scripts_file)/git/git-stamp                       > $(DESTDIR)$(CONFIG_DIR)/git/scripts/git-stamp
	$(setup_scripts_file)/git/git-url                         > $(DESTDIR)$(CONFIG_DIR)/git/scripts/git-url

	$(setup_scripts_file)/i3blocks/i3blocks-bluetooth         > $(DESTDIR)$(CONFIG_DIR)/i3blocks/scripts/i3blocks-bluetooth
	$(setup_scripts_file)/i3blocks/i3blocks-chat              > $(DESTDIR)$(CONFIG_DIR)/i3blocks/scripts/i3blocks-chat
	$(setup_scripts_file)/i3blocks/i3blocks-datetime          > $(DESTDIR)$(CONFIG_DIR)/i3blocks/scripts/i3blocks-datetime
	$(setup_scripts_file)/i3blocks/i3blocks-do-not-disturb    > $(DESTDIR)$(CONFIG_DIR)/i3blocks/scripts/i3blocks-do-not-disturb
	$(setup_scripts_file)/i3blocks/i3blocks-music             > $(DESTDIR)$(CONFIG_DIR)/i3blocks/scripts/i3blocks-music
	$(setup_scripts_file)/i3blocks/i3blocks-network           > $(DESTDIR)$(CONFIG_DIR)/i3blocks/scripts/i3blocks-network
	$(setup_scripts_file)/i3blocks/i3blocks-pomodoro          > $(DESTDIR)$(CONFIG_DIR)/i3blocks/scripts/i3blocks-pomodoro
	$(setup_scripts_file)/i3blocks/i3blocks-power             > $(DESTDIR)$(CONFIG_DIR)/i3blocks/scripts/i3blocks-power
	$(setup_scripts_file)/i3blocks/i3blocks-volume            > $(DESTDIR)$(CONFIG_DIR)/i3blocks/scripts/i3blocks-volume

	$(setup_scripts_file)/sway/sway-app-chat                  > $(DESTDIR)$(CONFIG-DIR)/sway/scripts/sway-app-chat
	$(setup_scripts_file)/sway/sway-app-mail                  > $(DESTDIR)$(CONFIG-DIR)/sway/scripts/sway-app-mail
	$(setup_scripts_file)/sway/sway-app-monitor               > $(DESTDIR)$(CONFIG-DIR)/sway/scripts/sway-app-monitor
	$(setup_scripts_file)/sway/sway-app-music                 > $(DESTDIR)$(CONFIG-DIR)/sway/scripts/sway-app-music
	$(setup_scripts_file)/sway/sway-app-news                  > $(DESTDIR)$(CONFIG-DIR)/sway/scripts/sway-app-news
	$(setup_scripts_file)/sway/sway-app-tmux-env              > $(DESTDIR)$(CONFIG-DIR)/sway/scripts/sway-app-tmux-env
	$(setup_scripts_file)/sway/sway-command-input             > $(DESTDIR)$(CONFIG-DIR)/sway/scripts/sway-command-input
	$(setup_scripts_file)/sway/sway-command-input-exec        > $(DESTDIR)$(CONFIG-DIR)/sway/scripts/sway-command-input-exec
	$(setup_scripts_file)/sway/sway-create-workspace          > $(DESTDIR)$(CONFIG-DIR)/sway/scripts/sway-create-workspace
	$(setup_scripts_file)/sway/sway-focus-window-title        > $(DESTDIR)$(CONFIG-DIR)/sway/scripts/sway-focus-window-title
	$(setup_scripts_file)/sway/sway-fzf-launcher              > $(DESTDIR)$(CONFIG-DIR)/sway/scripts/sway-fzf-launcher
	$(setup_scripts_file)/sway/sway-launch-app                > $(DESTDIR)$(CONFIG-DIR)/sway/scripts/sway-launch-app
	$(setup_scripts_file)/sway/sway-launch-command            > $(DESTDIR)$(CONFIG-DIR)/sway/scripts/sway-launch-command
	$(setup_scripts_file)/sway/sway-launcher                  > $(DESTDIR)$(CONFIG-DIR)/sway/scripts/sway-launcher
	$(setup_scripts_file)/sway/sway-launch-note               > $(DESTDIR)$(CONFIG-DIR)/sway/scripts/sway-launch-note
	$(setup_scripts_file)/sway/sway-launch-password           > $(DESTDIR)$(CONFIG-DIR)/sway/scripts/sway-launch-password
	$(setup_scripts_file)/sway/sway-launch-system             > $(DESTDIR)$(CONFIG-DIR)/sway/scripts/sway-launch-system
	$(setup_scripts_file)/sway/sway-launch-tmux-env           > $(DESTDIR)$(CONFIG-DIR)/sway/scripts/sway-launch-tmux-env
	$(setup_scripts_file)/sway/sway-move-window-new-workspace > $(DESTDIR)$(CONFIG-DIR)/sway/scripts/sway-move-window-new-workspace
	$(setup_scripts_file)/sway/sway-rename-workspace          > $(DESTDIR)$(CONFIG-DIR)/sway/scripts/sway-rename-workspace
	$(setup_scripts_file)/sway/sway-run-command               > $(DESTDIR)$(CONFIG-DIR)/sway/scripts/sway-run-command

	$(setup_scripts_file)/tmux/tmux-extract-tokens            > $(DESTDIR)$(HOME)/.tmux/scripts/tmux-extract-tokens
	$(setup_scripts_file)/tmux/tmux-move-pane-window-index    > $(DESTDIR)$(HOME)/.tmux/scripts/tmux-move-pane-window-index
	$(setup_scripts_file)/tmux/tmux-move-window-index         > $(DESTDIR)$(HOME)/.tmux/scripts/tmux-move-window-index
	$(setup_scripts_file)/tmux/tmux-notify-alert              > $(DESTDIR)$(HOME)/.tmux/scripts/tmux-notify-alert
	$(setup_scripts_file)/tmux/tmux-select-pane-vim           > $(DESTDIR)$(HOME)/.tmux/scripts/tmux-select-pane-vim
	$(setup_scripts_file)/tmux/tmux-toggle-monitor-activity   > $(DESTDIR)$(HOME)/.tmux/scripts/tmux-toggle-monitor-activity
	$(setup_scripts_file)/tmux/tmux-toggle-monitor-silence    > $(DESTDIR)$(HOME)/.tmux/scripts/tmux-toggle-monitor-silence
	$(setup_scripts_file)/tmux/tmux-toggle-no-distraction     > $(DESTDIR)$(HOME)/.tmux/scripts/tmux-toggle-no-distraction

	$(setup_scripts_file)/shell/backup-bookmarks              > $(DESTDIR)$(HOME)/.zsh/scripts/backup-bookmarks
	$(setup_scripts_file)/shell/backup-notes                  > $(DESTDIR)$(HOME)/.zsh/scripts/backup-notes
	$(setup_scripts_file)/shell/battery-status                > $(DESTDIR)$(HOME)/.zsh/scripts/battery-status
	$(setup_scripts_file)/shell/check-notify-low-battery      > $(DESTDIR)$(HOME)/.zsh/scripts/check-notify-low-battery
	$(setup_scripts_file)/shell/check-notify-package-updates  > $(DESTDIR)$(HOME)/.zsh/scripts/check-notify-package-updates
	$(setup_scripts_file)/shell/color-picker                  > $(DESTDIR)$(HOME)/.zsh/scripts/color-picker
	$(setup_scripts_file)/shell/do-not-disturb                > $(DESTDIR)$(HOME)/.zsh/scripts/do-not-disturb
	$(setup_scripts_file)/shell/exec-desktop-entry            > $(DESTDIR)$(HOME)/.zsh/scripts/exec-desktop-entry
	$(setup_scripts_file)/shell/help                          > $(DESTDIR)$(HOME)/.zsh/scripts/help
	$(setup_scripts_file)/shell/http-env                      > $(DESTDIR)$(HOME)/.zsh/scripts/http-env
	$(setup_scripts_file)/shell/influx-env                    > $(DESTDIR)$(HOME)/.zsh/scripts/influx-env
	$(setup_scripts_file)/shell/i3blocks-mode                 > $(DESTDIR)$(HOME)/.zsh/scripts/i3blocks-mode
	$(setup_scripts_file)/shell/loop                          > $(DESTDIR)$(HOME)/.zsh/scripts/loop
	$(setup_scripts_file)/shell/man                           > $(DESTDIR)$(HOME)/.zsh/scripts/man
	$(setup_scripts_file)/shell/mysql-env                     > $(DESTDIR)$(HOME)/.zsh/scripts/mysql-env
	$(setup_scripts_file)/shell/notify                        > $(DESTDIR)$(HOME)/.zsh/scripts/notify
	$(setup_scripts_file)/shell/notify-end-pomodoro           > $(DESTDIR)$(HOME)/.zsh/scripts/notify-end-pomodoro
	$(setup_scripts_file)/shell/notify-tmux-alert             > $(DESTDIR)$(HOME)/.zsh/scripts/notify-tmux-alert
	$(setup_scripts_file)/shell/pacman-pkgdiff                > $(DESTDIR)$(HOME)/.zsh/scripts/pacman-pkgdiff
	$(setup_scripts_file)/shell/plot                          > $(DESTDIR)$(HOME)/.zsh/scripts/plot
	$(setup_scripts_file)/shell/pomodoro                      > $(DESTDIR)$(HOME)/.zsh/scripts/pomodoro
	$(setup_scripts_file)/shell/project-path                  > $(DESTDIR)$(HOME)/.zsh/scripts/project-path
	$(setup_scripts_file)/shell/query-hosts-tags              > $(DESTDIR)$(HOME)/.zsh/scripts/query-hosts-tags
	$(setup_scripts_file)/shell/redis-env                     > $(DESTDIR)$(HOME)/.zsh/scripts/redis-env
	$(setup_scripts_file)/shell/screenshot                    > $(DESTDIR)$(HOME)/.zsh/scripts/screenshot
	$(setup_scripts_file)/shell/ssh-tags                      > $(DESTDIR)$(HOME)/.zsh/scripts/ssh-tags
	$(setup_scripts_file)/shell/status                        > $(DESTDIR)$(HOME)/.zsh/scripts/status
	$(setup_scripts_file)/shell/tmux-env                      > $(DESTDIR)$(HOME)/.zsh/scripts/tmux-env
	$(setup_scripts_file)/shell/weechat-fifo                  > $(DESTDIR)$(HOME)/.zsh/scripts/weechat-fifo

	chmod +x $(DESTDIR)$(CONFIG_DIR)/git/scripts/*
	chmod +x $(DESTDIR)$(CONFIG_DIR)/i3blocks/scripts/*
	chmod +x $(DESTDIR)$(CONFIG_DIR)/sway/scripts/*
	chmod +x $(DESTDIR)$(HOME)/.tmux/scripts/*
	chmod +x $(DESTDIR)$(HOME)/.zsh/scripts/*

