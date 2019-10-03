all: fontconfig-configs

fontconfig-configs:
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/fontconfig

	$(setup_file)/configs/fontconfig/fonts.conf > $(DESTDIR)$(CONFIG_DIR)/fontconfig/fonts.conf

    # rebuild fonts cache
	if [ -z $(DESTDIR) ] ; then \
		fc-cache -f; \
	fi
