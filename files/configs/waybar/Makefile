all: waybar-configs

waybar-configs:
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/waybar

	$(setup_file)/configs/waybar/config    > $(DESTDIR)$(CONFIG_DIR)/waybar/config
	$(setup_file)/configs/waybar/style.css > $(DESTDIR)$(CONFIG_DIR)/waybar/style.css
