openssh:
	$(start_setup)

	$(call copy_file,config,$(HOME)/.ssh/config)

    # adjust permissions
	@chmod 700 "$(DESTDIR)$(HOME)/.ssh"
	@chmod 600 "$(DESTDIR)$(HOME)/.ssh/config"

	$(end_setup)
