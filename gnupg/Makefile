gnupg:
	$(start_setup)

    # create necessary directories
	@mkdir -p "$(HOME)/.gnupg"

    # copy config files
	@cp "gnupg/gpg.conf" "$(HOME)/.gnupg/gpg.conf"
	@cp "gnupg/gpg-agent.conf" "$(HOME)/.gnupg/gpg-agent.conf"

    # adjust permissions
	@chmod 700 "$(HOME)/.gnupg"
	@chmod 600 "$(HOME)/.gnupg/gpg.conf"
	@chmod 600 "$(HOME)/.gnupg/gpg-agent.conf"

	$(end_setup)
