all: git-configs

git-configs:
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/git/config.d
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/git/template/info

	THEME=$(THEME) setup/setup-file configs/git/config                > $(DESTDIR)$(CONFIG_DIR)/git/config
	THEME=$(THEME) setup/setup-file configs/git/ignore                > $(DESTDIR)$(CONFIG_DIR)/git/ignore
	THEME=$(THEME) setup/setup-file configs/git/config.d/aliases      > $(DESTDIR)$(CONFIG_DIR)/git/config.d/aliases
	THEME=$(THEME) setup/setup-file configs/git/config.d/general      > $(DESTDIR)$(CONFIG_DIR)/git/config.d/general
	THEME=$(THEME) setup/setup-file configs/git/config.d/style        > $(DESTDIR)$(CONFIG_DIR)/git/config.d/style
	THEME=$(THEME) setup/setup-file configs/git/template/info/exclude > $(DESTDIR)$(CONFIG_DIR)/git/template/info/exclude
