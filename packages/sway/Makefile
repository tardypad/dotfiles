all: sway

sway:
	$(start_setup)

	mkdir -p $(DESTDIR)$(CONFIG_DIR)/sway/config.d
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/swaynag

	$(setup_packages_file)/config            > $(DESTDIR)$(CONFIG_DIR)/sway/config
	$(setup_packages_file)/config.d/bar      > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/bar
	$(setup_packages_file)/config.d/bindings > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/bindings
	$(setup_packages_file)/config.d/general  > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/general
	$(setup_packages_file)/config.d/inputs   > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/inputs
	$(setup_packages_file)/config.d/outputs  > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/outputs
	$(setup_packages_file)/config.d/rules    > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/rules
	$(setup_packages_file)/config.d/style    > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/style
	$(setup_packages_file)/swaynag/config    > $(DESTDIR)$(CONFIG_DIR)/swaynag/config
