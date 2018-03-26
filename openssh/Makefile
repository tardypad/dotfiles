openssh:
	$(start_setup)

    # create necessary installation directories
	@mkdir --parents $(HOME)/.ssh

	@cat "openssh/config" "openssh/config.local" \
		> "$(HOME)/.ssh/config" 2>/dev/null

    # adjust permissions
	@chmod 700 "$(HOME)/.ssh"
	@chmod 600 "$(HOME)/.ssh/config"

	$(end_setup)
