all: openssh-configs

openssh-configs:
	mkdir -p $(DESTDIR)$(HOME)/.ssh

	setup/setup-file configs/openssh/config > $(DESTDIR)$(HOME)/.ssh/config

	chmod 700 $(DESTDIR)$(HOME)/.ssh
	chmod 600 $(DESTDIR)$(HOME)/.ssh/config
