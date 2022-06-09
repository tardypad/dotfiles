all: zathura-configs

zathura-configs:
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/zathura/config.d

	THEME=$(THEME) setup/setup-file configs/zathura/zathurarc               > $(DESTDIR)$(CONFIG_DIR)/zathura/zathurarc
	THEME=$(THEME) setup/setup-file configs/zathura/config.d/bindings       > $(DESTDIR)$(CONFIG_DIR)/zathura/config.d/bindings
	THEME=$(THEME) setup/setup-file configs/zathura/config.d/clean-bindings > $(DESTDIR)$(CONFIG_DIR)/zathura/config.d/clean-bindings
	THEME=$(THEME) setup/setup-file configs/zathura/config.d/general        > $(DESTDIR)$(CONFIG_DIR)/zathura/config.d/general
	THEME=$(THEME) setup/setup-file configs/zathura/config.d/style          > $(DESTDIR)$(CONFIG_DIR)/zathura/config.d/style
