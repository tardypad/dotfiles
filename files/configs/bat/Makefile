all: bat-configs

bat-configs:
	setup/setup-config bat/config                  $(CONFIG_DIR)/bat/config
	setup/setup-config bat/themes/tardypad.tmTheme $(CONFIG_DIR)/bat/themes/tardypad.tmTheme

	# rebuild theme
	if [ -z $(DESTDIR) ] ; then \
		bat cache --build; \
	fi
