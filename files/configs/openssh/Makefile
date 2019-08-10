all: openssh-configs

openssh-configs:
	$(start_setup)

	mkdir -p $(DESTDIR)$(HOME)/.ssh

	$(setup_file)/configs/openssh/config > $(DESTDIR)$(HOME)/.ssh/config

	chmod 700 $(DESTDIR)$(HOME)/.ssh
	chmod 600 $(DESTDIR)$(HOME)/.ssh/config
