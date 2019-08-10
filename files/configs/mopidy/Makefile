all: mopidy-configs

mopidy-configs:
	$(start_setup)

	mkdir -p $(DESTDIR)$(CONFIG_DIR)/mopidy

	$(setup_configs_file)/mopidy/mopidy.conf > $(DESTDIR)$(CONFIG_DIR)/mopidy/mopidy.conf
