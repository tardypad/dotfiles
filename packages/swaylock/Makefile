all: swaylock
.SILENT: swaylock

swaylock:
	$(start_setup)

	$(setup_packages_file)/config > $(DESTDIR)$(CONFIG_DIR)/swaylock/config

	$(end_setup)
