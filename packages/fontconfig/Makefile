fontconfig:
	$(start_setup)

	$(call copy_file,fonts.conf,$(CONFIG_DIR)/fontconfig/fonts.conf)

ifeq ($(IS_LOCAL_INSTALL),'true')
    # rebuild fonts cache
	@fc-cache -f
endif

	$(end_setup)
