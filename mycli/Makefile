mycli:
	@echo -n "… setup mycli"

    # create necessary directories
	@mkdir -p "$(DATA_DIR)/mycli/env"

    # copy config files
	@cp "mycli/myclirc" "$(HOME)/.myclirc"
	@cp "mycli/my.cnf" "$(HOME)/.my.cnf"
	@if [[ -d "mycli/env" ]]; then \
		cp --recursive --force --no-target-directory \
			"mycli/env" "$(DATA_DIR)/mycli/env"; \
	fi

	@echo -e "\r✔ setup mycli"
