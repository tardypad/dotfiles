all: sfeed-configs

sfeed-configs:
	mkdir -p $(DESTDIR)$(HOME)/.sfeed

	THEME=$(THEME) setup/setup-file configs/sfeed/sfeedrc > $(DESTDIR)$(HOME)/.sfeed/sfeedrc
