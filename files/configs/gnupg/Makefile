all: gnupg-configs

gnupg-configs:
	$(start_setup)

	mkdir -p $(DESTDIR)$(HOME)/.gnupg

	$(setup_file)/configs/gnupg/gpg.conf       > $(DESTDIR)$(HOME)/.gnupg/gpg.conf
	$(setup_file)/configs/gnupg/gpg-agent.conf > $(DESTDIR)$(HOME)/.gnupg/gpg-agent.conf
	$(setup_file)/configs/gnupg/scdaemon.conf  > $(DESTDIR)$(HOME)/.gnupg/scdaemon.conf

	chmod 700 $(DESTDIR)$(HOME)/.gnupg
	chmod 600 $(DESTDIR)$(HOME)/.gnupg/gpg.conf
	chmod 600 $(DESTDIR)$(HOME)/.gnupg/gpg-agent.conf
