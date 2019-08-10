all: vim-configs

vim-configs:
	$(start_setup)

    # create necessary runtime directories
	mkdir -p $(DESTDIR)$(HOME)/.vim/backup
	mkdir -p $(DESTDIR)$(HOME)/.vim/swap
	mkdir -p $(DESTDIR)$(HOME)/.vim/undo
	mkdir -p $(DESTDIR)$(HOME)/.vim/sessions

    # backup locally added new spelling words
	if [ -z $(DESTDIR) ] ; then \
		if ! diff configs/vim/spell/en.utf-8.add $(DESTDIR)$(HOME)/.vim/spell/en.utf-8.add > /dev/null 2>&1; then \
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

	$(setup_file)/configs/vim/vimrc                             > $(DESTDIR)$(HOME)/.vimrc
	$(setup_file)/configs/vim/colors/tardypad.vim               > $(DESTDIR)$(HOME)/.vim/colors/tardypad.vim
	$(setup_file)/configs/vim/config.d/bindings.vim             > $(DESTDIR)$(HOME)/.vim/config.d/bindings.vim
	$(setup_file)/configs/vim/config.d/general.vim              > $(DESTDIR)$(HOME)/.vim/config.d/general.vim
	$(setup_file)/configs/vim/config.d/plugins.vim              > $(DESTDIR)$(HOME)/.vim/config.d/plugins.vim
	$(setup_file)/configs/vim/ftdetect/dircolors.vim            > $(DESTDIR)$(HOME)/.vim/ftdetect/dircolors.vim
	$(setup_file)/configs/vim/ftdetect/gitconfig.vim            > $(DESTDIR)$(HOME)/.vim/ftdetect/gitconfig.vim
	$(setup_file)/configs/vim/ftdetect/icinga2.vim              > $(DESTDIR)$(HOME)/.vim/ftdetect/icinga2.vim
	$(setup_file)/configs/vim/ftdetect/mail.vim                 > $(DESTDIR)$(HOME)/.vim/ftdetect/mail.vim
	$(setup_file)/configs/vim/ftdetect/markdown.vim             > $(DESTDIR)$(HOME)/.vim/ftdetect/markdown.vim
	$(setup_file)/configs/vim/ftdetect/neomuttrc.vim            > $(DESTDIR)$(HOME)/.vim/ftdetect/neomuttrc.vim
	$(setup_file)/configs/vim/ftdetect/nginx.vim                > $(DESTDIR)$(HOME)/.vim/ftdetect/nginx.vim
	$(setup_file)/configs/vim/ftdetect/sh.vim                   > $(DESTDIR)$(HOME)/.vim/ftdetect/sh.vim
	$(setup_file)/configs/vim/ftdetect/sshconfig.vim            > $(DESTDIR)$(HOME)/.vim/ftdetect/sshconfig.vim
	$(setup_file)/configs/vim/ftdetect/sway.vim                 > $(DESTDIR)$(HOME)/.vim/ftdetect/sway.vim
	$(setup_file)/configs/vim/ftdetect/tmux.vim                 > $(DESTDIR)$(HOME)/.vim/ftdetect/tmux.vim
	$(setup_file)/configs/vim/ftdetect/xml.vim                  > $(DESTDIR)$(HOME)/.vim/ftdetect/xml.vim
	$(setup_file)/configs/vim/ftdetect/zsh.vim                  > $(DESTDIR)$(HOME)/.vim/ftdetect/zsh.vim
	$(setup_file)/configs/vim/ftplugin/gitcommit.vim            > $(DESTDIR)$(HOME)/.vim/ftplugin/gitcommit.vim
	$(setup_file)/configs/vim/ftplugin/help.vim                 > $(DESTDIR)$(HOME)/.vim/ftplugin/help.vim
	$(setup_file)/configs/vim/ftplugin/mail.vim                 > $(DESTDIR)$(HOME)/.vim/ftplugin/mail.vim
	$(setup_file)/configs/vim/ftplugin/markdown.vim             > $(DESTDIR)$(HOME)/.vim/ftplugin/markdown.vim
	$(setup_file)/configs/vim/indent/sh.vim                     > $(DESTDIR)$(HOME)/.vim/indent/sh.vim
	$(setup_file)/configs/vim/plugin/alternate_tab.vim          > $(DESTDIR)$(HOME)/.vim/plugin/alternate_tab.vim
	$(setup_file)/configs/vim/plugin/highlight_long_lines.vim   > $(DESTDIR)$(HOME)/.vim/plugin/highlight_long_lines.vim
	$(setup_file)/configs/vim/plugin/linter_counts.vim          > $(DESTDIR)$(HOME)/.vim/plugin/linter_counts.vim
	$(setup_file)/configs/vim/plugin/manage_sessions.vim        > $(DESTDIR)$(HOME)/.vim/plugin/manage_sessions.vim
	$(setup_file)/configs/vim/plugin/remove_trailing_spaces.vim > $(DESTDIR)$(HOME)/.vim/plugin/remove_trailing_spaces.vim
	$(setup_file)/configs/vim/plugin/scroll_search.vim          > $(DESTDIR)$(HOME)/.vim/plugin/scroll_search.vim
	$(setup_file)/configs/vim/plugin/zoom_window.vim            > $(DESTDIR)$(HOME)/.vim/plugin/zoom_window.vim
	$(setup_file)/configs/vim/snips/all.snippets                > $(DESTDIR)$(HOME)/.vim/snips/all.snippets
	$(setup_file)/configs/vim/snips/php_phpunit.snippets        > $(DESTDIR)$(HOME)/.vim/snips/php_phpunit.snippets
	$(setup_file)/configs/vim/snips/php.snippets                > $(DESTDIR)$(HOME)/.vim/snips/php.snippets
	$(setup_file)/configs/vim/snips/sh.snippets                 > $(DESTDIR)$(HOME)/.vim/snips/sh.snippets
	$(setup_file)/configs/vim/snips/zsh.snippets                > $(DESTDIR)$(HOME)/.vim/snips/zsh.snippets
	$(setup_file)/configs/vim/spell/en.utf-8.add                > $(DESTDIR)$(HOME)/.vim/spell/en.utf-8.add

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
