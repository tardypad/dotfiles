neomutt:
	$(start_setup)

    # create necessary directories
	@mkdir -p "$(CONFIG_DIR)/neomutt"
	@mkdir -p "$(CACHE_DIR)/neomutt/"{headers,bodies,tmp}

    # copy config files
	@cp "neomutt/neomuttrc" "$(CONFIG_DIR)/neomutt/neomuttrc"
	@cp --recursive --force --no-target-directory \
		"neomutt/conf" "$(CONFIG_DIR)/neomutt/conf"

	$(end_setup)
