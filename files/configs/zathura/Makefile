all: zathura-configs

zathura-configs:
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/zathura/config.d

	$(setup_file)/configs/zathura/zathurarc               > $(DESTDIR)$(CONFIG_DIR)/zathura/zathurarc
	$(setup_file)/configs/zathura/config.d/bindings       > $(DESTDIR)$(CONFIG_DIR)/zathura/config.d/bindings
	$(setup_file)/configs/zathura/config.d/clean-bindings > $(DESTDIR)$(CONFIG_DIR)/zathura/config.d/clean-bindings
	$(setup_file)/configs/zathura/config.d/general        > $(DESTDIR)$(CONFIG_DIR)/zathura/config.d/general
	$(setup_file)/configs/zathura/config.d/style          > $(DESTDIR)$(CONFIG_DIR)/zathura/config.d/style
