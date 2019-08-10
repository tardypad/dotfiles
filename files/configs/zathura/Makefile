all: zathura-configs

zathura-configs:
	$(start_setup)

	mkdir -p $(DESTDIR)$(CONFIG_DIR)/zathura/config.d

	$(setup_configs_file)/zathura/zathurarc               > $(DESTDIR)$(CONFIG_DIR)/zathura/zathurarc
	$(setup_configs_file)/zathura/config.d/bindings       > $(DESTDIR)$(CONFIG_DIR)/zathura/config.d/bindings
	$(setup_configs_file)/zathura/config.d/clean-bindings > $(DESTDIR)$(CONFIG_DIR)/zathura/config.d/clean-bindings
	$(setup_configs_file)/zathura/config.d/general        > $(DESTDIR)$(CONFIG_DIR)/zathura/config.d/general
	$(setup_configs_file)/zathura/config.d/style          > $(DESTDIR)$(CONFIG_DIR)/zathura/config.d/style
