sway:
	@echo -n "… setup sway"

    # create necessary directories
	@mkdir -p "$(CONFIG_DIR)/sway"
	@mkdir -p "$(DATA_DIR)/sway"

    # copy config files
	@cp "sway/config" "${CONFIG_DIR}/sway/config"
	@cp --recursive --force --no-target-directory \
		"sway/config.d" "${CONFIG_DIR}/sway/config.d"
	@cp "sway/autostart" "${CONFIG_DIR}/sway/autostart"
	@cp --recursive --force --no-target-directory \
		"sway/scripts" "${CONFIG_DIR}/sway/scripts"
	@cp "sway/wallpaper.jpg" "${DATA_DIR}/sway/wallpaper.jpg"
	@cp "sway/wallpaper-lock.jpg" "${DATA_DIR}/sway/wallpaper-lock.jpg"

	@echo -e "\r✔ setup sway"
