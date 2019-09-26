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
	$(setup_file)/configs/vim/plugin/align.vim                  > $(DESTDIR)$(HOME)/.vim/plugin/align.vim
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

	if [ -z $(DESTDIR) ]; then \
		setup/install-vim-plugin surround          git https://github.com/tpope/vim-surround                 5970688; \
		setup/install-vim-plugin ale               git https://github.com/w0rp/ale                           v2.3.1;  \
		setup/install-vim-plugin neocomplete       git https://github.com/shougo/neocomplete.vim             d3b4d28; \
		setup/install-vim-plugin nerdcommenter     git https://github.com/scrooloose/nerdcommenter           2.5.2;   \
		setup/install-vim-plugin vdebug            git https://github.com/vim-vdebug/vdebug                  v2.0.0;  \
		setup/install-vim-plugin fzf               git https://github.com/junegunn/fzf.vim                   b31512e; \
		setup/install-vim-plugin tagbar            git https://github.com/majutsushi/tagbar                  387bbad; \
		setup/install-vim-plugin gutentags         git https://github.com/ludovicchabant/vim-gutentags       93616e4; \
		setup/install-vim-plugin ultisnips         git https://github.com/sirver/ultisnips                   6fdc364; \
		setup/install-vim-plugin sayonara          git https://github.com/mhinz/vim-sayonara                 357135c; \
		setup/install-vim-plugin tmux-focus-events git https://github.com/tmux-plugins/vim-tmux-focus-events e555efe; \
		setup/install-vim-plugin tmux-navigator    git https://github.com/christoomey/vim-tmux-navigator     4e1a877; \
		setup/install-vim-plugin tmux-clipboard    git https://github.com/roxma/vim-tmux-clipboard           d69964a; \
		setup/install-vim-plugin ack               git https://github.com/mileszs/ack.vim                    36e40f9; \
		setup/install-vim-plugin undotree          git https://github.com/mbbill/undotree                    db0223f; \
		setup/install-vim-plugin redact-pass       git https://sanctum.geek.nz/code/vim-redact-pass.git      v2.0.0;  \
		setup/install-vim-plugin taboo             git https://github.com/gcmt/taboo.vim                     1367baf; \
		setup/install-vim-plugin sway              git https://github.com/aouelete/sway-vim-syntax           0aa0626; \
		setup/install-vim-plugin yaml              git https://github.com/stephpy/vim-yaml                   0da1975; \
		setup/install-vim-plugin saltstack         git https://github.com/saltstack/salt-vim                 6ca9e35; \
		setup/install-vim-plugin jinja2            git https://github.com/glench/vim-jinja2-syntax           ff113ba; \
		setup/install-vim-plugin apiblueprint      git https://github.com/kylef/apiblueprint.vim             776b986; \
		setup/install-vim-plugin qml               git https://github.com/peterhoeg/vim-qml                  8af43da; \
		setup/install-vim-plugin elm               git https://github.com/elmcast/elm-vim                    d22c0ba; \
		setup/install-vim-plugin php               git https://github.com/stanangeloff/php.vim               7671a5a; \
		setup/install-vim-plugin tagbar-phpctags   git https://github.com/vim-php/tagbar-phpctags.vim        v0.5.1;  \
		setup/install-vim-plugin icinga2           file https://raw.githubusercontent.com/Icinga/icinga2/3cb2c1d1435f19bc5e46fa8f8518645f62549dde/tools/syntax/vim/syntax/icinga2.vim syntax/icinga2.vim; \
	fi

    # generate spell file
	if [ -z $(DESTDIR) ] ; then \
		vim +"mkspell! $(HOME)/.vim/spell/en.utf-8.add.spl $(HOME)/.vim/spell/en.utf-8.add" +qall \
		> /dev/null 2>&1; \
	fi
