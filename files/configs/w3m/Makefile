all: w3m-configs

w3m-configs:
	setup/setup-config w3m/config $(HOME)/.w3m/config
	setup/setup-config w3m/keymap $(HOME)/.w3m/keymap

	chmod 700 $(DESTDIR)$(HOME)/.w3m
