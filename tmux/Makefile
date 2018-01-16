tmux:
	@echo -n "… setup tmux"

    # create necessary directories
	@mkdir -p "$(HOME)/.tmux"

    # copy config files
	@cp "tmux/tmux.conf" "$(HOME)/.tmux.conf"
	@cp --recursive --force --no-target-directory \
		"tmux/tmux/scripts" "$(HOME)/.tmux/scripts"
	@cp --recursive --force --no-target-directory \
		"tmux/tmux/conf" "$(HOME)/.tmux/conf"
	@cp --recursive --force --no-target-directory \
		"tmux/tmux/images" "$(HOME)/.tmux/images"

	@echo -e "\r✔ setup tmux"
