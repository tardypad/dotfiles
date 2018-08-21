vim:
	$(start_setup)

    # create necessary runtime directories
	@mkdir --parents $(DESTDIR)$(HOME)/.vim/backup
	@mkdir --parents $(DESTDIR)$(HOME)/.vim/swap
	@mkdir --parents $(DESTDIR)$(HOME)/.vim/undo
	@mkdir --parents $(DESTDIR)$(HOME)/.vim/sessions

	$(call copy_file,vimrc,$(HOME)/.vimrc)
	$(call copy_file,plugins.vim,$(HOME)/.vim/plugins.vim)
	$(call copy_folder,config.d,$(HOME)/.vim/config.d)
	$(call copy_folder,ftdetect,$(HOME)/.vim/ftdetect)
	$(call copy_folder,ftplugin,$(HOME)/.vim/ftplugin)
	$(call copy_folder,indent,$(HOME)/.vim/indent)
	$(call copy_folder,spell,$(HOME)/.vim/spell)
	$(call copy_folder,snips,$(HOME)/.vim/snips)

  # install the plugins manager
	@curl --silent --location --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/9813d5ead5b6f419e9ca55fc767d9548baed6b40/plug.vim \
		--output "$(DESTDIR)$(HOME)/.vim/autoload/plug.vim"; \

  # Manually install icinga2 syntax
  # not a real plugin, just one file of a bigger repository
	@curl --silent --location --create-dirs \
		https://raw.githubusercontent.com/Icinga/icinga2/daa067dabe388d1a26e7581937202d1e78b53175/tools/syntax/vim/syntax/icinga2.vim \
		--output "$(DESTDIR)$(HOME)/.vim/plugged/icinga2/syntax/icinga2.vim"; \

ifeq ($(IS_LOCAL_INSTALL),'true')
    # load only the plugins definition and install/clean/update them
	@vim -N --noplugin -u "$(HOME)/.vim/plugins.vim" \
		+PlugInstall +PlugClean! +PlugUpdate +qall \
		> /dev/null 2>&1

    # generate spell file
	@vim +"mkspell $(HOME)/.vim/spell/en.utf-8.add.spl $(HOME)/.vim/spell/en.utf-8.add" +qall \
		> /dev/null 2>&1
endif

	$(end_setup)
