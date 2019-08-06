all: xdg-user-dirs

xdg-user-dirs:
	$(start_setup)

	mkdir -p $(DESTDIR)$(CONFIG_DIR)

	$(setup_configs_file)/user-dirs.conf   > $(DESTDIR)$(CONFIG_DIR)/user-dirs.conf
	$(setup_configs_file)/user-dirs.dirs   > $(DESTDIR)$(CONFIG_DIR)/user-dirs.dirs
	$(setup_configs_file)/user-dirs.locale > $(DESTDIR)$(CONFIG_DIR)/user-dirs.locale
