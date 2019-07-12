all: libqalculate

libqalculate:
	$(start_setup)

	mkdir -p $(DESTDIR)$(CONFIG_DIR)/qalculate

	$(setup_packages_file)/qalc.cfg > $(DESTDIR)$(CONFIG_DIR)/qalculate/qalc.cfg

	$(end_setup)
