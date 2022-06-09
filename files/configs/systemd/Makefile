all: systemd-configs

systemd-configs:
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/systemd/user/default.target.wants
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/systemd/user/paths.target.wants
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/systemd/user/timers.target.wants

	THEME=$(THEME) setup/setup-file configs/systemd/user/backup_bookmarks.path              > $(DESTDIR)$(CONFIG_DIR)/systemd/user/backup_bookmarks.path
	THEME=$(THEME) setup/setup-file configs/systemd/user/backup_bookmarks.service           > $(DESTDIR)$(CONFIG_DIR)/systemd/user/backup_bookmarks.service
	THEME=$(THEME) setup/setup-file configs/systemd/user/backup_notes.path                  > $(DESTDIR)$(CONFIG_DIR)/systemd/user/backup_notes.path
	THEME=$(THEME) setup/setup-file configs/systemd/user/backup_notes.service               > $(DESTDIR)$(CONFIG_DIR)/systemd/user/backup_notes.service
	THEME=$(THEME) setup/setup-file configs/systemd/user/backup_time_tracker_logs.path      > $(DESTDIR)$(CONFIG_DIR)/systemd/user/backup_time_tracker_logs.path
	THEME=$(THEME) setup/setup-file configs/systemd/user/backup_time_tracker_logs.service   > $(DESTDIR)$(CONFIG_DIR)/systemd/user/backup_time_tracker_logs.service
	THEME=$(THEME) setup/setup-file configs/systemd/user/backup_todo.service                > $(DESTDIR)$(CONFIG_DIR)/systemd/user/backup_todo.service
	THEME=$(THEME) setup/setup-file configs/systemd/user/backup_todo.path                   > $(DESTDIR)$(CONFIG_DIR)/systemd/user/backup_todo.path
	THEME=$(THEME) setup/setup-file configs/systemd/user/documentation_build_cache.service  > $(DESTDIR)$(CONFIG_DIR)/systemd/user/documentation_build_cache.service
	THEME=$(THEME) setup/setup-file configs/systemd/user/documentation_build_cache.timer    > $(DESTDIR)$(CONFIG_DIR)/systemd/user/documentation_build_cache.timer
	THEME=$(THEME) setup/setup-file configs/systemd/user/documents_build_cache.service      > $(DESTDIR)$(CONFIG_DIR)/systemd/user/documents_build_cache.service
	THEME=$(THEME) setup/setup-file configs/systemd/user/documents_build_cache.timer        > $(DESTDIR)$(CONFIG_DIR)/systemd/user/documents_build_cache.timer
	THEME=$(THEME) setup/setup-file configs/systemd/user/notify_low_battery.service         > $(DESTDIR)$(CONFIG_DIR)/systemd/user/notify_low_battery.service
	THEME=$(THEME) setup/setup-file configs/systemd/user/notify_low_battery.timer           > $(DESTDIR)$(CONFIG_DIR)/systemd/user/notify_low_battery.timer
	THEME=$(THEME) setup/setup-file configs/systemd/user/qutebrowser_update_adblock.service > $(DESTDIR)$(CONFIG_DIR)/systemd/user/qutebrowser_update_adblock.service
	THEME=$(THEME) setup/setup-file configs/systemd/user/qutebrowser_update_adblock.timer   > $(DESTDIR)$(CONFIG_DIR)/systemd/user/qutebrowser_update_adblock.timer
	THEME=$(THEME) setup/setup-file configs/systemd/user/vdirsyncer.service                 > $(DESTDIR)$(CONFIG_DIR)/systemd/user/vdirsyncer.service
	THEME=$(THEME) setup/setup-file configs/systemd/user/vdirsyncer.timer                   > $(DESTDIR)$(CONFIG_DIR)/systemd/user/vdirsyncer.timer

	# enable paths, timers and services
	ln -sf ../backup_bookmarks.path               $(DESTDIR)$(CONFIG_DIR)/systemd/user/paths.target.wants/backup_bookmarks.path
	ln -sf ../backup_notes.path                   $(DESTDIR)$(CONFIG_DIR)/systemd/user/paths.target.wants/backup_notes.path
	ln -sf ../backup_time_tracker_logs.path       $(DESTDIR)$(CONFIG_DIR)/systemd/user/paths.target.wants/backup_time_tracker_logs.path
	ln -sf ../backup_todo.path                    $(DESTDIR)$(CONFIG_DIR)/systemd/user/paths.target.wants/backup_todo.path
	ln -sf ../documentation_build_cache.timer     $(DESTDIR)$(CONFIG_DIR)/systemd/user/timers.target.wants/documentation_build_cache.timer
	ln -sf ../documents_build_cache.timer         $(DESTDIR)$(CONFIG_DIR)/systemd/user/timers.target.wants/documents_build_cache.timer
	ln -sf ../notify_low_battery.timer            $(DESTDIR)$(CONFIG_DIR)/systemd/user/timers.target.wants/notify_low_battery.timer
	ln -sf ../qutebrowser_update_adblock.timer    $(DESTDIR)$(CONFIG_DIR)/systemd/user/timers.target.wants/qutebrowser_update_adblock.timer
	ln -sf ../vdirsyncer.timer                    $(DESTDIR)$(CONFIG_DIR)/systemd/user/timers.target.wants/vdirsyncer.timer
	ln -sf /usr/lib/systemd/user/mpd.service      $(DESTDIR)$(CONFIG_DIR)/systemd/user/default.target.wants/mpd.service
	ln -sf /usr/lib/systemd/user/ydotool.service  $(DESTDIR)$(CONFIG_DIR)/systemd/user/default.target.wants/ydotool.service

	# reload daemon
	if [ -z $(DESTDIR) ] ; then \
		systemctl --user daemon-reload; \
	fi
