openssh:
	$(start_setup)

	$(call copy_file,config,$(HOME)/.ssh/config)

    # adjust permissions
	@chmod 700 "$(HOME)/.ssh"
	@chmod 600 "$(HOME)/.ssh/config"

	$(end_setup)
