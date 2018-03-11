tmux:
	@echo -n "… setup tmux"

    # create necessary directories
	@mkdir -p "$(HOME)/.tmux"
	@mkdir -p "$(DATA_DIR)/tmux/env"

    # copy config files
	@cp "tmux/tmux.conf" "$(HOME)/.tmux.conf"
	@cp --recursive --force --no-target-directory \
		"tmux/tmux/scripts" "$(HOME)/.tmux/scripts"
	@cp --recursive --force --no-target-directory \
		"tmux/tmux/conf" "$(HOME)/.tmux/conf"
	@cp --recursive --force --no-target-directory \
		"tmux/env" "$(DATA_DIR)/tmux/env"; \

	@echo -e "\r✔ setup tmux"
