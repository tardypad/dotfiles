all: swayidle-configs

swayidle-configs:
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/swayidle

	THEME=$(THEME) setup/setup-file configs/swayidle/config > $(DESTDIR)$(CONFIG_DIR)/swayidle/config
