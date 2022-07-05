all: openssh-configs

openssh-configs:
	setup/setup-config openssh/config $(HOME)/.ssh/config

	cp files/configs/openssh/id_yubikey.pub $(DESTDIR)$(HOME)/.ssh/id_yubikey.pub

	chmod 700 $(DESTDIR)$(HOME)/.ssh
	chmod 600 $(DESTDIR)$(HOME)/.ssh/config
