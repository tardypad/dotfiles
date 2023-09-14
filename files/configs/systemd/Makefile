all: systemd-configs

systemd-configs:
	setup/setup-config systemd/user/backup_bookmarks.path              $(CONFIG_DIR)/systemd/user/backup_bookmarks.path
	setup/setup-config systemd/user/backup_bookmarks.service           $(CONFIG_DIR)/systemd/user/backup_bookmarks.service
	setup/setup-config systemd/user/backup_notes.path                  $(CONFIG_DIR)/systemd/user/backup_notes.path
	setup/setup-config systemd/user/backup_notes.service               $(CONFIG_DIR)/systemd/user/backup_notes.service
	setup/setup-config systemd/user/backup_time_tracker_logs.path      $(CONFIG_DIR)/systemd/user/backup_time_tracker_logs.path
	setup/setup-config systemd/user/backup_time_tracker_logs.service   $(CONFIG_DIR)/systemd/user/backup_time_tracker_logs.service
	setup/setup-config systemd/user/backup_todo.service                $(CONFIG_DIR)/systemd/user/backup_todo.service
	setup/setup-config systemd/user/backup_todo.path                   $(CONFIG_DIR)/systemd/user/backup_todo.path
	setup/setup-config systemd/user/documentation_build_cache.service  $(CONFIG_DIR)/systemd/user/documentation_build_cache.service
	setup/setup-config systemd/user/documentation_build_cache.timer    $(CONFIG_DIR)/systemd/user/documentation_build_cache.timer
	setup/setup-config systemd/user/documents_build_cache.service      $(CONFIG_DIR)/systemd/user/documents_build_cache.service
	setup/setup-config systemd/user/documents_build_cache.timer        $(CONFIG_DIR)/systemd/user/documents_build_cache.timer
	setup/setup-config systemd/user/notify_low_battery.service         $(CONFIG_DIR)/systemd/user/notify_low_battery.service
	setup/setup-config systemd/user/notify_low_battery.timer           $(CONFIG_DIR)/systemd/user/notify_low_battery.timer
	setup/setup-config systemd/user/poweralertd.service                $(CONFIG_DIR)/systemd/user/poweralertd.service
	setup/setup-config systemd/user/qutebrowser_update_adblock.service $(CONFIG_DIR)/systemd/user/qutebrowser_update_adblock.service
	setup/setup-config systemd/user/qutebrowser_update_adblock.timer   $(CONFIG_DIR)/systemd/user/qutebrowser_update_adblock.timer
	setup/setup-config systemd/user/sync_mails.service                 $(CONFIG_DIR)/systemd/user/sync_mails.service
	setup/setup-config systemd/user/sync_mails.timer                   $(CONFIG_DIR)/systemd/user/sync_mails.timer
	setup/setup-config systemd/user/vdirsyncer.service                 $(CONFIG_DIR)/systemd/user/vdirsyncer.service
	setup/setup-config systemd/user/vdirsyncer.timer                   $(CONFIG_DIR)/systemd/user/vdirsyncer.timer

	# enable paths, timers and services

	mkdir -p $(DESTDIR)$(CONFIG_DIR)/systemd/user/paths.target.wants
	ln -sf ../backup_bookmarks.path               $(DESTDIR)$(CONFIG_DIR)/systemd/user/paths.target.wants/backup_bookmarks.path
	ln -sf ../backup_notes.path                   $(DESTDIR)$(CONFIG_DIR)/systemd/user/paths.target.wants/backup_notes.path
	ln -sf ../backup_time_tracker_logs.path       $(DESTDIR)$(CONFIG_DIR)/systemd/user/paths.target.wants/backup_time_tracker_logs.path
	ln -sf ../backup_todo.path                    $(DESTDIR)$(CONFIG_DIR)/systemd/user/paths.target.wants/backup_todo.path

	mkdir -p $(DESTDIR)$(CONFIG_DIR)/systemd/user/timers.target.wants
	ln -sf ../documentation_build_cache.timer     $(DESTDIR)$(CONFIG_DIR)/systemd/user/timers.target.wants/documentation_build_cache.timer
	ln -sf ../documents_build_cache.timer         $(DESTDIR)$(CONFIG_DIR)/systemd/user/timers.target.wants/documents_build_cache.timer
	ln -sf ../notify_low_battery.timer            $(DESTDIR)$(CONFIG_DIR)/systemd/user/timers.target.wants/notify_low_battery.timer
	ln -sf ../qutebrowser_update_adblock.timer    $(DESTDIR)$(CONFIG_DIR)/systemd/user/timers.target.wants/qutebrowser_update_adblock.timer
	ln -sf ../sync_mails.timer                    $(DESTDIR)$(CONFIG_DIR)/systemd/user/timers.target.wants/sync_mails.timer
	ln -sf ../vdirsyncer.timer                    $(DESTDIR)$(CONFIG_DIR)/systemd/user/timers.target.wants/vdirsyncer.timer

	mkdir -p $(DESTDIR)$(CONFIG_DIR)/systemd/user/default.target.wants
	ln -sf /usr/lib/systemd/user/mpd.service      $(DESTDIR)$(CONFIG_DIR)/systemd/user/default.target.wants/mpd.service
	ln -sf /usr/lib/systemd/user/ydotool.service  $(DESTDIR)$(CONFIG_DIR)/systemd/user/default.target.wants/ydotool.service
	ln -sf ../poweralertd.service                 $(DESTDIR)$(CONFIG_DIR)/systemd/user/default.target.wants/poweralertd.service

	# reload daemon
	if [ -z $(DESTDIR) ] ; then \
		systemctl --user daemon-reload; \
	fi
