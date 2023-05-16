all: vim-configs

vim-configs:
	# create necessary runtime directories
	mkdir -p $(DESTDIR)$(HOME)/.vim/backup
	mkdir -p $(DESTDIR)$(HOME)/.vim/sessions
	mkdir -p $(DESTDIR)$(HOME)/.vim/swap
	mkdir -p $(DESTDIR)$(HOME)/.vim/undo

	# backup locally added new spelling words
	if [ -z $(DESTDIR) ] ; then \
		if ! diff files/configs/vim/spell/en.utf-8.add $(DESTDIR)$(HOME)/.vim/spell/en.utf-8.add > /dev/null 2>&1; then \
			cp $(DESTDIR)$(HOME)/.vim/spell/en.utf-8.add vim_spell_en.bkp; \
		fi \
	fi

	setup/setup-config vim/vimrc                             $(HOME)/.vimrc
	setup/setup-config vim/colors/tardypad.vim               $(HOME)/.vim/colors/tardypad.vim
	setup/setup-config vim/config.d/bindings.vim             $(HOME)/.vim/config.d/bindings.vim
	setup/setup-config vim/config.d/general.vim              $(HOME)/.vim/config.d/general.vim
	setup/setup-config vim/config.d/plugins.vim              $(HOME)/.vim/config.d/plugins.vim
	setup/setup-config vim/ftdetect/dircolors.vim            $(HOME)/.vim/ftdetect/dircolors.vim
	setup/setup-config vim/ftdetect/gitconfig.vim            $(HOME)/.vim/ftdetect/gitconfig.vim
	setup/setup-config vim/ftdetect/icinga2.vim              $(HOME)/.vim/ftdetect/icinga2.vim
	setup/setup-config vim/ftdetect/markdown.vim             $(HOME)/.vim/ftdetect/markdown.vim
	setup/setup-config vim/ftdetect/nginx.vim                $(HOME)/.vim/ftdetect/nginx.vim
	setup/setup-config vim/ftdetect/sh.vim                   $(HOME)/.vim/ftdetect/sh.vim
	setup/setup-config vim/ftdetect/sshconfig.vim            $(HOME)/.vim/ftdetect/sshconfig.vim
	setup/setup-config vim/ftdetect/tmux.vim                 $(HOME)/.vim/ftdetect/tmux.vim
	setup/setup-config vim/ftdetect/xml.vim                  $(HOME)/.vim/ftdetect/xml.vim
	setup/setup-config vim/ftdetect/zsh.vim                  $(HOME)/.vim/ftdetect/zsh.vim
	setup/setup-config vim/ftplugin/gitcommit.vim            $(HOME)/.vim/ftplugin/gitcommit.vim
	setup/setup-config vim/ftplugin/help.vim                 $(HOME)/.vim/ftplugin/help.vim
	setup/setup-config vim/ftplugin/mail.vim                 $(HOME)/.vim/ftplugin/mail.vim
	setup/setup-config vim/ftplugin/markdown.vim             $(HOME)/.vim/ftplugin/markdown.vim
	setup/setup-config vim/indent/sh.vim                     $(HOME)/.vim/indent/sh.vim
	setup/setup-config vim/plugin/align.vim                  $(HOME)/.vim/plugin/align.vim
	setup/setup-config vim/plugin/alternate_tab.vim          $(HOME)/.vim/plugin/alternate_tab.vim
	setup/setup-config vim/plugin/highlight_long_lines.vim   $(HOME)/.vim/plugin/highlight_long_lines.vim
	setup/setup-config vim/plugin/insert_snippet.vim         $(HOME)/.vim/plugin/insert_snippet.vim
	setup/setup-config vim/plugin/linter_counts.vim          $(HOME)/.vim/plugin/linter_counts.vim
	setup/setup-config vim/plugin/manage_sessions.vim        $(HOME)/.vim/plugin/manage_sessions.vim
	setup/setup-config vim/plugin/open_buffer.vim            $(HOME)/.vim/plugin/open_buffer.vim
	setup/setup-config vim/plugin/open_file.vim              $(HOME)/.vim/plugin/open_file.vim
	setup/setup-config vim/plugin/remove_trailing_spaces.vim $(HOME)/.vim/plugin/remove_trailing_spaces.vim
	setup/setup-config vim/plugin/scroll_search.vim          $(HOME)/.vim/plugin/scroll_search.vim
	setup/setup-config vim/plugin/search_dir.vim             $(HOME)/.vim/plugin/search_dir.vim
	setup/setup-config vim/plugin/tab_key.vim                $(HOME)/.vim/plugin/tab_key.vim
	setup/setup-config vim/plugin/zoom_window.vim            $(HOME)/.vim/plugin/zoom_window.vim
	setup/setup-config vim/snips/all.snippets                $(HOME)/.vim/snips/all.snippets
	setup/setup-config vim/snips/sh.snippets                 $(HOME)/.vim/snips/sh.snippets
	setup/setup-config vim/snips/zsh.snippets                $(HOME)/.vim/snips/zsh.snippets
	setup/setup-config vim/spell/en.utf-8.add                $(HOME)/.vim/spell/en.utf-8.add

	# disable tags generation from gutentags plugin on home folder
	# where vim is often opened by default by some apps for the user
	touch $(DESTDIR)$(HOME)/.notags

	# generate spell file
	if [ -z $(DESTDIR) ] ; then \
		vim --clean -c "mkspell! $(HOME)/.vim/spell/en.utf-8.add.spl $(HOME)/.vim/spell/en.utf-8.add" +qall \
		> /dev/null 2>&1; \
	fi
