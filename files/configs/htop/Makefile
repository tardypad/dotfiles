all: htop-configs

htop-configs:
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/htop

	THEME=$(THEME) setup/setup-file configs/htop/htoprc > $(DESTDIR)$(CONFIG_DIR)/htop/htoprc
