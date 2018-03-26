fontconfig:
	$(start_setup)

    # create necessary directories
	@mkdir -p "$(CONFIG_DIR)/fontconfig"

    # copy config files
	@cp "fontconfig/fonts.conf" "$(CONFIG_DIR)/fontconfig/fonts.conf"

    # rebuild fonts cache
	@fc-cache -f

	$(end_setup)
