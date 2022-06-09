all: remind-configs

remind-configs:
	mkdir -p $(DESTDIR)$(HOME)
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/remind

	THEME=$(THEME) setup/setup-file configs/remind/reminders         > $(DESTDIR)$(HOME)/.reminders
	THEME=$(THEME) setup/setup-file configs/remind/general.rem       > $(DESTDIR)$(CONFIG_DIR)/remind/general.rem
	THEME=$(THEME) setup/setup-file configs/remind/notifications.rem > $(DESTDIR)$(CONFIG_DIR)/remind/notifications.rem
