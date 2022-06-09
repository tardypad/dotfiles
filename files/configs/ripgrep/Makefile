all: ripgrep-configs

ripgrep-configs:
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/ripgrep

	THEME=$(THEME) setup/setup-file configs/ripgrep/config > $(DESTDIR)$(CONFIG_DIR)/ripgrep/config
