all: sway-configs

sway-configs:
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/sway/config.d
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/swaynag

	setup/setup-file configs/sway/config            > $(DESTDIR)$(CONFIG_DIR)/sway/config
	setup/setup-file configs/sway/config.d/bar      > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/bar
	setup/setup-file configs/sway/config.d/bindings > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/bindings
	setup/setup-file configs/sway/config.d/general  > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/general
	setup/setup-file configs/sway/config.d/inputs   > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/inputs
	setup/setup-file configs/sway/config.d/outputs  > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/outputs
	setup/setup-file configs/sway/config.d/rules    > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/rules
	setup/setup-file configs/sway/config.d/style    > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/style
	setup/setup-file configs/sway/swaynag/config    > $(DESTDIR)$(CONFIG_DIR)/swaynag/config
