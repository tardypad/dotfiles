all: remind-configs

remind-configs:
	mkdir -p $(DESTDIR)$(HOME)
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/remind

	$(setup_file)/configs/remind/reminders         > $(DESTDIR)$(HOME)/.reminders
	$(setup_file)/configs/remind/general.rem       > $(DESTDIR)$(CONFIG_DIR)/remind/general.rem
	$(setup_file)/configs/remind/notifications.rem > $(DESTDIR)$(CONFIG_DIR)/remind/notifications.rem
