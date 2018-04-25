vim:
	$(start_setup)

    # create necessary runtime directories
	@mkdir --parents $(HOME)/.vim/backup
	@mkdir --parents $(HOME)/.vim/swap
	@mkdir --parents $(HOME)/.vim/undo

	$(call copy_file,vimrc,$(HOME)/.vimrc)
	$(call copy_file,plugins.vim,$(HOME)/.vim/plugins.vim)
	$(call copy_folder,config.d,$(HOME)/.vim/config.d)
	$(call copy_folder,ftdetect,$(HOME)/.vim/ftdetect)

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
