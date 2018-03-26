newsboat:
	$(start_setup)

    # create necessary directories
	@mkdir -p "$(CONFIG_DIR)/newsboat"

    # copy config files
	@cp "newsboat/newsboat/urls" "$(CONFIG_DIR)/newsboat/urls"
	@cp "newsboat/newsboat/config" "$(CONFIG_DIR)/newsboat/config"
	@cp --recursive --force --no-target-directory \
		"newsboat/newsboat/conf" "$(CONFIG_DIR)/newsboat/conf"

	$(end_setup)
