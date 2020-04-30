all: waybar-scripts

waybar-scripts:
	mkdir -p $(DESTDIR)$(BIN_DIR)

	$(setup_file)/scripts/waybar/waybar-chat           > $(DESTDIR)$(BIN_DIR)/waybar-chat
	$(setup_file)/scripts/waybar/waybar-do-not-disturb > $(DESTDIR)$(BIN_DIR)/waybar-do-not-disturb

	chmod +x $(DESTDIR)$(BIN_DIR)/waybar-chat
	chmod +x $(DESTDIR)$(BIN_DIR)/waybar-do-not-disturb
