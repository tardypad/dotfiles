fontconfig:
	@echo -n "… setup fontconfig"

    # create necessary directories
	@mkdir -p "$(CONFIG_DIR)/fontconfig"

    # copy config files
	@cp "fontconfig/fonts.conf" "$(CONFIG_DIR)/fontconfig/fonts.conf"

    # rebuild fonts cache
	@fc-cache -f

	@echo -e "\r✔ setup fontconfig"
