zsh:
	@echo -n "… setup zsh"

    # create necessary directories
	@mkdir -p "$(HOME)/.zsh"

    # copy config files
	@cp "zsh/zshrc" "$(HOME)/.zshrc"
	@cp "zsh/zshenv" "$(HOME)/.zshenv"
	@cp --recursive --force --no-target-directory \
		"zsh/zsh/conf" "$(HOME)/.zsh/conf"
	@cp --recursive --force --no-target-directory \
		"zsh/zsh/scripts" "$(HOME)/.zsh/scripts"
	@cp --recursive --force --no-target-directory \
		"zsh/zsh/functions" "$(HOME)/.zsh/functions"
	@cp --recursive --force --no-target-directory \
		"zsh/zsh/completions" "$(HOME)/.zsh/completions"

	@echo -e "\r✔ setup zsh"
