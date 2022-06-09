all: shell-scripts

shell-scripts:
	mkdir -p $(DESTDIR)$(BIN_DIR)

	THEME=$(THEME) setup/setup-file scripts/shell/backup                       > $(DESTDIR)$(BIN_DIR)/backup
	THEME=$(THEME) setup/setup-file scripts/shell/base                         > $(DESTDIR)$(BIN_DIR)/base
	THEME=$(THEME) setup/setup-file scripts/shell/battery-status               > $(DESTDIR)$(BIN_DIR)/battery-status
	THEME=$(THEME) setup/setup-file scripts/shell/bemenu                       > $(DESTDIR)$(BIN_DIR)/bemenu
	THEME=$(THEME) setup/setup-file scripts/shell/bemenu-run                   > $(DESTDIR)$(BIN_DIR)/bemenu-run
	THEME=$(THEME) setup/setup-file scripts/shell/bluetooth                    > $(DESTDIR)$(BIN_DIR)/bluetooth
	THEME=$(THEME) setup/setup-file scripts/shell/calculate                    > $(DESTDIR)$(BIN_DIR)/calculate
	THEME=$(THEME) setup/setup-file scripts/shell/check-notify-low-battery     > $(DESTDIR)$(BIN_DIR)/check-notify-low-battery
	THEME=$(THEME) setup/setup-file scripts/shell/clock                        > $(DESTDIR)$(BIN_DIR)/clock
	THEME=$(THEME) setup/setup-file scripts/shell/color-picker                 > $(DESTDIR)$(BIN_DIR)/color-picker
	THEME=$(THEME) setup/setup-file scripts/shell/copy-otp                     > $(DESTDIR)$(BIN_DIR)/copy-otp
	THEME=$(THEME) setup/setup-file scripts/shell/copy-password                > $(DESTDIR)$(BIN_DIR)/copy-password
	THEME=$(THEME) setup/setup-file scripts/shell/do-not-disturb               > $(DESTDIR)$(BIN_DIR)/do-not-disturb
	THEME=$(THEME) setup/setup-file scripts/shell/documentation                > $(DESTDIR)$(BIN_DIR)/documentation
	THEME=$(THEME) setup/setup-file scripts/shell/documentation-all            > $(DESTDIR)$(BIN_DIR)/documentation-all
	THEME=$(THEME) setup/setup-file scripts/shell/extract-tokens               > $(DESTDIR)$(BIN_DIR)/extract-tokens
	THEME=$(THEME) setup/setup-file scripts/shell/fzf                          > $(DESTDIR)$(BIN_DIR)/fzf
	THEME=$(THEME) setup/setup-file scripts/shell/http-env                     > $(DESTDIR)$(BIN_DIR)/http-env
	THEME=$(THEME) setup/setup-file scripts/shell/http-stats                   > $(DESTDIR)$(BIN_DIR)/http-stats
	THEME=$(THEME) setup/setup-file scripts/shell/i3blocks-mode                > $(DESTDIR)$(BIN_DIR)/i3blocks-mode
	THEME=$(THEME) setup/setup-file scripts/shell/influx-env                   > $(DESTDIR)$(BIN_DIR)/influx-env
	THEME=$(THEME) setup/setup-file scripts/shell/launch-tmux-env              > $(DESTDIR)$(BIN_DIR)/launch-tmux-env
	THEME=$(THEME) setup/setup-file scripts/shell/line-by-line                 > $(DESTDIR)$(BIN_DIR)/line-by-line
	THEME=$(THEME) setup/setup-file scripts/shell/loop                         > $(DESTDIR)$(BIN_DIR)/loop
	THEME=$(THEME) setup/setup-file scripts/shell/man                          > $(DESTDIR)$(BIN_DIR)/man
	THEME=$(THEME) setup/setup-file scripts/shell/mount-device                 > $(DESTDIR)$(BIN_DIR)/mount-device
	THEME=$(THEME) setup/setup-file scripts/shell/mysql-env                    > $(DESTDIR)$(BIN_DIR)/mysql-env
	THEME=$(THEME) setup/setup-file scripts/shell/night-mode                   > $(DESTDIR)$(BIN_DIR)/night-mode
	THEME=$(THEME) setup/setup-file scripts/shell/notify                       > $(DESTDIR)$(BIN_DIR)/notify
	THEME=$(THEME) setup/setup-file scripts/shell/open-document                > $(DESTDIR)$(BIN_DIR)/open-document
	THEME=$(THEME) setup/setup-file scripts/shell/pick-task                    > $(DESTDIR)$(BIN_DIR)/pick-task
	THEME=$(THEME) setup/setup-file scripts/shell/play-somafm                  > $(DESTDIR)$(BIN_DIR)/play-somafm
	THEME=$(THEME) setup/setup-file scripts/shell/pomodoro                     > $(DESTDIR)$(BIN_DIR)/pomodoro
	THEME=$(THEME) setup/setup-file scripts/shell/presentation-mode            > $(DESTDIR)$(BIN_DIR)/presentation-mode
	THEME=$(THEME) setup/setup-file scripts/shell/project-path                 > $(DESTDIR)$(BIN_DIR)/project-path
	THEME=$(THEME) setup/setup-file scripts/shell/query-hosts-tags             > $(DESTDIR)$(BIN_DIR)/query-hosts-tags
	THEME=$(THEME) setup/setup-file scripts/shell/read-news                    > $(DESTDIR)$(BIN_DIR)/read-news
	THEME=$(THEME) setup/setup-file scripts/shell/redis-env                    > $(DESTDIR)$(BIN_DIR)/redis-env
	THEME=$(THEME) setup/setup-file scripts/shell/rename-edit                  > $(DESTDIR)$(BIN_DIR)/rename-edit
	THEME=$(THEME) setup/setup-file scripts/shell/schedule                     > $(DESTDIR)$(BIN_DIR)/schedule
	THEME=$(THEME) setup/setup-file scripts/shell/screencast                   > $(DESTDIR)$(BIN_DIR)/screencast
	THEME=$(THEME) setup/setup-file scripts/shell/screenshot                   > $(DESTDIR)$(BIN_DIR)/screenshot
	THEME=$(THEME) setup/setup-file scripts/shell/show-clipboard-qrcode        > $(DESTDIR)$(BIN_DIR)/show-clipboard-qrcode
	THEME=$(THEME) setup/setup-file scripts/shell/somafm                       > $(DESTDIR)$(BIN_DIR)/somafm
	THEME=$(THEME) setup/setup-file scripts/shell/ssh-tags                     > $(DESTDIR)$(BIN_DIR)/ssh-tags
	THEME=$(THEME) setup/setup-file scripts/shell/startup                      > $(DESTDIR)$(BIN_DIR)/startup
	THEME=$(THEME) setup/setup-file scripts/shell/status                       > $(DESTDIR)$(BIN_DIR)/status
	THEME=$(THEME) setup/setup-file scripts/shell/system-menu                  > $(DESTDIR)$(BIN_DIR)/system-menu
	THEME=$(THEME) setup/setup-file scripts/shell/task                         > $(DESTDIR)$(BIN_DIR)/task
	THEME=$(THEME) setup/setup-file scripts/shell/theme                        > $(DESTDIR)$(BIN_DIR)/theme
	THEME=$(THEME) setup/setup-file scripts/shell/time-tracker                 > $(DESTDIR)$(BIN_DIR)/time-tracker
	THEME=$(THEME) setup/setup-file scripts/shell/tmux-env                     > $(DESTDIR)$(BIN_DIR)/tmux-env
	THEME=$(THEME) setup/setup-file scripts/shell/url                          > $(DESTDIR)$(BIN_DIR)/url
	THEME=$(THEME) setup/setup-file scripts/shell/weechat-fifo                 > $(DESTDIR)$(BIN_DIR)/weechat-fifo
	THEME=$(THEME) setup/setup-file scripts/shell/xdg-open                     > $(DESTDIR)$(BIN_DIR)/xdg-open

	chmod +x $(DESTDIR)$(BIN_DIR)/backup
	chmod +x $(DESTDIR)$(BIN_DIR)/base
	chmod +x $(DESTDIR)$(BIN_DIR)/battery-status
	chmod +x $(DESTDIR)$(BIN_DIR)/bemenu
	chmod +x $(DESTDIR)$(BIN_DIR)/bemenu-run
	chmod +x $(DESTDIR)$(BIN_DIR)/bluetooth
	chmod +x $(DESTDIR)$(BIN_DIR)/calculate
	chmod +x $(DESTDIR)$(BIN_DIR)/check-notify-low-battery
	chmod +x $(DESTDIR)$(BIN_DIR)/clock
	chmod +x $(DESTDIR)$(BIN_DIR)/color-picker
	chmod +x $(DESTDIR)$(BIN_DIR)/copy-otp
	chmod +x $(DESTDIR)$(BIN_DIR)/copy-password
	chmod +x $(DESTDIR)$(BIN_DIR)/do-not-disturb
	chmod +x $(DESTDIR)$(BIN_DIR)/documentation
	chmod +x $(DESTDIR)$(BIN_DIR)/documentation-all
	chmod +x $(DESTDIR)$(BIN_DIR)/extract-tokens
	chmod +x $(DESTDIR)$(BIN_DIR)/fzf
	chmod +x $(DESTDIR)$(BIN_DIR)/http-env
	chmod +x $(DESTDIR)$(BIN_DIR)/http-stats
	chmod +x $(DESTDIR)$(BIN_DIR)/i3blocks-mode
	chmod +x $(DESTDIR)$(BIN_DIR)/influx-env
	chmod +x $(DESTDIR)$(BIN_DIR)/launch-tmux-env
	chmod +x $(DESTDIR)$(BIN_DIR)/line-by-line
	chmod +x $(DESTDIR)$(BIN_DIR)/loop
	chmod +x $(DESTDIR)$(BIN_DIR)/man
	chmod +x $(DESTDIR)$(BIN_DIR)/mount-device
	chmod +x $(DESTDIR)$(BIN_DIR)/mysql-env
	chmod +x $(DESTDIR)$(BIN_DIR)/night-mode
	chmod +x $(DESTDIR)$(BIN_DIR)/notify
	chmod +x $(DESTDIR)$(BIN_DIR)/open-document
	chmod +x $(DESTDIR)$(BIN_DIR)/pick-task
	chmod +x $(DESTDIR)$(BIN_DIR)/play-somafm
	chmod +x $(DESTDIR)$(BIN_DIR)/pomodoro
	chmod +x $(DESTDIR)$(BIN_DIR)/presentation-mode
	chmod +x $(DESTDIR)$(BIN_DIR)/project-path
	chmod +x $(DESTDIR)$(BIN_DIR)/query-hosts-tags
	chmod +x $(DESTDIR)$(BIN_DIR)/read-news
	chmod +x $(DESTDIR)$(BIN_DIR)/redis-env
	chmod +x $(DESTDIR)$(BIN_DIR)/rename-edit
	chmod +x $(DESTDIR)$(BIN_DIR)/schedule
	chmod +x $(DESTDIR)$(BIN_DIR)/screencast
	chmod +x $(DESTDIR)$(BIN_DIR)/screenshot
	chmod +x $(DESTDIR)$(BIN_DIR)/show-clipboard-qrcode
	chmod +x $(DESTDIR)$(BIN_DIR)/somafm
	chmod +x $(DESTDIR)$(BIN_DIR)/ssh-tags
	chmod +x $(DESTDIR)$(BIN_DIR)/startup
	chmod +x $(DESTDIR)$(BIN_DIR)/status
	chmod +x $(DESTDIR)$(BIN_DIR)/system-menu
	chmod +x $(DESTDIR)$(BIN_DIR)/task
	chmod +x $(DESTDIR)$(BIN_DIR)/theme
	chmod +x $(DESTDIR)$(BIN_DIR)/time-tracker
	chmod +x $(DESTDIR)$(BIN_DIR)/tmux-env
	chmod +x $(DESTDIR)$(BIN_DIR)/url
	chmod +x $(DESTDIR)$(BIN_DIR)/weechat-fifo
	chmod +x $(DESTDIR)$(BIN_DIR)/xdg-open
