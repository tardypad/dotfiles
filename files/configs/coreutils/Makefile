all: coreutils-configs

coreutils-configs:
	mkdir -p $(DESTDIR)$(HOME)

	THEME=$(THEME) setup/setup-file configs/coreutils/dircolors > $(DESTDIR)$(HOME)/.dircolors
