gnupg:
	$(start_setup)

	$(call copy_file,gpg.conf,$(HOME)/.gnupg/gpg.conf)
	$(call copy_file,gpg-agent.conf,$(HOME)/.gnupg/gpg-agent.conf)

    # adjust permissions
	@chmod 700 "$(HOME)/.gnupg"
	@chmod 600 "$(HOME)/.gnupg/gpg.conf"
	@chmod 600 "$(HOME)/.gnupg/gpg-agent.conf"

	$(end_setup)
