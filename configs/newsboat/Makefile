all: newsboat

newsboat:
	$(start_setup)

	mkdir -p $(DESTDIR)$(CONFIG_DIR)/newsboats/config.d

	$(setup_configs_file)/config            > $(DESTDIR)$(CONFIG_DIR)/newsboat/config
	$(setup_configs_file)/urls              > $(DESTDIR)$(CONFIG_DIR)/newsboat/urls
	$(setup_configs_file)/config.d/bindings > $(DESTDIR)$(CONFIG_DIR)/newsboat/config.d/bindings
	$(setup_configs_file)/config.d/general  > $(DESTDIR)$(CONFIG_DIR)/newsboat/config.d/general
	$(setup_configs_file)/config.d/style    > $(DESTDIR)$(CONFIG_DIR)/newsboat/config.d/style
