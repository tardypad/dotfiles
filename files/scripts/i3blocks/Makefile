all: i3blocks-scripts

i3blocks-scripts:
	mkdir -p $(DESTDIR)$(BIN_DIR)

	THEME=$(THEME) setup/setup-file scripts/i3blocks/i3blocks-bluetooth         > $(DESTDIR)$(BIN_DIR)/i3blocks-bluetooth
	THEME=$(THEME) setup/setup-file scripts/i3blocks/i3blocks-chat              > $(DESTDIR)$(BIN_DIR)/i3blocks-chat
	THEME=$(THEME) setup/setup-file scripts/i3blocks/i3blocks-do-not-disturb    > $(DESTDIR)$(BIN_DIR)/i3blocks-do-not-disturb
	THEME=$(THEME) setup/setup-file scripts/i3blocks/i3blocks-idle-inhibitor    > $(DESTDIR)$(BIN_DIR)/i3blocks-idle-inhibitor
	THEME=$(THEME) setup/setup-file scripts/i3blocks/i3blocks-microphone        > $(DESTDIR)$(BIN_DIR)/i3blocks-microphone
	THEME=$(THEME) setup/setup-file scripts/i3blocks/i3blocks-music             > $(DESTDIR)$(BIN_DIR)/i3blocks-music
	THEME=$(THEME) setup/setup-file scripts/i3blocks/i3blocks-network           > $(DESTDIR)$(BIN_DIR)/i3blocks-network
	THEME=$(THEME) setup/setup-file scripts/i3blocks/i3blocks-night-mode        > $(DESTDIR)$(BIN_DIR)/i3blocks-night-mode
	THEME=$(THEME) setup/setup-file scripts/i3blocks/i3blocks-pomodoro          > $(DESTDIR)$(BIN_DIR)/i3blocks-pomodoro
	THEME=$(THEME) setup/setup-file scripts/i3blocks/i3blocks-power             > $(DESTDIR)$(BIN_DIR)/i3blocks-power
	THEME=$(THEME) setup/setup-file scripts/i3blocks/i3blocks-screencast        > $(DESTDIR)$(BIN_DIR)/i3blocks-screencast
	THEME=$(THEME) setup/setup-file scripts/i3blocks/i3blocks-task              > $(DESTDIR)$(BIN_DIR)/i3blocks-task
	THEME=$(THEME) setup/setup-file scripts/i3blocks/i3blocks-volume            > $(DESTDIR)$(BIN_DIR)/i3blocks-volume
	THEME=$(THEME) setup/setup-file scripts/i3blocks/i3blocks-vpn               > $(DESTDIR)$(BIN_DIR)/i3blocks-vpn
	THEME=$(THEME) setup/setup-file scripts/i3blocks/i3blocks-webcam            > $(DESTDIR)$(BIN_DIR)/i3blocks-webcam

	chmod +x $(DESTDIR)$(BIN_DIR)/i3blocks-bluetooth
	chmod +x $(DESTDIR)$(BIN_DIR)/i3blocks-chat
	chmod +x $(DESTDIR)$(BIN_DIR)/i3blocks-do-not-disturb
	chmod +x $(DESTDIR)$(BIN_DIR)/i3blocks-idle-inhibitor
	chmod +x $(DESTDIR)$(BIN_DIR)/i3blocks-microphone
	chmod +x $(DESTDIR)$(BIN_DIR)/i3blocks-music
	chmod +x $(DESTDIR)$(BIN_DIR)/i3blocks-network
	chmod +x $(DESTDIR)$(BIN_DIR)/i3blocks-night-mode
	chmod +x $(DESTDIR)$(BIN_DIR)/i3blocks-pomodoro
	chmod +x $(DESTDIR)$(BIN_DIR)/i3blocks-power
	chmod +x $(DESTDIR)$(BIN_DIR)/i3blocks-screencast
	chmod +x $(DESTDIR)$(BIN_DIR)/i3blocks-task
	chmod +x $(DESTDIR)$(BIN_DIR)/i3blocks-volume
	chmod +x $(DESTDIR)$(BIN_DIR)/i3blocks-vpn
	chmod +x $(DESTDIR)$(BIN_DIR)/i3blocks-webcam
