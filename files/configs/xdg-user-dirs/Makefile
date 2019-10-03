all: xdg-user-dirs-configs

xdg-user-dirs-configs:
	mkdir -p $(DESTDIR)$(CONFIG_DIR)

	$(setup_file)/configs/xdg-user-dirs/user-dirs.conf   > $(DESTDIR)$(CONFIG_DIR)/user-dirs.conf
	$(setup_file)/configs/xdg-user-dirs/user-dirs.dirs   > $(DESTDIR)$(CONFIG_DIR)/user-dirs.dirs
	$(setup_file)/configs/xdg-user-dirs/user-dirs.locale > $(DESTDIR)$(CONFIG_DIR)/user-dirs.locale
