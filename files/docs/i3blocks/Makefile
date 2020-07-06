all: i3blocks-docs

i3blocks-docs:
	mkdir -p $(DESTDIR)$(DATA_DIR)/man/man1

	$(setup_file)/docs/i3blocks/i3blocks-bluetooth.scd      | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/i3blocks-bluetooth.1perso
	$(setup_file)/docs/i3blocks/i3blocks-chat.scd           | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/i3blocks-chat.1perso
	$(setup_file)/docs/i3blocks/i3blocks-datetime.scd       | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/i3blocks-datetime.1perso
	$(setup_file)/docs/i3blocks/i3blocks-do-not-disturb.scd | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/i3blocks-do-not-disturb.1perso
	$(setup_file)/docs/i3blocks/i3blocks-microphone.scd     | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/i3blocks-microphone.1perso
	$(setup_file)/docs/i3blocks/i3blocks-music.scd          | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/i3blocks-music.1perso
	$(setup_file)/docs/i3blocks/i3blocks-network.scd        | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/i3blocks-network.1perso
	$(setup_file)/docs/i3blocks/i3blocks-pomodoro.scd       | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/i3blocks-pomodoro.1perso
	$(setup_file)/docs/i3blocks/i3blocks-power.scd          | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/i3blocks-power.1perso
	$(setup_file)/docs/i3blocks/i3blocks-time-tracker.scd   | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/i3blocks-time-tracker.1perso
	$(setup_file)/docs/i3blocks/i3blocks-volume.scd         | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/i3blocks-volume.1perso
	$(setup_file)/docs/i3blocks/i3blocks-webcam.scd         | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/i3blocks-webcam.1perso
