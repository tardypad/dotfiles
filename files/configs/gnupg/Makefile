all: gnupg-configs

gnupg-configs:
	mkdir -p $(DESTDIR)$(HOME)/.gnupg

	THEME=$(THEME) setup/setup-file configs/gnupg/gpg-agent.conf > $(DESTDIR)$(HOME)/.gnupg/gpg-agent.conf
	THEME=$(THEME) setup/setup-file configs/gnupg/gpg.conf       > $(DESTDIR)$(HOME)/.gnupg/gpg.conf
	THEME=$(THEME) setup/setup-file configs/gnupg/scdaemon.conf  > $(DESTDIR)$(HOME)/.gnupg/scdaemon.conf

	chmod 700 $(DESTDIR)$(HOME)/.gnupg
	chmod 600 $(DESTDIR)$(HOME)/.gnupg/gpg-agent.conf
	chmod 600 $(DESTDIR)$(HOME)/.gnupg/gpg.conf
