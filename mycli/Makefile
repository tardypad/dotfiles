mycli:
	$(start_setup)

    # create necessary directories
	@mkdir -p "$(CONFIG_DIR)/mycli/env"

    # copy config files
	@cp "mycli/myclirc" "$(HOME)/.myclirc"
	@cp "mycli/my.cnf" "$(HOME)/.my.cnf"
	@if [[ -d "mycli/env" ]]; then \
		cp --recursive --force --no-target-directory \
			"mycli/env" "$(CONFIG_DIR)/mycli/env"; \
	fi

	$(end_setup)
