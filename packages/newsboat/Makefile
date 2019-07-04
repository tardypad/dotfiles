all: newsboat
.SILENT: newsboat

newsboat:
	$(start_setup)

	mkdir -p $(DESTDIR)$(CONFIG_DIR)/newsboats/config.d

	$(setup_file)/config            > $(DESTDIR)$(CONFIG_DIR)/newsboat/config
	$(setup_file)/urls              > $(DESTDIR)$(CONFIG_DIR)/newsboat/urls
	$(setup_file)/config.d/bindings > $(DESTDIR)$(CONFIG_DIR)/newsboat/config.d/bindings
	$(setup_file)/config.d/general  > $(DESTDIR)$(CONFIG_DIR)/newsboat/config.d/general
	$(setup_file)/config.d/style    > $(DESTDIR)$(CONFIG_DIR)/newsboat/config.d/style

	$(end_setup)
