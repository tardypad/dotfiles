all: aerc-configs

aerc-configs:
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/aerc/signatures
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/aerc/stylesets

	setup/setup-file configs/aerc/accounts.conf      > $(DESTDIR)$(CONFIG_DIR)/aerc/accounts.conf
	setup/setup-file configs/aerc/aerc.conf          > $(DESTDIR)$(CONFIG_DIR)/aerc/aerc.conf
	setup/setup-file configs/aerc/binds.conf         > $(DESTDIR)$(CONFIG_DIR)/aerc/binds.conf
	setup/setup-file configs/aerc/signatures/perso   > $(DESTDIR)$(CONFIG_DIR)/aerc/signatures/perso
	setup/setup-file configs/aerc/stylesets/tardypad > $(DESTDIR)$(CONFIG_DIR)/aerc/stylesets/tardypad

	chmod 600 $(DESTDIR)$(CONFIG_DIR)/aerc/accounts.conf
