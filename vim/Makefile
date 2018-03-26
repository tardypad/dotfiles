vim:
	$(start_setup)

    # create necessary directories
	@mkdir -p "$(HOME)/.vim/"{backup,swap,undo}

    # copy config files
	@cp "vim/vimrc" "$(HOME)/.vimrc"
	@cp "vim/vim/plugins.vim" "$(HOME)/.vim/plugins.vim"
	@cp --recursive --force --no-target-directory \
		"vim/vim/conf" "$(HOME)/.vim/conf"

    # install the plugins manager if not present
	@if [[ ! -f "$(HOME)/.vim/autoload/plug.vim" ]]; then \
		curl --silent --location --create-dirs \
			https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim \
			--output "$(HOME)/.vim/autoload/plug.vim"; \
	fi

    # Manually install icinga2 syntax if not present
    # not a real plugin, just one file of a bigger repository
	@if [[ ! -f "$(HOME)/.vim/plugged/icinga2/syntax/icinga2.vim" ]]; then \
		curl --silent --location --create-dirs \
			https://raw.githubusercontent.com/Icinga/icinga2/master/tools/syntax/vim/syntax/icinga2.vim \
			--output "$(HOME)/.vim/plugged/icinga2/syntax/icinga2.vim"; \
	fi

    # Manually install pass noplaintext feature if not present
    # not a real plugin, just one file of a bigger repository
	@if [[ ! -f "$(HOME)/.vim/plugged/pass/plugin/noplaintext.vim" ]]; then \
		curl --silent --location --create-dirs \
			https://git.zx2c4.com/password-store/plain/contrib/vim/noplaintext.vim \
			--output "$(HOME)/.vim/plugged/pass/plugin/noplaintext.vim"; \
	fi

    # load only the plugins definition and install/clean/update them
	@vim -N --noplugin -u "$(HOME)/.vim/plugins.vim" \
		+PlugInstall +PlugClean! +PlugUpdate +qall \
		> /dev/null 2>&1

	$(end_setup)
