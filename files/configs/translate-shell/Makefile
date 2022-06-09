all: translate-shell-configs

translate-shell-configs:
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/translate-shell

	THEME=$(THEME) setup/setup-file configs/translate-shell/init.trans > $(DESTDIR)$(CONFIG_DIR)/translate-shell/init.trans
