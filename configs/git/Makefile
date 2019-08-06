all: git

git:
	$(start_setup)

	mkdir -p $(DESTDIR)$(CONFIG_DIR)/git/config.d
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/git/template/info

	$(setup_configs_file)/config                > $(DESTDIR)$(CONFIG_DIR)/git/config
	$(setup_configs_file)/ignore                > $(DESTDIR)$(CONFIG_DIR)/git/ignore
	$(setup_configs_file)/config.d/aliases      > $(DESTDIR)$(CONFIG_DIR)/git/config.d/aliases
	$(setup_configs_file)/config.d/general      > $(DESTDIR)$(CONFIG_DIR)/git/config.d/general
	$(setup_configs_file)/config.d/style        > $(DESTDIR)$(CONFIG_DIR)/git/config.d/style
	$(setup_configs_file)/template/info/exclude > $(DESTDIR)$(CONFIG_DIR)/git/template/info/exclude
