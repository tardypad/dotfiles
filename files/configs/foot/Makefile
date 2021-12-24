all: foot-configs

foot-configs:
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/foot/config.d

	$(setup_file)/configs/foot/foot.ini              > $(DESTDIR)$(CONFIG_DIR)/foot/foot.ini
	$(setup_file)/configs/foot/config.d/bindings.ini > $(DESTDIR)$(CONFIG_DIR)/foot/config.d/bindings.ini
	$(setup_file)/configs/foot/config.d/general.ini  > $(DESTDIR)$(CONFIG_DIR)/foot/config.d/general.ini
	$(setup_file)/configs/foot/config.d/style.ini    > $(DESTDIR)$(CONFIG_DIR)/foot/config.d/style.ini
