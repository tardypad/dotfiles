all: swaylock
.SILENT: swaylock

swaylock:
	$(start_setup)

	mkdir -p $(DESTDIR)$(CONFIG_DIR)/swaylock/images

	$(setup_file)/config > $(DESTDIR)$(CONFIG_DIR)/swaylock/config
	$(setup_file)/images/lock.svg > $(DESTDIR)$(CONFIG_DIR)/swaylock/images/lock.svg

	$(end_setup)
