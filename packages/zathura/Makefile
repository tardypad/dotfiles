all: zathura
.SILENT: zathura

zathura:
	$(start_setup)

	mkdir -p $(DESTDIR)$(CONFIG_DIR)/zathura/config.d

	$(setup_file)/zathurarc               > $(DESTDIR)$(CONFIG_DIR)/zathura/zathurarc
	$(setup_file)/config.d/bindings       > $(DESTDIR)$(CONFIG_DIR)/zathura/config.d/bindings
	$(setup_file)/config.d/clean-bindings > $(DESTDIR)$(CONFIG_DIR)/zathura/config.d/clean-bindings
	$(setup_file)/config.d/general        > $(DESTDIR)$(CONFIG_DIR)/zathura/config.d/general
	$(setup_file)/config.d/style          > $(DESTDIR)$(CONFIG_DIR)/zathura/config.d/style

	$(end_setup)
