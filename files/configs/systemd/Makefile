all: systemd-configs

systemd-configs:
	$(start_setup)

	mkdir -p $(DESTDIR)$(CONFIG_DIR)/systemd/user/paths.target.wants
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/systemd/user/timers.target.wants

	$(setup_configs_file)/systemd/user/backup_bookmarks.path              > $(DESTDIR)$(CONFIG_DIR)/systemd/user/backup_bookmarks.path
	$(setup_configs_file)/systemd/user/backup_bookmarks.service           > $(DESTDIR)$(CONFIG_DIR)/systemd/user/backup_bookmarks.service
	$(setup_configs_file)/systemd/user/backup_notes.path                  > $(DESTDIR)$(CONFIG_DIR)/systemd/user/backup_notes.path
	$(setup_configs_file)/systemd/user/backup_notes.service               > $(DESTDIR)$(CONFIG_DIR)/systemd/user/backup_notes.service
	$(setup_configs_file)/systemd/user/mopidy.service                     > $(DESTDIR)$(CONFIG_DIR)/systemd/user/mopidy.service
	$(setup_configs_file)/systemd/user/notify_low_battery.service         > $(DESTDIR)$(CONFIG_DIR)/systemd/user/notify_low_battery.service
	$(setup_configs_file)/systemd/user/notify_low_battery.timer           > $(DESTDIR)$(CONFIG_DIR)/systemd/user/notify_low_battery.timer
	$(setup_configs_file)/systemd/user/notify_package_updates.service     > $(DESTDIR)$(CONFIG_DIR)/systemd/user/notify_package_updates.service
	$(setup_configs_file)/systemd/user/notify_package_updates.timer       > $(DESTDIR)$(CONFIG_DIR)/systemd/user/notify_package_updates.timer
	$(setup_configs_file)/systemd/user/qutebrowser_update_adblock.service > $(DESTDIR)$(CONFIG_DIR)/systemd/user/qutebrowser_update_adblock.service
	$(setup_configs_file)/systemd/user/qutebrowser_update_adblock.timer   > $(DESTDIR)$(CONFIG_DIR)/systemd/user/qutebrowser_update_adblock.timer

    # enable paths and timers
	ln -sf ../backup_bookmarks.path            $(DESTDIR)$(CONFIG_DIR)/systemd/user/paths.target.wants/backup_bookmarks.path
	ln -sf ../backup_notes.path                $(DESTDIR)$(CONFIG_DIR)/systemd/user/paths.target.wants/backup_notes.path
	ln -sf ../notify_low_battery.timer         $(DESTDIR)$(CONFIG_DIR)/systemd/user/timers.target.wants/notify_low_battery.timer
	ln -sf ../notify_package_updates.timer     $(DESTDIR)$(CONFIG_DIR)/systemd/user/timers.target.wants/notify_package_updates.timer
	ln -sf ../qutebrowser_update_adblock.timer $(DESTDIR)$(CONFIG_DIR)/systemd/user/timers.target.wants/qutebrowser_update_adblock.timer

    # reload daemon
	if [ -z $(DESTDIR) ] ; then \
		systemctl --user daemon-reload; \
	fi
