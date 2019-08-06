all: git

git:
	$(start_setup)

	mkdir -p $(DESTDIR)$(CONFIG_DIR)/git/config.d
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/git/template/info

	$(setup_packages_file)/config                > $(DESTDIR)$(CONFIG_DIR)/git/config
	$(setup_packages_file)/ignore                > $(DESTDIR)$(CONFIG_DIR)/git/ignore
	$(setup_packages_file)/config.d/aliases      > $(DESTDIR)$(CONFIG_DIR)/git/config.d/aliases
	$(setup_packages_file)/config.d/general      > $(DESTDIR)$(CONFIG_DIR)/git/config.d/general
	$(setup_packages_file)/config.d/style        > $(DESTDIR)$(CONFIG_DIR)/git/config.d/style
	$(setup_packages_file)/template/info/exclude > $(DESTDIR)$(CONFIG_DIR)/git/template/info/exclude
