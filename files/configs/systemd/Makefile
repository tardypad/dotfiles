all: systemd-configs

systemd-configs:
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/systemd/user/default.target.wants
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/systemd/user/paths.target.wants
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/systemd/user/timers.target.wants

	$(setup_file)/configs/systemd/user/backup_bookmarks.path              > $(DESTDIR)$(CONFIG_DIR)/systemd/user/backup_bookmarks.path
	$(setup_file)/configs/systemd/user/backup_bookmarks.service           > $(DESTDIR)$(CONFIG_DIR)/systemd/user/backup_bookmarks.service
	$(setup_file)/configs/systemd/user/backup_contacts.path               > $(DESTDIR)$(CONFIG_DIR)/systemd/user/backup_contacts.path
	$(setup_file)/configs/systemd/user/backup_contacts.service            > $(DESTDIR)$(CONFIG_DIR)/systemd/user/backup_contacts.service
	$(setup_file)/configs/systemd/user/backup_notes.path                  > $(DESTDIR)$(CONFIG_DIR)/systemd/user/backup_notes.path
	$(setup_file)/configs/systemd/user/backup_notes.service               > $(DESTDIR)$(CONFIG_DIR)/systemd/user/backup_notes.service
	$(setup_file)/configs/systemd/user/backup_time_tracker_logs.path      > $(DESTDIR)$(CONFIG_DIR)/systemd/user/backup_time_tracker_logs.path
	$(setup_file)/configs/systemd/user/backup_time_tracker_logs.service   > $(DESTDIR)$(CONFIG_DIR)/systemd/user/backup_time_tracker_logs.service
	$(setup_file)/configs/systemd/user/notify_break.service               > $(DESTDIR)$(CONFIG_DIR)/systemd/user/notify_break.service
	$(setup_file)/configs/systemd/user/notify_break.timer                 > $(DESTDIR)$(CONFIG_DIR)/systemd/user/notify_break.timer
	$(setup_file)/configs/systemd/user/notify_low_battery.service         > $(DESTDIR)$(CONFIG_DIR)/systemd/user/notify_low_battery.service
	$(setup_file)/configs/systemd/user/notify_low_battery.timer           > $(DESTDIR)$(CONFIG_DIR)/systemd/user/notify_low_battery.timer
	$(setup_file)/configs/systemd/user/qutebrowser_update_adblock.service > $(DESTDIR)$(CONFIG_DIR)/systemd/user/qutebrowser_update_adblock.service
	$(setup_file)/configs/systemd/user/qutebrowser_update_adblock.timer   > $(DESTDIR)$(CONFIG_DIR)/systemd/user/qutebrowser_update_adblock.timer

	# enable paths, timers and services
	ln -sf ../backup_bookmarks.path              $(DESTDIR)$(CONFIG_DIR)/systemd/user/paths.target.wants/backup_bookmarks.path
	ln -sf ../backup_contacts.path               $(DESTDIR)$(CONFIG_DIR)/systemd/user/paths.target.wants/backup_contacts.path
	ln -sf ../backup_notes.path                  $(DESTDIR)$(CONFIG_DIR)/systemd/user/paths.target.wants/backup_notes.path
	ln -sf ../backup_time_tracker_logs.path      $(DESTDIR)$(CONFIG_DIR)/systemd/user/paths.target.wants/backup_time_tracker_logs.path
	ln -sf ../notify_break.timer                 $(DESTDIR)$(CONFIG_DIR)/systemd/user/timers.target.wants/notify_break.timer
	ln -sf ../notify_low_battery.timer           $(DESTDIR)$(CONFIG_DIR)/systemd/user/timers.target.wants/notify_low_battery.timer
	ln -sf ../qutebrowser_update_adblock.timer   $(DESTDIR)$(CONFIG_DIR)/systemd/user/timers.target.wants/qutebrowser_update_adblock.timer
	ln -sf /usr/lib/systemd/user/mpd.service     $(DESTDIR)$(CONFIG_DIR)/systemd/user/default.target.wants/mpd.service
	ln -sf /usr/lib/systemd/user/ydotool.service $(DESTDIR)$(CONFIG_DIR)/systemd/user/default.target.wants/ydotool.service

	# reload daemon
	if [ -z $(DESTDIR) ] ; then \
		systemctl --user daemon-reload; \
	fi
