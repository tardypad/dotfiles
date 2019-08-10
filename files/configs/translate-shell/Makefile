all: translate-shell-configs

translate-shell-configs:
	$(start_setup)

	mkdir -p $(DESTDIR)$(CONFIG_DIR)/translate-shell

	$(setup_file)/configs/translate-shell/init.trans > $(DESTDIR)$(CONFIG_DIR)/translate-shell/init.trans
