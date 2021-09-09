all: remind-configs

remind-configs:
	mkdir -p $(DESTDIR)$(HOME)
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/remind

	$(setup_file)/configs/remind/reminders > $(DESTDIR)$(HOME)/.reminders
