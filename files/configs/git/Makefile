all: git-configs

git-configs:
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/git/config.d
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/git/template/info

	$(setup_file)/configs/git/config                > $(DESTDIR)$(CONFIG_DIR)/git/config
	$(setup_file)/configs/git/ignore                > $(DESTDIR)$(CONFIG_DIR)/git/ignore
	$(setup_file)/configs/git/config.d/aliases      > $(DESTDIR)$(CONFIG_DIR)/git/config.d/aliases
	$(setup_file)/configs/git/config.d/general      > $(DESTDIR)$(CONFIG_DIR)/git/config.d/general
	$(setup_file)/configs/git/config.d/style        > $(DESTDIR)$(CONFIG_DIR)/git/config.d/style
	$(setup_file)/configs/git/template/info/exclude > $(DESTDIR)$(CONFIG_DIR)/git/template/info/exclude
