sway:
	@echo -n "… setup sway"

    # create necessary directories
	@mkdir -p "$(CONFIG_DIR)/sway"
	@mkdir -p "$(DATA_DIR)/sway"
	@mkdir -p "$(DATA_DIR)/applications"
	@mkdir -p "$(CONFIG_DIR)/autostart"

    # copy config files
	@cp "sway/config" "${CONFIG_DIR}/sway/config"
	@cp --recursive --force --no-target-directory \
		"sway/config.d" "${CONFIG_DIR}/sway/config.d"
	@cp --recursive --force --no-target-directory \
		"sway/scripts" "${CONFIG_DIR}/sway/scripts"
	@cp --recursive --force --no-target-directory \
		"sway/applications" "${DATA_DIR}/applications"
	@cp --recursive --force --no-target-directory \
		"sway/autostart" "${CONFIG_DIR}/autostart"
	@cp --recursive --force --no-target-directory \
		"sway/images" "${DATA_DIR}/sway/images"

	@echo -e "\r✔ setup sway"
