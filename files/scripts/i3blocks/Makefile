all: i3blocks-scripts

i3blocks-scripts:
	mkdir -p $(DESTDIR)$(BIN_DIR)

	$(setup_file)/scripts/i3blocks/i3blocks-bluetooth      > $(DESTDIR)$(BIN_DIR)/i3blocks-bluetooth
	$(setup_file)/scripts/i3blocks/i3blocks-chat           > $(DESTDIR)$(BIN_DIR)/i3blocks-chat
	$(setup_file)/scripts/i3blocks/i3blocks-datetime       > $(DESTDIR)$(BIN_DIR)/i3blocks-datetime
	$(setup_file)/scripts/i3blocks/i3blocks-do-not-disturb > $(DESTDIR)$(BIN_DIR)/i3blocks-do-not-disturb
	$(setup_file)/scripts/i3blocks/i3blocks-music          > $(DESTDIR)$(BIN_DIR)/i3blocks-music
	$(setup_file)/scripts/i3blocks/i3blocks-network        > $(DESTDIR)$(BIN_DIR)/i3blocks-network
	$(setup_file)/scripts/i3blocks/i3blocks-pomodoro       > $(DESTDIR)$(BIN_DIR)/i3blocks-pomodoro
	$(setup_file)/scripts/i3blocks/i3blocks-power          > $(DESTDIR)$(BIN_DIR)/i3blocks-power
	$(setup_file)/scripts/i3blocks/i3blocks-volume         > $(DESTDIR)$(BIN_DIR)/i3blocks-volume

	chmod +x $(DESTDIR)$(BIN_DIR)/i3blocks-bluetooth
	chmod +x $(DESTDIR)$(BIN_DIR)/i3blocks-chat
	chmod +x $(DESTDIR)$(BIN_DIR)/i3blocks-datetime
	chmod +x $(DESTDIR)$(BIN_DIR)/i3blocks-do-not-disturb
	chmod +x $(DESTDIR)$(BIN_DIR)/i3blocks-music
	chmod +x $(DESTDIR)$(BIN_DIR)/i3blocks-network
	chmod +x $(DESTDIR)$(BIN_DIR)/i3blocks-pomodoro
	chmod +x $(DESTDIR)$(BIN_DIR)/i3blocks-power
	chmod +x $(DESTDIR)$(BIN_DIR)/i3blocks-volume
