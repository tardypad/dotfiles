all: i3blocks
.SILENT: i3blocks

i3blocks:
	$(start_setup)

	mkdir -p $(DESTDIR)$(CONFIG_DIR)/i3blocks/scripts

	$(setup_file)/config > $(DESTDIR)$(CONFIG_DIR)/i3blocks/config
	$(setup_file)/scripts/bluetooth > $(DESTDIR)$(CONFIG_DIR)/i3blocks/scripts/bluetooth
	$(setup_file)/scripts/chat > $(DESTDIR)$(CONFIG_DIR)/i3blocks/scripts/chat
	$(setup_file)/scripts/datetime > $(DESTDIR)$(CONFIG_DIR)/i3blocks/scripts/datetime
	$(setup_file)/scripts/do_not_disturb > $(DESTDIR)$(CONFIG_DIR)/i3blocks/scripts/do_not_disturb
	$(setup_file)/scripts/music > $(DESTDIR)$(CONFIG_DIR)/i3blocks/scripts/music
	$(setup_file)/scripts/network > $(DESTDIR)$(CONFIG_DIR)/i3blocks/scripts/network
	$(setup_file)/scripts/pomodoro > $(DESTDIR)$(CONFIG_DIR)/i3blocks/scripts/pomodoro
	$(setup_file)/scripts/power > $(DESTDIR)$(CONFIG_DIR)/i3blocks/scripts/power
	$(setup_file)/scripts/volume > $(DESTDIR)$(CONFIG_DIR)/i3blocks/scripts/volume

	chmod +x $(DESTDIR)$(CONFIG_DIR)/i3blocks/scripts/*

	$(end_setup)
