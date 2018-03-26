neomutt:
	$(start_setup)

    # create necessary runtime directories
	@mkdir --parents $(CACHE_DIR)/neomutt/headers
	@mkdir --parents $(CACHE_DIR)/neomutt/bodies
	@mkdir --parents $(CACHE_DIR)/neomutt/tmp

	$(call copy_file,neomuttrc,$(CONFIG_DIR)/neomutt/neomuttrc)
	$(call copy_folder,conf,$(CONFIG_DIR)/neomutt/conf)

	$(end_setup)
