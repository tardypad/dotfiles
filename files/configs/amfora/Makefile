all: amfora-configs

amfora-configs:
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/amfora

	THEME=$(THEME) setup/setup-file configs/amfora/config.toml > $(DESTDIR)$(CONFIG_DIR)/amfora/config.toml
