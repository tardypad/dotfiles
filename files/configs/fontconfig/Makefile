all: fontconfig-configs

fontconfig-configs:
	setup/setup-config fontconfig/fonts.conf $(CONFIG_DIR)/fontconfig/fonts.conf

	# rebuild fonts cache
	if [ -z $(DESTDIR) ] ; then \
		fc-cache -f; \
	fi
