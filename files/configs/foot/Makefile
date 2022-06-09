all: foot-configs

foot-configs:
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/foot/config.d

	setup/setup-file configs/foot/foot.ini              > $(DESTDIR)$(CONFIG_DIR)/foot/foot.ini
	setup/setup-file configs/foot/config.d/bindings.ini > $(DESTDIR)$(CONFIG_DIR)/foot/config.d/bindings.ini
	setup/setup-file configs/foot/config.d/general.ini  > $(DESTDIR)$(CONFIG_DIR)/foot/config.d/general.ini
	setup/setup-file configs/foot/config.d/style.ini    > $(DESTDIR)$(CONFIG_DIR)/foot/config.d/style.ini
