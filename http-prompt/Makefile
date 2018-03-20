http-prompt:
	@echo -n "… setup http-prompt"

    # create necessary directories
	@mkdir -p "$(CONFIG_DIR)/http-prompt"

    # copy config files
	@cp "http-prompt/config.py" "$(CONFIG_DIR)/http-prompt/config.py"
	@if [[ -d "http-prompt/env" ]]; then \
		cp --recursive --force --no-target-directory \
			"http-prompt/env" "$(CONFIG_DIR)/http-prompt/env"; \
	fi

	@echo -e "\r✔ setup http-prompt"
