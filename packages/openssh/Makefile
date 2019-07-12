all: openssh

openssh:
	$(start_setup)

	mkdir -p $(DESTDIR)$(HOME)/.ssh

	$(setup_packages_file)/config > $(DESTDIR)$(HOME)/.ssh/config

	chmod 700 $(DESTDIR)$(HOME)/.ssh
	chmod 600 $(DESTDIR)$(HOME)/.ssh/config
