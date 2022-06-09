all: pulsemixer-configs

pulsemixer-configs:
	mkdir -p $(DESTDIR)$(CONFIG_DIR)

	THEME=$(THEME) setup/setup-file configs/pulsemixer/pulsemixer.cfg > $(DESTDIR)$(CONFIG_DIR)/pulsemixer.cfg
