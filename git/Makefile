git:
	@echo -n "… setup git"

    # create necessary directories
	@mkdir -p "$(CONFIG_DIR)/git"

    # copy config files
	@cp "git/git/config" "$(CONFIG_DIR)/git/config"
	@if [[ -f "git/git/config.local" ]]; then \
		cp "git/git/config.local" "$(CONFIG_DIR)/git/config.local"; \
	fi
	@cp "git/git/ignore" "$(CONFIG_DIR)/git/ignore"
	@cp --recursive --force --no-target-directory \
		"git/git/template" "$(CONFIG_DIR)/git/template"

	@echo -e "\r✔ setup git"
