all: doc

doc:
	$(start_setup)

	mkdir -p $(DESTDIR)$(DATA_DIR)/man/man1

	scdoc < docs/do-not-disturb.scd          > $(DESTDIR)$(DATA_DIR)/man/man1/do-not-disturb.1.scd.1
	scdoc < docs/help.scd                    > $(DESTDIR)$(DATA_DIR)/man/man1/help.1.scd.1
	scdoc < docs/http-env.scd                > $(DESTDIR)$(DATA_DIR)/man/man1/http-env.1.scd.1
	scdoc < docs/influx-env.scd              > $(DESTDIR)$(DATA_DIR)/man/man1/influx-env.1.scd.1
	scdoc < docs/loop.scd                    > $(DESTDIR)$(DATA_DIR)/man/man1/loop.1.scd.1
	scdoc < docs/mysql-env.scd               > $(DESTDIR)$(DATA_DIR)/man/man1/mysql-env.1.scd.1
	scdoc < docs/pacman-pkgdiff.scd          > $(DESTDIR)$(DATA_DIR)/man/man1/pacman-pkgdiff.1.scd.1
	scdoc < docs/plot.scd                    > $(DESTDIR)$(DATA_DIR)/man/man1/plot.1.scd.1
	scdoc < docs/pomodoro.scd                > $(DESTDIR)$(DATA_DIR)/man/man1/pomodoro.1.scd.1
	scdoc < docs/project-path.scd            > $(DESTDIR)$(DATA_DIR)/man/man1/project-path.1.scd.1
	scdoc < docs/query-hosts-tags.scd        > $(DESTDIR)$(DATA_DIR)/man/man1/query-hosts-tags.1.scd.1
	scdoc < docs/redis-env.scd               > $(DESTDIR)$(DATA_DIR)/man/man1/redis-env.1.scd.1
	scdoc < docs/tmux-env.scd                > $(DESTDIR)$(DATA_DIR)/man/man1/tmux-env.1.scd.1
	scdoc < docs/weechat-fifo.scd            > $(DESTDIR)$(DATA_DIR)/man/man1/weechat-fifo.1.scd.1

	scdoc < docs/git/git-reauthor.scd        > $(DESTDIR)$(DATA_DIR)/man/man1/git-reauthor.1.scd.1
	scdoc < docs/git/git-run-command.scd     > $(DESTDIR)$(DATA_DIR)/man/man1/git-run-command.1.scd.1
	scdoc < docs/git/git-sed.scd             > $(DESTDIR)$(DATA_DIR)/man/man1/git-sed.1.scd.1
	scdoc < docs/git/git-stamp.scd           > $(DESTDIR)$(DATA_DIR)/man/man1/git-stamp.1.scd.1
	scdoc < docs/git/git-url.scd             > $(DESTDIR)$(DATA_DIR)/man/man1/git-url.1.scd.1

	scdoc < docs/sway/bar_status_mode.scd    > $(DESTDIR)$(DATA_DIR)/man/man1/bar_status_mode.1.scd.1
	scdoc < docs/sway/command_input_exec.scd > $(DESTDIR)$(DATA_DIR)/man/man1/command_input_exec.1.scd.1
	scdoc < docs/sway/notify.scd             > $(DESTDIR)$(DATA_DIR)/man/man1/notify.1.scd.1
