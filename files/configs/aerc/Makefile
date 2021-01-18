all: aerc-configs

aerc-configs:
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/aerc/signatures
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/aerc/stylesets

	$(setup_file)/configs/aerc/accounts.conf      > $(DESTDIR)$(CONFIG_DIR)/aerc/accounts.conf
	$(setup_file)/configs/aerc/aerc.conf          > $(DESTDIR)$(CONFIG_DIR)/aerc/aerc.conf
	$(setup_file)/configs/aerc/binds.conf         > $(DESTDIR)$(CONFIG_DIR)/aerc/binds.conf
	$(setup_file)/configs/aerc/signatures/migadu  > $(DESTDIR)$(CONFIG_DIR)/aerc/signatures/migadu
	$(setup_file)/configs/aerc/stylesets/tardypad > $(DESTDIR)$(CONFIG_DIR)/aerc/stylesets/tardypad
