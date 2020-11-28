all: alacritty-configs

alacritty-configs:
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/alacritty/config.d

	$(setup_file)/configs/alacritty/alacritty.yml         > $(DESTDIR)$(CONFIG_DIR)/alacritty/alacritty.yml
	$(setup_file)/configs/alacritty/config.d/bindings.yml > $(DESTDIR)$(CONFIG_DIR)/alacritty/config.d/bindings.yml
	$(setup_file)/configs/alacritty/config.d/general.yml  > $(DESTDIR)$(CONFIG_DIR)/alacritty/config.d/general.yml
	$(setup_file)/configs/alacritty/config.d/style.yml    > $(DESTDIR)$(CONFIG_DIR)/alacritty/config.d/style.yml
