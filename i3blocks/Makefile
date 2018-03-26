i3blocks:
	$(start_setup)

    # create necessary directories
	@mkdir -p "$(CONFIG_DIR)/i3blocks"

    # copy config files
	@cp "i3blocks/config" "${CONFIG_DIR}/i3blocks/config"
	@cp --recursive --force --no-target-directory \
		"i3blocks/scripts" "$(CONFIG_DIR)/i3blocks/scripts"
	@cp --recursive --force --no-target-directory \
		"i3blocks/sounds" "$(CONFIG_DIR)/i3blocks/sounds"

	$(end_setup)
