all: ncmpcpp-configs

ncmpcpp-configs:
	$(start_setup)

    # create necessary runtime directories
	mkdir -p $(DESTDIR)$(DATA_DIR)/ncmpcpp

	mkdir -p $(DESTDIR)$(CONFIG_DIR)/ncmpcpp

	$(setup_file)/configs/ncmpcpp/config   > $(DESTDIR)$(CONFIG_DIR)/ncmpcpp/config
	$(setup_file)/configs/ncmpcpp/bindings > $(DESTDIR)$(CONFIG_DIR)/ncmpcpp/bindings
