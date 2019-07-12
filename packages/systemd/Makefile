all: systemd

systemd:
	$(start_setup)

	mkdir -p $(DESTDIR)$(CONFIG_DIR)/systemd/user/paths.target.wants
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/systemd/user/timers.target.wants

	$(setup_packages_file)/user/backup_bookmarks.path              > $(DESTDIR)$(CONFIG_DIR)/systemd/user/backup_bookmarks.path
	$(setup_packages_file)/user/backup_bookmarks.service           > $(DESTDIR)$(CONFIG_DIR)/systemd/user/backup_bookmarks.service
	$(setup_packages_file)/user/backup_notes.path                  > $(DESTDIR)$(CONFIG_DIR)/systemd/user/backup_notes.path
	$(setup_packages_file)/user/backup_notes.service               > $(DESTDIR)$(CONFIG_DIR)/systemd/user/backup_notes.service
	$(setup_packages_file)/user/mopidy.service                     > $(DESTDIR)$(CONFIG_DIR)/systemd/user/mopidy.service
	$(setup_packages_file)/user/notify_low_battery.service         > $(DESTDIR)$(CONFIG_DIR)/systemd/user/notify_low_battery.service
	$(setup_packages_file)/user/notify_low_battery.timer           > $(DESTDIR)$(CONFIG_DIR)/systemd/user/notify_low_battery.timer
	$(setup_packages_file)/user/notify_package_updates.service     > $(DESTDIR)$(CONFIG_DIR)/systemd/user/notify_package_updates.service
	$(setup_packages_file)/user/notify_package_updates.timer       > $(DESTDIR)$(CONFIG_DIR)/systemd/user/notify_package_updates.timer
	$(setup_packages_file)/user/qutebrowser_update_adblock.service > $(DESTDIR)$(CONFIG_DIR)/systemd/user/qutebrowser_update_adblock.service
	$(setup_packages_file)/user/qutebrowser_update_adblock.timer   > $(DESTDIR)$(CONFIG_DIR)/systemd/user/qutebrowser_update_adblock.timer

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
