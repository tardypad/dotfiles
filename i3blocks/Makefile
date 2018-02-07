i3blocks:
	@echo -n "… setup i3blocks"

    # create necessary directories
	@mkdir -p "$(CONFIG_DIR)/i3blocks"

    # copy config files
	@cp "i3blocks/config" "${CONFIG_DIR}/i3blocks/config"
	@cp --recursive --force --no-target-directory \
		"i3blocks/scripts" "$(CONFIG_DIR)/i3blocks/scripts"

	@echo -e "\r✔ setup i3blocks"
