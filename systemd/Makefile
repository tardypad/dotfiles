systemd:
	$(start_setup)

    # create necessary directories
	@mkdir -p "$(CONFIG_DIR)/systemd/user"

    # copy config files
	@cp --recursive --force --no-target-directory \
		"systemd/user" "$(CONFIG_DIR)/systemd/user"

    # reload daemon
	@systemctl --user daemon-reload

	$(end_setup)
