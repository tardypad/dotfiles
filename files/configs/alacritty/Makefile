all: alacritty-configs

alacritty-configs:
	$(start_setup)

	mkdir -p $(DESTDIR)$(CONFIG_DIR)/alacritty

	$(setup_file)/configs/alacritty/alacritty.yml               > $(DESTDIR)$(CONFIG_DIR)/alacritty/alacritty.yml
	$(setup_file)/configs/alacritty/alacritty_launcher.yml      > $(DESTDIR)$(CONFIG_DIR)/alacritty/alacritty_launcher.yml
	$(setup_file)/configs/alacritty/alacritty_command_input.yml > $(DESTDIR)$(CONFIG_DIR)/alacritty/alacritty_command_input.yml
