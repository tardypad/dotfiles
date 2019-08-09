all: sway

sway:
	$(start_setup)

	mkdir -p $(DESTDIR)$(CONFIG_DIR)/sway/config.d
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/swaynag

	$(setup_configs_file)/config            > $(DESTDIR)$(CONFIG_DIR)/sway/config
	$(setup_configs_file)/config.d/bar      > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/bar
	$(setup_configs_file)/config.d/bindings > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/bindings
	$(setup_configs_file)/config.d/general  > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/general
	$(setup_configs_file)/config.d/inputs   > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/inputs
	$(setup_configs_file)/config.d/outputs  > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/outputs
	$(setup_configs_file)/config.d/rules    > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/rules
	$(setup_configs_file)/config.d/style    > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/style
	$(setup_configs_file)/swaynag/config    > $(DESTDIR)$(CONFIG_DIR)/swaynag/config
