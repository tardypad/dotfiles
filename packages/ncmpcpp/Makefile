.SILENT: ncmpcpp

ncmpcpp:
	$(start_setup)

    # create necessary runtime directories
	mkdir --parents $(DESTDIR)$(DATA_DIR)/ncmpcpp

	mkdir -p $(DESTDIR)$(CONFIG_DIR)/ncmpcpp

	$(setup_file)/config > $(DESTDIR)$(CONFIG_DIR)/ncmpcpp/config
	$(setup_file)/bindings > $(DESTDIR)$(CONFIG_DIR)/ncmpcpp/bindings

	$(end_setup)
