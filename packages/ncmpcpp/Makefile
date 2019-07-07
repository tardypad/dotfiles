all: ncmpcpp
.SILENT: ncmpcpp

ncmpcpp:
	$(start_setup)

    # create necessary runtime directories
	mkdir -p $(DESTDIR)$(DATA_DIR)/ncmpcpp

	mkdir -p $(DESTDIR)$(CONFIG_DIR)/ncmpcpp

	$(setup_packages_file)/config   > $(DESTDIR)$(CONFIG_DIR)/ncmpcpp/config
	$(setup_packages_file)/bindings > $(DESTDIR)$(CONFIG_DIR)/ncmpcpp/bindings

	$(end_setup)
