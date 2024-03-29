all: remind-configs

remind-configs:
	setup/setup-config remind/reminders                 $(HOME)/.reminders
	setup/setup-config remind/general.rem               $(CONFIG_DIR)/remind/general.rem
	setup/setup-config remind/notifications/general.rem $(CONFIG_DIR)/remind/notifications/general.rem

	# Create file for ad-hoc meetings used in zsh alias
	# and necessary to be existing for Remind daemon started in Sway
	touch $(DESTDIR)$(CONFIG_DIR)/remind/notifications/meetings.rem
