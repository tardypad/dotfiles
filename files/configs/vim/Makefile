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

	mkdir -p $(DESTDIR)$(HOME)/.vim/colors
	mkdir -p $(DESTDIR)$(HOME)/.vim/config.d
	mkdir -p $(DESTDIR)$(HOME)/.vim/ftdetect
	mkdir -p $(DESTDIR)$(HOME)/.vim/ftplugin
	mkdir -p $(DESTDIR)$(HOME)/.vim/indent
	mkdir -p $(DESTDIR)$(HOME)/.vim/plugin
	mkdir -p $(DESTDIR)$(HOME)/.vim/snips
	mkdir -p $(DESTDIR)$(HOME)/.vim/spell

	THEME=$(THEME) setup/setup-file configs/vim/vimrc                             > $(DESTDIR)$(HOME)/.vimrc
	THEME=$(THEME) setup/setup-file configs/vim/colors/tardypad.vim               > $(DESTDIR)$(HOME)/.vim/colors/tardypad.vim
	THEME=$(THEME) setup/setup-file configs/vim/config.d/bindings.vim             > $(DESTDIR)$(HOME)/.vim/config.d/bindings.vim
	THEME=$(THEME) setup/setup-file configs/vim/config.d/general.vim              > $(DESTDIR)$(HOME)/.vim/config.d/general.vim
	THEME=$(THEME) setup/setup-file configs/vim/config.d/plugins.vim              > $(DESTDIR)$(HOME)/.vim/config.d/plugins.vim
	THEME=$(THEME) setup/setup-file configs/vim/ftdetect/dircolors.vim            > $(DESTDIR)$(HOME)/.vim/ftdetect/dircolors.vim
	THEME=$(THEME) setup/setup-file configs/vim/ftdetect/gitconfig.vim            > $(DESTDIR)$(HOME)/.vim/ftdetect/gitconfig.vim
	THEME=$(THEME) setup/setup-file configs/vim/ftdetect/icinga2.vim              > $(DESTDIR)$(HOME)/.vim/ftdetect/icinga2.vim
	THEME=$(THEME) setup/setup-file configs/vim/ftdetect/mail.vim                 > $(DESTDIR)$(HOME)/.vim/ftdetect/mail.vim
	THEME=$(THEME) setup/setup-file configs/vim/ftdetect/markdown.vim             > $(DESTDIR)$(HOME)/.vim/ftdetect/markdown.vim
	THEME=$(THEME) setup/setup-file configs/vim/ftdetect/nginx.vim                > $(DESTDIR)$(HOME)/.vim/ftdetect/nginx.vim
	THEME=$(THEME) setup/setup-file configs/vim/ftdetect/sh.vim                   > $(DESTDIR)$(HOME)/.vim/ftdetect/sh.vim
	THEME=$(THEME) setup/setup-file configs/vim/ftdetect/sshconfig.vim            > $(DESTDIR)$(HOME)/.vim/ftdetect/sshconfig.vim
	THEME=$(THEME) setup/setup-file configs/vim/ftdetect/tmux.vim                 > $(DESTDIR)$(HOME)/.vim/ftdetect/tmux.vim
	THEME=$(THEME) setup/setup-file configs/vim/ftdetect/xml.vim                  > $(DESTDIR)$(HOME)/.vim/ftdetect/xml.vim
	THEME=$(THEME) setup/setup-file configs/vim/ftdetect/zsh.vim                  > $(DESTDIR)$(HOME)/.vim/ftdetect/zsh.vim
	THEME=$(THEME) setup/setup-file configs/vim/ftplugin/gitcommit.vim            > $(DESTDIR)$(HOME)/.vim/ftplugin/gitcommit.vim
	THEME=$(THEME) setup/setup-file configs/vim/ftplugin/help.vim                 > $(DESTDIR)$(HOME)/.vim/ftplugin/help.vim
	THEME=$(THEME) setup/setup-file configs/vim/ftplugin/mail.vim                 > $(DESTDIR)$(HOME)/.vim/ftplugin/mail.vim
	THEME=$(THEME) setup/setup-file configs/vim/ftplugin/markdown.vim             > $(DESTDIR)$(HOME)/.vim/ftplugin/markdown.vim
	THEME=$(THEME) setup/setup-file configs/vim/indent/sh.vim                     > $(DESTDIR)$(HOME)/.vim/indent/sh.vim
	THEME=$(THEME) setup/setup-file configs/vim/plugin/align.vim                  > $(DESTDIR)$(HOME)/.vim/plugin/align.vim
	THEME=$(THEME) setup/setup-file configs/vim/plugin/alternate_tab.vim          > $(DESTDIR)$(HOME)/.vim/plugin/alternate_tab.vim
	THEME=$(THEME) setup/setup-file configs/vim/plugin/highlight_long_lines.vim   > $(DESTDIR)$(HOME)/.vim/plugin/highlight_long_lines.vim
	THEME=$(THEME) setup/setup-file configs/vim/plugin/insert_snippet.vim         > $(DESTDIR)$(HOME)/.vim/plugin/insert_snippet.vim
	THEME=$(THEME) setup/setup-file configs/vim/plugin/linter_counts.vim          > $(DESTDIR)$(HOME)/.vim/plugin/linter_counts.vim
	THEME=$(THEME) setup/setup-file configs/vim/plugin/manage_sessions.vim        > $(DESTDIR)$(HOME)/.vim/plugin/manage_sessions.vim
	THEME=$(THEME) setup/setup-file configs/vim/plugin/open_buffer.vim            > $(DESTDIR)$(HOME)/.vim/plugin/open_buffer.vim
	THEME=$(THEME) setup/setup-file configs/vim/plugin/open_file.vim              > $(DESTDIR)$(HOME)/.vim/plugin/open_file.vim
	THEME=$(THEME) setup/setup-file configs/vim/plugin/remove_trailing_spaces.vim > $(DESTDIR)$(HOME)/.vim/plugin/remove_trailing_spaces.vim
	THEME=$(THEME) setup/setup-file configs/vim/plugin/scroll_search.vim          > $(DESTDIR)$(HOME)/.vim/plugin/scroll_search.vim
	THEME=$(THEME) setup/setup-file configs/vim/plugin/search_dir.vim             > $(DESTDIR)$(HOME)/.vim/plugin/search_dir.vim
	THEME=$(THEME) setup/setup-file configs/vim/plugin/tab_key.vim                > $(DESTDIR)$(HOME)/.vim/plugin/tab_key.vim
	THEME=$(THEME) setup/setup-file configs/vim/plugin/zoom_window.vim            > $(DESTDIR)$(HOME)/.vim/plugin/zoom_window.vim
	THEME=$(THEME) setup/setup-file configs/vim/snips/all.snippets                > $(DESTDIR)$(HOME)/.vim/snips/all.snippets
	THEME=$(THEME) setup/setup-file configs/vim/snips/sh.snippets                 > $(DESTDIR)$(HOME)/.vim/snips/sh.snippets
	THEME=$(THEME) setup/setup-file configs/vim/snips/zsh.snippets                > $(DESTDIR)$(HOME)/.vim/snips/zsh.snippets
	THEME=$(THEME) setup/setup-file configs/vim/spell/en.utf-8.add                > $(DESTDIR)$(HOME)/.vim/spell/en.utf-8.add

	# generate spell file
	if [ -z $(DESTDIR) ] ; then \
		vim --clean -c "mkspell! $(HOME)/.vim/spell/en.utf-8.add.spl $(HOME)/.vim/spell/en.utf-8.add" +qall \
		> /dev/null 2>&1; \
	fi
