all: remind-configs

remind-configs:
	mkdir -p $(DESTDIR)$(HOME)
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/remind

	setup/setup-file configs/remind/reminders         > $(DESTDIR)$(HOME)/.reminders
	setup/setup-file configs/remind/general.rem       > $(DESTDIR)$(CONFIG_DIR)/remind/general.rem
	setup/setup-file configs/remind/notifications.rem > $(DESTDIR)$(CONFIG_DIR)/remind/notifications.rem
