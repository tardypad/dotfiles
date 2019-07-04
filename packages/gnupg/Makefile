.SILENT: gnupg

gnupg:
	$(start_setup)

	mkdir -p $(DESTDIR)$(HOME)/.gnupg

	$(setup_file)/gpg.conf > $(DESTDIR)$(HOME)/.gnupg/gpg.conf
	$(setup_file)/gpg-agent.conf > $(DESTDIR)$(HOME)/.gnupg/gpg-agent.conf

	chmod 700 $(DESTDIR)$(HOME)/.gnupg
	chmod 600 $(DESTDIR)$(HOME)/.gnupg/gpg.conf
	chmod 600 $(DESTDIR)$(HOME)/.gnupg/gpg-agent.conf

	$(end_setup)
