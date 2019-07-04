neomutt:
	$(start_setup)

    # create necessary runtime directories
	@mkdir --parents $(DESTDIR)$(CACHE_DIR)/neomutt/headers
	@mkdir --parents $(DESTDIR)$(CACHE_DIR)/neomutt/bodies
	@mkdir --parents $(DESTDIR)$(CACHE_DIR)/neomutt/tmp

	@mkdir -p $(DESTDIR)$(CONFIG_DIR)/neomutt/config.d/accounts
	@mkdir -p $(DESTDIR)$(CONFIG_DIR)/neomutt/config.d/signatures

	$(setup_file)/neomuttrc > $(DESTDIR)$(CONFIG_DIR)/neomutt/neomuttrc
	$(setup_file)/config.d/bindings.mutt > $(DESTDIR)$(CONFIG_DIR)/neomutt/config.d/bindings.mutt
	$(setup_file)/config.d/clean-bindings.mutt > $(DESTDIR)$(CONFIG_DIR)/neomutt/config.d/clean-bindings.mutt
	$(setup_file)/config.d/colors.mutt > $(DESTDIR)$(CONFIG_DIR)/neomutt/config.d/colors.mutt
	$(setup_file)/config.d/general.mutt > $(DESTDIR)$(CONFIG_DIR)/neomutt/config.d/general.mutt
	$(setup_file)/config.d/mailcap > $(DESTDIR)$(CONFIG_DIR)/neomutt/config.d/mailcap
	$(setup_file)/config.d/accounts/gandi.mutt > $(DESTDIR)$(CONFIG_DIR)/neomutt/config.d/accounts/gandi.mutt
	$(setup_file)/config.d/accounts/gmail_perso.mutt > $(DESTDIR)$(CONFIG_DIR)/neomutt/config.d/accounts/gmail_perso.mutt
	$(setup_file)/config.d/accounts/gmail_work.mutt > $(DESTDIR)$(CONFIG_DIR)/neomutt/config.d/accounts/gmail_work.mutt
	$(setup_file)/config.d/signatures/simple > $(DESTDIR)$(CONFIG_DIR)/neomutt/config.d/signatures/simple
	$(setup_file)/config.d/signatures/work > $(DESTDIR)$(CONFIG_DIR)/neomutt/config.d/signatures/work

	$(end_setup)
