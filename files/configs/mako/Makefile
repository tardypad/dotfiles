all: mako-configs

mako-configs:
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/mako

	THEME=$(THEME) setup/setup-file configs/mako/config > $(DESTDIR)$(CONFIG_DIR)/mako/config
