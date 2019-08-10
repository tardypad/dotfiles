all: neomutt-configs

neomutt-configs:
	$(start_setup)

    # create necessary runtime directories
	mkdir -p $(DESTDIR)$(CACHE_DIR)/neomutt/headers
	mkdir -p $(DESTDIR)$(CACHE_DIR)/neomutt/bodies
	mkdir -p $(DESTDIR)$(CACHE_DIR)/neomutt/tmp

	mkdir -p $(DESTDIR)$(CONFIG_DIR)/neomutt/config.d/accounts
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/neomutt/config.d/signatures

	$(setup_configs_file)/neomutt/neomuttrc                     > $(DESTDIR)$(CONFIG_DIR)/neomutt/neomuttrc
	$(setup_configs_file)/neomutt/config.d/bindings.mutt        > $(DESTDIR)$(CONFIG_DIR)/neomutt/config.d/bindings.mutt
	$(setup_configs_file)/neomutt/config.d/clean-bindings.mutt  > $(DESTDIR)$(CONFIG_DIR)/neomutt/config.d/clean-bindings.mutt
	$(setup_configs_file)/neomutt/config.d/colors.mutt          > $(DESTDIR)$(CONFIG_DIR)/neomutt/config.d/colors.mutt
	$(setup_configs_file)/neomutt/config.d/general.mutt         > $(DESTDIR)$(CONFIG_DIR)/neomutt/config.d/general.mutt
	$(setup_configs_file)/neomutt/config.d/mailcap              > $(DESTDIR)$(CONFIG_DIR)/neomutt/config.d/mailcap
	$(setup_configs_file)/neomutt/config.d/accounts/migadu.mutt > $(DESTDIR)$(CONFIG_DIR)/neomutt/config.d/accounts/migadu.mutt
	$(setup_configs_file)/neomutt/config.d/accounts/gmail.mutt  > $(DESTDIR)$(CONFIG_DIR)/neomutt/config.d/accounts/gmail.mutt
	$(setup_configs_file)/neomutt/config.d/accounts/work.mutt   > $(DESTDIR)$(CONFIG_DIR)/neomutt/config.d/accounts/work.mutt
	$(setup_configs_file)/neomutt/config.d/signatures/simple    > $(DESTDIR)$(CONFIG_DIR)/neomutt/config.d/signatures/simple
	$(setup_configs_file)/neomutt/config.d/signatures/work      > $(DESTDIR)$(CONFIG_DIR)/neomutt/config.d/signatures/work
