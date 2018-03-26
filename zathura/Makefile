zathura:
	$(start_setup)

    # create necessary directories
	@mkdir -p "$(CONFIG_DIR)/zathura"

    # copy config files
	@cp "zathura/zathurarc" "$(CONFIG_DIR)/zathura/zathurarc"
	@cp --recursive --force --no-target-directory \
		"zathura/config.d" "$(CONFIG_DIR)/zathura/config.d"

	$(end_setup)
