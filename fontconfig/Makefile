fontconfig:
	$(start_setup)

	$(call copy_file,fonts.conf,$(CONFIG_DIR)/fontconfig/fonts.conf)

    # rebuild fonts cache
	@fc-cache -f

	$(end_setup)
