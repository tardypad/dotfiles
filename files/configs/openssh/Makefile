all: openssh-configs

openssh-configs:
	setup/setup-config openssh/config $(HOME)/.ssh/config

	chmod 700 $(DESTDIR)$(HOME)/.ssh
	chmod 600 $(DESTDIR)$(HOME)/.ssh/config
