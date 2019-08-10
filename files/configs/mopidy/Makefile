all: mopidy-configs

mopidy-configs:
	$(start_setup)

	mkdir -p $(DESTDIR)$(CONFIG_DIR)/mopidy

	$(setup_file)/configs/mopidy/mopidy.conf > $(DESTDIR)$(CONFIG_DIR)/mopidy/mopidy.conf
