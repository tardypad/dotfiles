all: fontconfig-configs

fontconfig-configs:
	$(start_setup)

	mkdir -p $(DESTDIR)$(CONFIG_DIR)/fontconfig

	$(setup_configs_file)/fontconfig/fonts.conf > $(DESTDIR)$(CONFIG_DIR)/fontconfig/fonts.conf

    # rebuild fonts cache
	if [ -z $(DESTDIR) ] ; then \
		fc-cache -f; \
	fi
