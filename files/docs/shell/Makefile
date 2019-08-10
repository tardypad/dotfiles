all: shell-docs

shell-docs:
	$(start_setup)

	mkdir -p $(DESTDIR)$(DATA_DIR)/man/man1

	scdoc < files/docs/shell/do-not-disturb.scd   > $(DESTDIR)$(DATA_DIR)/man/man1/do-not-disturb.1
	scdoc < files/docs/shell/help.scd             > $(DESTDIR)$(DATA_DIR)/man/man1/help.1
	scdoc < files/docs/shell/http-env.scd         > $(DESTDIR)$(DATA_DIR)/man/man1/http-env.1
	scdoc < files/docs/shell/i3blocks-mode.scd    > $(DESTDIR)$(DATA_DIR)/man/man1/i3blocks-mode.1
	scdoc < files/docs/shell/influx-env.scd       > $(DESTDIR)$(DATA_DIR)/man/man1/influx-env.1
	scdoc < files/docs/shell/loop.scd             > $(DESTDIR)$(DATA_DIR)/man/man1/loop.1
	scdoc < files/docs/shell/mysql-env.scd        > $(DESTDIR)$(DATA_DIR)/man/man1/mysql-env.1
	scdoc < files/docs/shell/notify.scd           > $(DESTDIR)$(DATA_DIR)/man/man1/notify.1
	scdoc < files/docs/shell/pacman-pkgdiff.scd   > $(DESTDIR)$(DATA_DIR)/man/man1/pacman-pkgdiff.1
	scdoc < files/docs/shell/plot.scd             > $(DESTDIR)$(DATA_DIR)/man/man1/plot.1
	scdoc < files/docs/shell/pomodoro.scd         > $(DESTDIR)$(DATA_DIR)/man/man1/pomodoro.1
	scdoc < files/docs/shell/project-path.scd     > $(DESTDIR)$(DATA_DIR)/man/man1/project-path.1
	scdoc < files/docs/shell/query-hosts-tags.scd > $(DESTDIR)$(DATA_DIR)/man/man1/query-hosts-tags.1
	scdoc < files/docs/shell/redis-env.scd        > $(DESTDIR)$(DATA_DIR)/man/man1/redis-env.1
	scdoc < files/docs/shell/tmux-env.scd         > $(DESTDIR)$(DATA_DIR)/man/man1/tmux-env.1
	scdoc < files/docs/shell/weechat-fifo.scd     > $(DESTDIR)$(DATA_DIR)/man/man1/weechat-fifo.1
