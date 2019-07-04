all: termite
.SILENT: termite

termite:
	$(start_setup)

	mkdir -p $(DESTDIR)$(CONFIG_DIR)/termite

	$(setup_file)/config               > $(DESTDIR)$(CONFIG_DIR)/termite/config
	$(setup_file)/config_launcher      > $(DESTDIR)$(CONFIG_DIR)/termite/config_launcher
	$(setup_file)/config_command_input > $(DESTDIR)$(CONFIG_DIR)/termite/config_command_input

	$(end_setup)
