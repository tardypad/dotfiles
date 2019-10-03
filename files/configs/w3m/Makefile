all: w3m-configs

w3m-configs:
	mkdir -p $(DESTDIR)$(HOME)/.w3m

	$(setup_file)/configs/w3m/config > $(DESTDIR)$(HOME)/.w3m/config
	$(setup_file)/configs/w3m/keymap > $(DESTDIR)$(HOME)/.w3m/keymap
