all: vifm
.SILENT: vifm

vifm:
	$(start_setup)

	mkdir -p $(DESTDIR)$(CONFIG_DIR)/vifm/colors

	$(setup_packages_file)/vifmrc               > $(DESTDIR)$(CONFIG_DIR)/vifm/vifmrc
	$(setup_packages_file)/colors/tardypad.vifm > $(DESTDIR)$(CONFIG_DIR)/vifm/colors/tardypad.vifm

	$(end_setup)
