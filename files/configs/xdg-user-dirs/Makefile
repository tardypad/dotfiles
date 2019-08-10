all: xdg-user-dirs-configs

xdg-user-dirs-configs:
	$(start_setup)

	mkdir -p $(DESTDIR)$(CONFIG_DIR)

	$(setup_configs_file)/xdg-user-dirs/user-dirs.conf   > $(DESTDIR)$(CONFIG_DIR)/user-dirs.conf
	$(setup_configs_file)/xdg-user-dirs/user-dirs.dirs   > $(DESTDIR)$(CONFIG_DIR)/user-dirs.dirs
	$(setup_configs_file)/xdg-user-dirs/user-dirs.locale > $(DESTDIR)$(CONFIG_DIR)/user-dirs.locale
