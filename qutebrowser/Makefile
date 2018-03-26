qutebrowser:
	$(start_setup)

    # create necessary directories
	@mkdir -p "$(CONFIG_DIR)/qutebrowser"

    # copy config files
	@cp "qutebrowser/config.py" "$(CONFIG_DIR)/qutebrowser/config.py"
	@cp --recursive --force --no-target-directory \
		"qutebrowser/config.d" "${CONFIG_DIR}/qutebrowser/config.d"

	$(end_setup)
