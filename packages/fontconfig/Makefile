all: fontconfig

fontconfig:
	$(start_setup)

	mkdir -p $(DESTDIR)$(CONFIG_DIR)/fontconfig

	$(setup_packages_file)/fonts.conf > $(DESTDIR)$(CONFIG_DIR)/fontconfig/fonts.conf

    # rebuild fonts cache
	if [ -z $(DESTDIR) ] ; then \
		fc-cache -f; \
	fi
