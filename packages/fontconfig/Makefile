all: fontconfig
.SILENT: fontconfig

fontconfig:
	$(start_setup)

	mkdir -p $(DESTDIR)$(CONFIG_DIR)/fontconfig

	$(setup_file)/fonts.conf > $(DESTDIR)$(CONFIG_DIR)/fontconfig/fonts.conf

ifeq ($(IS_LOCAL_INSTALL),'true')
    # rebuild fonts cache
	fc-cache -f
endif

	$(end_setup)
