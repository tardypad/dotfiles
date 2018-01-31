systemd:
	@echo -n "… setup systemd"

    # create necessary directories
	@mkdir -p "$(CONFIG_DIR)/systemd/user"

    # copy config files
	@cp --recursive --force --no-target-directory \
		"systemd/user" "$(CONFIG_DIR)/systemd/user"

    # reload daemon
	@systemctl --user daemon-reload

    # enable services and timers
	@systemctl --user enable mopidy.service &> /dev/null
	@systemctl --user enable notify_updates.timer &> /dev/null

	@echo -e "\r✔ setup systemd"
