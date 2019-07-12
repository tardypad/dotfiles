all: vim

vim:
	$(start_setup)

    # create necessary runtime directories
	mkdir -p $(DESTDIR)$(HOME)/.vim/backup
	mkdir -p $(DESTDIR)$(HOME)/.vim/swap
	mkdir -p $(DESTDIR)$(HOME)/.vim/undo
	mkdir -p $(DESTDIR)$(HOME)/.vim/sessions

    # backup locally added new spelling words
	if [ -z $(DESTDIR) ] ; then \
		if ! diff packages/vim/spell/en.utf-8.add $(DESTDIR)$(HOME)/.vim/spell/en.utf-8.add > /dev/null 2>&1; then \
			cp $(DESTDIR)$(HOME)/.vim/spell/en.utf-8.add vim_spell_en.bkp; \
		fi \
	fi

	mkdir -p $(DESTDIR)$(HOME)/.vim/colors
	mkdir -p $(DESTDIR)$(HOME)/.vim/config.d
	mkdir -p $(DESTDIR)$(HOME)/.vim/ftdetect
	mkdir -p $(DESTDIR)$(HOME)/.vim/ftplugin
	mkdir -p $(DESTDIR)$(HOME)/.vim/indent
	mkdir -p $(DESTDIR)$(HOME)/.vim/plugin
	mkdir -p $(DESTDIR)$(HOME)/.vim/snips
	mkdir -p $(DESTDIR)$(HOME)/.vim/spell

	$(setup_packages_file)/vimrc                             > $(DESTDIR)$(HOME)/.vimrc
	$(setup_packages_file)/colors/tardypad.vim               > $(DESTDIR)$(HOME)/.vim/colors/tardypad.vim
	$(setup_packages_file)/config.d/bindings.vim             > $(DESTDIR)$(HOME)/.vim/config.d/bindings.vim
	$(setup_packages_file)/config.d/general.vim              > $(DESTDIR)$(HOME)/.vim/config.d/general.vim
	$(setup_packages_file)/config.d/plugins.vim              > $(DESTDIR)$(HOME)/.vim/config.d/plugins.vim
	$(setup_packages_file)/ftdetect/bats.vim                 > $(DESTDIR)$(HOME)/.vim/ftdetect/bats.vim
	$(setup_packages_file)/ftdetect/dircolors.vim            > $(DESTDIR)$(HOME)/.vim/ftdetect/dircolors.vim
	$(setup_packages_file)/ftdetect/gitconfig.vim            > $(DESTDIR)$(HOME)/.vim/ftdetect/gitconfig.vim
	$(setup_packages_file)/ftdetect/icinga2.vim              > $(DESTDIR)$(HOME)/.vim/ftdetect/icinga2.vim
	$(setup_packages_file)/ftdetect/neomutt.vim              > $(DESTDIR)$(HOME)/.vim/ftdetect/neomutt.vim
	$(setup_packages_file)/ftdetect/nginx.vim                > $(DESTDIR)$(HOME)/.vim/ftdetect/nginx.vim
	$(setup_packages_file)/ftdetect/sshconfig.vim            > $(DESTDIR)$(HOME)/.vim/ftdetect/sshconfig.vim
	$(setup_packages_file)/ftdetect/sway.vim                 > $(DESTDIR)$(HOME)/.vim/ftdetect/sway.vim
	$(setup_packages_file)/ftdetect/tmux.vim                 > $(DESTDIR)$(HOME)/.vim/ftdetect/tmux.vim
	$(setup_packages_file)/ftdetect/vifm.vim                 > $(DESTDIR)$(HOME)/.vim/ftdetect/vifm.vim
	$(setup_packages_file)/ftdetect/xml.vim                  > $(DESTDIR)$(HOME)/.vim/ftdetect/xml.vim
	$(setup_packages_file)/ftdetect/zsh.vim                  > $(DESTDIR)$(HOME)/.vim/ftdetect/zsh.vim
	$(setup_packages_file)/ftplugin/gitcommit.vim            > $(DESTDIR)$(HOME)/.vim/ftplugin/gitcommit.vim
	$(setup_packages_file)/ftplugin/help.vim                 > $(DESTDIR)$(HOME)/.vim/ftplugin/help.vim
	$(setup_packages_file)/ftplugin/mail.vim                 > $(DESTDIR)$(HOME)/.vim/ftplugin/mail.vim
	$(setup_packages_file)/ftplugin/markdown.vim             > $(DESTDIR)$(HOME)/.vim/ftplugin/markdown.vim
	$(setup_packages_file)/indent/sh.vim                     > $(DESTDIR)$(HOME)/.vim/indent/sh.vim
	$(setup_packages_file)/plugin/alternate_tab.vim          > $(DESTDIR)$(HOME)/.vim/plugin/alternate_tab.vim
	$(setup_packages_file)/plugin/highlight_long_lines.vim   > $(DESTDIR)$(HOME)/.vim/plugin/highlight_long_lines.vim
	$(setup_packages_file)/plugin/linter_counts.vim          > $(DESTDIR)$(HOME)/.vim/plugin/linter_counts.vim
	$(setup_packages_file)/plugin/manage_sessions.vim        > $(DESTDIR)$(HOME)/.vim/plugin/manage_sessions.vim
	$(setup_packages_file)/plugin/remove_trailing_spaces.vim > $(DESTDIR)$(HOME)/.vim/plugin/remove_trailing_spaces.vim
	$(setup_packages_file)/plugin/scroll_search.vim          > $(DESTDIR)$(HOME)/.vim/plugin/scroll_search.vim
	$(setup_packages_file)/plugin/zoom_window.vim            > $(DESTDIR)$(HOME)/.vim/plugin/zoom_window.vim
	$(setup_packages_file)/snips/all.snippets                > $(DESTDIR)$(HOME)/.vim/snips/all.snippets
	$(setup_packages_file)/snips/php_phpunit.snippets        > $(DESTDIR)$(HOME)/.vim/snips/php_phpunit.snippets
	$(setup_packages_file)/snips/php.snippets                > $(DESTDIR)$(HOME)/.vim/snips/php.snippets
	$(setup_packages_file)/snips/sh.snippets                 > $(DESTDIR)$(HOME)/.vim/snips/sh.snippets
	$(setup_packages_file)/snips/zsh.snippets                > $(DESTDIR)$(HOME)/.vim/snips/zsh.snippets
	$(setup_packages_file)/spell/en.utf-8.add                > $(DESTDIR)$(HOME)/.vim/spell/en.utf-8.add

  # install the plugins manager
	mkdir -p $(DESTDIR)$(HOME)/.vim/autoload
	curl -sL https://raw.githubusercontent.com/junegunn/vim-plug/0.10.0/plug.vim \
		-o $(DESTDIR)$(HOME)/.vim/autoload/plug.vim

  # Manually install icinga2 syntax
  # not a real plugin, just one file of a bigger repository
	mkdir -p $(DESTDIR)$(HOME)/.vim/plugged/icinga2/syntax
	curl -sL https://raw.githubusercontent.com/Icinga/icinga2/3cb2c1d1435f19bc5e46fa8f8518645f62549dde/tools/syntax/vim/syntax/icinga2.vim \
		-o $(DESTDIR)$(HOME)/.vim/plugged/icinga2/syntax/icinga2.vim

    # load only the plugins definition and install/clean/update them
	if [ -z $(DESTDIR) ] ; then \
		vim -N --noplugin -u $(HOME)/.vim/config.d/plugins.vim \
			+PlugInstall +PlugClean! +PlugUpdate +qall \
			> /dev/null 2>&1; \
	fi

    # generate spell file
	if [ -z $(DESTDIR) ] ; then \
		vim +"mkspell! $(HOME)/.vim/spell/en.utf-8.add.spl $(HOME)/.vim/spell/en.utf-8.add" +qall \
		> /dev/null 2>&1; \
	fi

	$(end_setup)
