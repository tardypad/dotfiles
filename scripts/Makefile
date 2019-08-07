all: script

script:
	$(start_setup)

	mkdir -p $(DESTDIR)$(BIN_DIR)

	$(setup_scripts_file)/git/git-init-todo                   > $(DESTDIR)$(BIN_DIR)/git-init-todo
	$(setup_scripts_file)/git/git-reauthor                    > $(DESTDIR)$(BIN_DIR)/git-reauthor
	$(setup_scripts_file)/git/git-run-command                 > $(DESTDIR)$(BIN_DIR)/git-run-command
	$(setup_scripts_file)/git/git-sed                         > $(DESTDIR)$(BIN_DIR)/git-sed
	$(setup_scripts_file)/git/git-stamp                       > $(DESTDIR)$(BIN_DIR)/git-stamp
	$(setup_scripts_file)/git/git-url                         > $(DESTDIR)$(BIN_DIR)/git-url

	$(setup_scripts_file)/i3blocks/i3blocks-bluetooth         > $(DESTDIR)$(BIN_DIR)/i3blocks-bluetooth
	$(setup_scripts_file)/i3blocks/i3blocks-chat              > $(DESTDIR)$(BIN_DIR)/i3blocks-chat
	$(setup_scripts_file)/i3blocks/i3blocks-datetime          > $(DESTDIR)$(BIN_DIR)/i3blocks-datetime
	$(setup_scripts_file)/i3blocks/i3blocks-do-not-disturb    > $(DESTDIR)$(BIN_DIR)/i3blocks-do-not-disturb
	$(setup_scripts_file)/i3blocks/i3blocks-music             > $(DESTDIR)$(BIN_DIR)/i3blocks-music
	$(setup_scripts_file)/i3blocks/i3blocks-network           > $(DESTDIR)$(BIN_DIR)/i3blocks-network
	$(setup_scripts_file)/i3blocks/i3blocks-pomodoro          > $(DESTDIR)$(BIN_DIR)/i3blocks-pomodoro
	$(setup_scripts_file)/i3blocks/i3blocks-power             > $(DESTDIR)$(BIN_DIR)/i3blocks-power
	$(setup_scripts_file)/i3blocks/i3blocks-volume            > $(DESTDIR)$(BIN_DIR)/i3blocks-volume

	$(setup_scripts_file)/sway/sway-app-chat                  > $(DESTDIR)$(BIN_DIR)/sway-app-chat
	$(setup_scripts_file)/sway/sway-app-mail                  > $(DESTDIR)$(BIN_DIR)/sway-app-mail
	$(setup_scripts_file)/sway/sway-app-monitor               > $(DESTDIR)$(BIN_DIR)/sway-app-monitor
	$(setup_scripts_file)/sway/sway-app-music                 > $(DESTDIR)$(BIN_DIR)/sway-app-music
	$(setup_scripts_file)/sway/sway-app-news                  > $(DESTDIR)$(BIN_DIR)/sway-app-news
	$(setup_scripts_file)/sway/sway-app-tmux-env              > $(DESTDIR)$(BIN_DIR)/sway-app-tmux-env
	$(setup_scripts_file)/sway/sway-command-input             > $(DESTDIR)$(BIN_DIR)/sway-command-input
	$(setup_scripts_file)/sway/sway-command-input-exec        > $(DESTDIR)$(BIN_DIR)/sway-command-input-exec
	$(setup_scripts_file)/sway/sway-create-workspace          > $(DESTDIR)$(BIN_DIR)/sway-create-workspace
	$(setup_scripts_file)/sway/sway-focus-window-title        > $(DESTDIR)$(BIN_DIR)/sway-focus-window-title
	$(setup_scripts_file)/sway/sway-fzf-launcher              > $(DESTDIR)$(BIN_DIR)/sway-fzf-launcher
	$(setup_scripts_file)/sway/sway-launch-app                > $(DESTDIR)$(BIN_DIR)/sway-launch-app
	$(setup_scripts_file)/sway/sway-launch-command            > $(DESTDIR)$(BIN_DIR)/sway-launch-command
	$(setup_scripts_file)/sway/sway-launcher                  > $(DESTDIR)$(BIN_DIR)/sway-launcher
	$(setup_scripts_file)/sway/sway-launch-note               > $(DESTDIR)$(BIN_DIR)/sway-launch-note
	$(setup_scripts_file)/sway/sway-launch-password           > $(DESTDIR)$(BIN_DIR)/sway-launch-password
	$(setup_scripts_file)/sway/sway-launch-system             > $(DESTDIR)$(BIN_DIR)/sway-launch-system
	$(setup_scripts_file)/sway/sway-launch-tmux-env           > $(DESTDIR)$(BIN_DIR)/sway-launch-tmux-env
	$(setup_scripts_file)/sway/sway-move-window-new-workspace > $(DESTDIR)$(BIN_DIR)/sway-move-window-new-workspace
	$(setup_scripts_file)/sway/sway-rename-workspace          > $(DESTDIR)$(BIN_DIR)/sway-rename-workspace
	$(setup_scripts_file)/sway/sway-run-command               > $(DESTDIR)$(BIN_DIR)/sway-run-command

	$(setup_scripts_file)/tmux/tmux-extract-tokens            > $(DESTDIR)$(BIN_DIR)/tmux-extract-tokens
	$(setup_scripts_file)/tmux/tmux-move-pane-window-index    > $(DESTDIR)$(BIN_DIR)/tmux-move-pane-window-index
	$(setup_scripts_file)/tmux/tmux-move-window-index         > $(DESTDIR)$(BIN_DIR)/tmux-move-window-index
	$(setup_scripts_file)/tmux/tmux-notify-alert              > $(DESTDIR)$(BIN_DIR)/tmux-notify-alert
	$(setup_scripts_file)/tmux/tmux-select-pane-vim           > $(DESTDIR)$(BIN_DIR)/tmux-select-pane-vim
	$(setup_scripts_file)/tmux/tmux-toggle-monitor-activity   > $(DESTDIR)$(BIN_DIR)/tmux-toggle-monitor-activity
	$(setup_scripts_file)/tmux/tmux-toggle-monitor-silence    > $(DESTDIR)$(BIN_DIR)/tmux-toggle-monitor-silence
	$(setup_scripts_file)/tmux/tmux-toggle-no-distraction     > $(DESTDIR)$(BIN_DIR)/tmux-toggle-no-distraction

	$(setup_scripts_file)/shell/backup-bookmarks              > $(DESTDIR)$(BIN_DIR)/backup-bookmarks
	$(setup_scripts_file)/shell/backup-notes                  > $(DESTDIR)$(BIN_DIR)/backup-notes
	$(setup_scripts_file)/shell/battery-status                > $(DESTDIR)$(BIN_DIR)/battery-status
	$(setup_scripts_file)/shell/check-notify-low-battery      > $(DESTDIR)$(BIN_DIR)/check-notify-low-battery
	$(setup_scripts_file)/shell/check-notify-package-updates  > $(DESTDIR)$(BIN_DIR)/check-notify-package-updates
	$(setup_scripts_file)/shell/color-picker                  > $(DESTDIR)$(BIN_DIR)/color-picker
	$(setup_scripts_file)/shell/do-not-disturb                > $(DESTDIR)$(BIN_DIR)/do-not-disturb
	$(setup_scripts_file)/shell/exec-desktop-entry            > $(DESTDIR)$(BIN_DIR)/exec-desktop-entry
	$(setup_scripts_file)/shell/help                          > $(DESTDIR)$(BIN_DIR)/help
	$(setup_scripts_file)/shell/http-env                      > $(DESTDIR)$(BIN_DIR)/http-env
	$(setup_scripts_file)/shell/influx-env                    > $(DESTDIR)$(BIN_DIR)/influx-env
	$(setup_scripts_file)/shell/i3blocks-mode                 > $(DESTDIR)$(BIN_DIR)/i3blocks-mode
	$(setup_scripts_file)/shell/loop                          > $(DESTDIR)$(BIN_DIR)/loop
	$(setup_scripts_file)/shell/man                           > $(DESTDIR)$(BIN_DIR)/man
	$(setup_scripts_file)/shell/mysql-env                     > $(DESTDIR)$(BIN_DIR)/mysql-env
	$(setup_scripts_file)/shell/notify                        > $(DESTDIR)$(BIN_DIR)/notify
	$(setup_scripts_file)/shell/notify-end-pomodoro           > $(DESTDIR)$(BIN_DIR)/notify-end-pomodoro
	$(setup_scripts_file)/shell/notify-tmux-alert             > $(DESTDIR)$(BIN_DIR)/notify-tmux-alert
	$(setup_scripts_file)/shell/pacman-pkgdiff                > $(DESTDIR)$(BIN_DIR)/pacman-pkgdiff
	$(setup_scripts_file)/shell/plot                          > $(DESTDIR)$(BIN_DIR)/plot
	$(setup_scripts_file)/shell/pomodoro                      > $(DESTDIR)$(BIN_DIR)/pomodoro
	$(setup_scripts_file)/shell/project-path                  > $(DESTDIR)$(BIN_DIR)/project-path
	$(setup_scripts_file)/shell/query-hosts-tags              > $(DESTDIR)$(BIN_DIR)/query-hosts-tags
	$(setup_scripts_file)/shell/redis-env                     > $(DESTDIR)$(BIN_DIR)/redis-env
	$(setup_scripts_file)/shell/screenshot                    > $(DESTDIR)$(BIN_DIR)/screenshot
	$(setup_scripts_file)/shell/ssh-tags                      > $(DESTDIR)$(BIN_DIR)/ssh-tags
	$(setup_scripts_file)/shell/status                        > $(DESTDIR)$(BIN_DIR)/status
	$(setup_scripts_file)/shell/tmux-env                      > $(DESTDIR)$(BIN_DIR)/tmux-env
	$(setup_scripts_file)/shell/weechat-fifo                  > $(DESTDIR)$(BIN_DIR)/weechat-fifo

	chmod +x $(DESTDIR)$(BIN_DIR)/*
