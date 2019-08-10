all: newsboat-configs

newsboat-configs:
	$(start_setup)

	mkdir -p $(DESTDIR)$(CONFIG_DIR)/newsboat/config.d

	$(setup_configs_file)/newsboat/config            > $(DESTDIR)$(CONFIG_DIR)/newsboat/config
	$(setup_configs_file)/newsboat/urls              > $(DESTDIR)$(CONFIG_DIR)/newsboat/urls
	$(setup_configs_file)/newsboat/config.d/bindings > $(DESTDIR)$(CONFIG_DIR)/newsboat/config.d/bindings
	$(setup_configs_file)/newsboat/config.d/general  > $(DESTDIR)$(CONFIG_DIR)/newsboat/config.d/general
	$(setup_configs_file)/newsboat/config.d/style    > $(DESTDIR)$(CONFIG_DIR)/newsboat/config.d/style
