all: sway-configs

sway-configs:
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/sway/config.d
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/swaynag

	THEME=$(THEME) setup/setup-file configs/sway/config            > $(DESTDIR)$(CONFIG_DIR)/sway/config
	THEME=$(THEME) setup/setup-file configs/sway/config.d/bar      > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/bar
	THEME=$(THEME) setup/setup-file configs/sway/config.d/bindings > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/bindings
	THEME=$(THEME) setup/setup-file configs/sway/config.d/general  > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/general
	THEME=$(THEME) setup/setup-file configs/sway/config.d/inputs   > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/inputs
	THEME=$(THEME) setup/setup-file configs/sway/config.d/outputs  > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/outputs
	THEME=$(THEME) setup/setup-file configs/sway/config.d/rules    > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/rules
	THEME=$(THEME) setup/setup-file configs/sway/config.d/style    > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/style
	THEME=$(THEME) setup/setup-file configs/sway/swaynag/config    > $(DESTDIR)$(CONFIG_DIR)/swaynag/config
