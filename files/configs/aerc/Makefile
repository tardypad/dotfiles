all: aerc-configs

aerc-configs:
	setup/setup-config aerc/accounts.conf      $(CONFIG_DIR)/aerc/accounts.conf
	setup/setup-config aerc/aerc.conf          $(CONFIG_DIR)/aerc/aerc.conf
	setup/setup-config aerc/binds.conf         $(CONFIG_DIR)/aerc/binds.conf
	setup/setup-config aerc/signatures/perso   $(CONFIG_DIR)/aerc/signatures/perso
	setup/setup-config aerc/stylesets/tardypad $(CONFIG_DIR)/aerc/stylesets/tardypad

	chmod 600 $(DESTDIR)$(CONFIG_DIR)/aerc/accounts.conf
