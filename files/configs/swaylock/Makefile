all: swaylock-configs

swaylock-configs:
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/swaylock

	THEME=$(THEME) setup/setup-file configs/swaylock/config > $(DESTDIR)$(CONFIG_DIR)/swaylock/config
