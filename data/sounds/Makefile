all: sounds
.SILENT: sounds

sounds:
	$(start_setup)

	mkdir -p $(DESTDIR)$(DATA_DIR)/sounds

	cp data/sounds/end_pomodoro.wav $(DESTDIR)$(DATA_DIR)/sounds/end_pomodoro.wav
	cp data/sounds/low_battery.wav  $(DESTDIR)$(DATA_DIR)/sounds/low_battery.wav

	$(end_setup)
