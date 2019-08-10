all: termite-configs

termite-configs:
	$(start_setup)

	mkdir -p $(DESTDIR)$(CONFIG_DIR)/termite

	$(setup_file)/configs/termite/config               > $(DESTDIR)$(CONFIG_DIR)/termite/config
	$(setup_file)/configs/termite/config_launcher      > $(DESTDIR)$(CONFIG_DIR)/termite/config_launcher
	$(setup_file)/configs/termite/config_command_input > $(DESTDIR)$(CONFIG_DIR)/termite/config_command_input
