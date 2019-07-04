all: translate-shell
.SILENT: translate-shell

translate-shell:
	$(start_setup)

	mkdir -p $(DESTDIR)$(CONFIG_DIR)/translate-shell

	$(setup_file)/init.trans > $(DESTDIR)$(CONFIG_DIR)/translate-shell/init.trans

	$(end_setup)
