all: mopidy
.SILENT: mopidy

mopidy:
	$(start_setup)

	mkdir -p $(DESTDIR)$(CONFIG_DIR)/mopidy

	$(setup_file)/mopidy.conf > $(DESTDIR)$(CONFIG_DIR)/mopidy/mopidy.conf

	$(end_setup)
