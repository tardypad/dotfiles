all: httpie-configs

httpie-configs:
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/httpie

	THEME=$(THEME) setup/setup-file configs/httpie/config.json > $(DESTDIR)$(CONFIG_DIR)/httpie/config.json
