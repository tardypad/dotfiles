all: w3m-configs

w3m-configs:
	mkdir -p $(DESTDIR)$(HOME)/.w3m

	THEME=$(THEME) setup/setup-file configs/w3m/config > $(DESTDIR)$(HOME)/.w3m/config
	THEME=$(THEME) setup/setup-file configs/w3m/keymap > $(DESTDIR)$(HOME)/.w3m/keymap
