all: mpd-configs

mpd-configs:
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/mpd

	THEME=$(THEME) setup/setup-file configs/mpd/mpd.conf > $(DESTDIR)$(CONFIG_DIR)/mpd/mpd.conf
