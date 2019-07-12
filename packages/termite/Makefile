all: termite

termite:
	$(start_setup)

	mkdir -p $(DESTDIR)$(CONFIG_DIR)/termite

	$(setup_packages_file)/config               > $(DESTDIR)$(CONFIG_DIR)/termite/config
	$(setup_packages_file)/config_launcher      > $(DESTDIR)$(CONFIG_DIR)/termite/config_launcher
	$(setup_packages_file)/config_command_input > $(DESTDIR)$(CONFIG_DIR)/termite/config_command_input
