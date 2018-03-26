xdg-user-dirs:
	$(start_setup)

    # create necessary directories
	@mkdir -p "$(CONFIG_DIR)"

    # copy config files
	@cp "xdg-user-dirs/user-dirs.dirs" "$(CONFIG_DIR)/user-dirs.dirs"
	@cp "xdg-user-dirs/user-dirs.locale" "$(CONFIG_DIR)/user-dirs.locale"

	$(end_setup)
