all: xdg-utils
.SILENT: xdg-utils

xdg-utils:
	$(start_setup)

	mkdir -p $(DESTDIR)$(CONFIG_DIR)

	$(setup_packages_file)/mimeapps.list > $(DESTDIR)$(CONFIG_DIR)/mimeapps.list

	$(end_setup)
