all: sway-configs

sway-configs:
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/sway/config.d
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/swaynag

	$(setup_file)/configs/sway/config            > $(DESTDIR)$(CONFIG_DIR)/sway/config
	$(setup_file)/configs/sway/config.d/bindings > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/bindings
	$(setup_file)/configs/sway/config.d/general  > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/general
	$(setup_file)/configs/sway/config.d/inputs   > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/inputs
	$(setup_file)/configs/sway/config.d/outputs  > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/outputs
	$(setup_file)/configs/sway/config.d/rules    > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/rules
	$(setup_file)/configs/sway/config.d/style    > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/style
	$(setup_file)/configs/sway/swaynag/config    > $(DESTDIR)$(CONFIG_DIR)/swaynag/config
