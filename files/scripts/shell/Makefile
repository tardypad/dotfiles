all: shell-scripts

shell-scripts:
	$(start_setup)

	mkdir -p $(DESTDIR)$(BIN_DIR)

	$(setup_file)/scripts/shell/backup-bookmarks             > $(DESTDIR)$(BIN_DIR)/backup-bookmarks
	$(setup_file)/scripts/shell/backup-notes                 > $(DESTDIR)$(BIN_DIR)/backup-notes
	$(setup_file)/scripts/shell/battery-status               > $(DESTDIR)$(BIN_DIR)/battery-status
	$(setup_file)/scripts/shell/check-notify-low-battery     > $(DESTDIR)$(BIN_DIR)/check-notify-low-battery
	$(setup_file)/scripts/shell/check-notify-package-updates > $(DESTDIR)$(BIN_DIR)/check-notify-package-updates
	$(setup_file)/scripts/shell/color-picker                 > $(DESTDIR)$(BIN_DIR)/color-picker
	$(setup_file)/scripts/shell/do-not-disturb               > $(DESTDIR)$(BIN_DIR)/do-not-disturb
	$(setup_file)/scripts/shell/exec-desktop-entry           > $(DESTDIR)$(BIN_DIR)/exec-desktop-entry
	$(setup_file)/scripts/shell/help                         > $(DESTDIR)$(BIN_DIR)/help
	$(setup_file)/scripts/shell/http-env                     > $(DESTDIR)$(BIN_DIR)/http-env
	$(setup_file)/scripts/shell/influx-env                   > $(DESTDIR)$(BIN_DIR)/influx-env
	$(setup_file)/scripts/shell/i3blocks-mode                > $(DESTDIR)$(BIN_DIR)/i3blocks-mode
	$(setup_file)/scripts/shell/loop                         > $(DESTDIR)$(BIN_DIR)/loop
	$(setup_file)/scripts/shell/man                          > $(DESTDIR)$(BIN_DIR)/man
	$(setup_file)/scripts/shell/mysql-env                    > $(DESTDIR)$(BIN_DIR)/mysql-env
	$(setup_file)/scripts/shell/notify                       > $(DESTDIR)$(BIN_DIR)/notify
	$(setup_file)/scripts/shell/notify-end-pomodoro          > $(DESTDIR)$(BIN_DIR)/notify-end-pomodoro
	$(setup_file)/scripts/shell/notify-tmux-alert            > $(DESTDIR)$(BIN_DIR)/notify-tmux-alert
	$(setup_file)/scripts/shell/pacman-pkgdiff               > $(DESTDIR)$(BIN_DIR)/pacman-pkgdiff
	$(setup_file)/scripts/shell/plot                         > $(DESTDIR)$(BIN_DIR)/plot
	$(setup_file)/scripts/shell/pomodoro                     > $(DESTDIR)$(BIN_DIR)/pomodoro
	$(setup_file)/scripts/shell/project-path                 > $(DESTDIR)$(BIN_DIR)/project-path
	$(setup_file)/scripts/shell/query-hosts-tags             > $(DESTDIR)$(BIN_DIR)/query-hosts-tags
	$(setup_file)/scripts/shell/redis-env                    > $(DESTDIR)$(BIN_DIR)/redis-env
	$(setup_file)/scripts/shell/screenshot                   > $(DESTDIR)$(BIN_DIR)/screenshot
	$(setup_file)/scripts/shell/ssh-tags                     > $(DESTDIR)$(BIN_DIR)/ssh-tags
	$(setup_file)/scripts/shell/status                       > $(DESTDIR)$(BIN_DIR)/status
	$(setup_file)/scripts/shell/tmux-env                     > $(DESTDIR)$(BIN_DIR)/tmux-env
	$(setup_file)/scripts/shell/weechat-fifo                 > $(DESTDIR)$(BIN_DIR)/weechat-fifo

	chmod +x $(DESTDIR)$(BIN_DIR)/backup-bookmarks
	chmod +x $(DESTDIR)$(BIN_DIR)/backup-notes
	chmod +x $(DESTDIR)$(BIN_DIR)/battery-status
	chmod +x $(DESTDIR)$(BIN_DIR)/check-notify-low-battery
	chmod +x $(DESTDIR)$(BIN_DIR)/check-notify-package-updates
	chmod +x $(DESTDIR)$(BIN_DIR)/color-picker
	chmod +x $(DESTDIR)$(BIN_DIR)/do-not-disturb
	chmod +x $(DESTDIR)$(BIN_DIR)/exec-desktop-entry
	chmod +x $(DESTDIR)$(BIN_DIR)/help
	chmod +x $(DESTDIR)$(BIN_DIR)/http-env
	chmod +x $(DESTDIR)$(BIN_DIR)/influx-env
	chmod +x $(DESTDIR)$(BIN_DIR)/i3blocks-mode
	chmod +x $(DESTDIR)$(BIN_DIR)/loop
	chmod +x $(DESTDIR)$(BIN_DIR)/man
	chmod +x $(DESTDIR)$(BIN_DIR)/mysql-env
	chmod +x $(DESTDIR)$(BIN_DIR)/notify
	chmod +x $(DESTDIR)$(BIN_DIR)/notify-end-pomodoro
	chmod +x $(DESTDIR)$(BIN_DIR)/notify-tmux-alert
	chmod +x $(DESTDIR)$(BIN_DIR)/pacman-pkgdiff
	chmod +x $(DESTDIR)$(BIN_DIR)/plot
	chmod +x $(DESTDIR)$(BIN_DIR)/pomodoro
	chmod +x $(DESTDIR)$(BIN_DIR)/project-path
	chmod +x $(DESTDIR)$(BIN_DIR)/query-hosts-tags
	chmod +x $(DESTDIR)$(BIN_DIR)/redis-env
	chmod +x $(DESTDIR)$(BIN_DIR)/screenshot
	chmod +x $(DESTDIR)$(BIN_DIR)/ssh-tags
	chmod +x $(DESTDIR)$(BIN_DIR)/status
	chmod +x $(DESTDIR)$(BIN_DIR)/tmux-env
	chmod +x $(DESTDIR)$(BIN_DIR)/weechat-fifo
