tmux:
	$(start_setup)

    # create necessary directories
	@mkdir -p "$(HOME)/.tmux"
	@mkdir -p "$(CONFIG_DIR)/tmux"

    # copy config files
	@cp "tmux/tmux.conf" "$(HOME)/.tmux.conf"
	@cp --recursive --force --no-target-directory \
		"tmux/tmux/scripts" "$(HOME)/.tmux/scripts"
	@cp --recursive --force --no-target-directory \
		"tmux/tmux/conf" "$(HOME)/.tmux/conf"
	@cp --recursive --force --no-target-directory \
		"tmux/env" "$(CONFIG_DIR)/tmux/env"; \

	$(end_setup)
