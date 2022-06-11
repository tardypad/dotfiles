all: gnupg-configs

gnupg-configs:
	setup/setup-config gnupg/gpg-agent.conf $(HOME)/.gnupg/gpg-agent.conf
	setup/setup-config gnupg/gpg.conf       $(HOME)/.gnupg/gpg.conf
	setup/setup-config gnupg/scdaemon.conf  $(HOME)/.gnupg/scdaemon.conf

	chmod 700 $(DESTDIR)$(HOME)/.gnupg
	chmod 600 $(DESTDIR)$(HOME)/.gnupg/gpg-agent.conf
	chmod 600 $(DESTDIR)$(HOME)/.gnupg/gpg.conf
