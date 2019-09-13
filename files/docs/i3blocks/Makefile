all: i3blocks-docs

i3blocks-docs:
	$(start_setup)

	mkdir -p $(DESTDIR)$(DATA_DIR)/man/man1

	scdoc < files/docs/i3blocks/i3blocks-bluetooth.scd      > $(DESTDIR)$(DATA_DIR)/man/man1/i3blocks-bluetooth.1
	scdoc < files/docs/i3blocks/i3blocks-chat.scd           > $(DESTDIR)$(DATA_DIR)/man/man1/i3blocks-chat.1
	scdoc < files/docs/i3blocks/i3blocks-datetime.scd       > $(DESTDIR)$(DATA_DIR)/man/man1/i3blocks-datetime.1
	scdoc < files/docs/i3blocks/i3blocks-do-not-disturb.scd > $(DESTDIR)$(DATA_DIR)/man/man1/i3blocks-do-not-disturb.1
	scdoc < files/docs/i3blocks/i3blocks-music.scd          > $(DESTDIR)$(DATA_DIR)/man/man1/i3blocks-music.1
	scdoc < files/docs/i3blocks/i3blocks-network.scd        > $(DESTDIR)$(DATA_DIR)/man/man1/i3blocks-network.1
	scdoc < files/docs/i3blocks/i3blocks-pomodoro.scd       > $(DESTDIR)$(DATA_DIR)/man/man1/i3blocks-pomodoro.1
	scdoc < files/docs/i3blocks/i3blocks-power.scd          > $(DESTDIR)$(DATA_DIR)/man/man1/i3blocks-power.1
	scdoc < files/docs/i3blocks/i3blocks-volume.scd         > $(DESTDIR)$(DATA_DIR)/man/man1/i3blocks-volume.1
