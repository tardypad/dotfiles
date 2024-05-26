all: neovim-configs

neovim-configs:
	# backup locally added new spelling words
	if [ -z $(DESTDIR) ] ; then \
		if ! diff files/configs/neovim/spell/en.utf-8.add $(DESTDIR)$(CONFIG_DIR)/nvim/spell/en.utf-8.add > /dev/null 2>&1; then \
			cp $(DESTDIR)$(CONFIG_DIR)/nvim/spell/en.utf-8.add vim_spell_en.bkp; \
		fi \
	fi

	setup/setup-config neovim/init.vim                          $(CONFIG_DIR)/nvim/init.vim
	setup/setup-config neovim/colors/tardypad.vim               $(CONFIG_DIR)/nvim/colors/tardypad.vim
	setup/setup-config neovim/config.d/bindings.vim             $(CONFIG_DIR)/nvim/config.d/bindings.vim
	setup/setup-config neovim/config.d/general.lua              $(CONFIG_DIR)/nvim/config.d/general.lua
	setup/setup-config neovim/config.d/general.vim              $(CONFIG_DIR)/nvim/config.d/general.vim
	setup/setup-config neovim/config.d/lsp.lua                  $(CONFIG_DIR)/nvim/config.d/lsp.lua
	setup/setup-config neovim/config.d/plugins.lua              $(CONFIG_DIR)/nvim/config.d/plugins.lua
	setup/setup-config neovim/config.d/plugins.vim              $(CONFIG_DIR)/nvim/config.d/plugins.vim
	setup/setup-config neovim/ftdetect/dircolors.vim            $(CONFIG_DIR)/nvim/ftdetect/dircolors.vim
	setup/setup-config neovim/ftdetect/gitconfig.vim            $(CONFIG_DIR)/nvim/ftdetect/gitconfig.vim
	setup/setup-config neovim/ftdetect/markdown.vim             $(CONFIG_DIR)/nvim/ftdetect/markdown.vim
	setup/setup-config neovim/ftdetect/sh.vim                   $(CONFIG_DIR)/nvim/ftdetect/sh.vim
	setup/setup-config neovim/ftdetect/sshconfig.vim            $(CONFIG_DIR)/nvim/ftdetect/sshconfig.vim
	setup/setup-config neovim/ftdetect/tmux.vim                 $(CONFIG_DIR)/nvim/ftdetect/tmux.vim
	setup/setup-config neovim/ftdetect/xml.vim                  $(CONFIG_DIR)/nvim/ftdetect/xml.vim
	setup/setup-config neovim/ftdetect/zsh.vim                  $(CONFIG_DIR)/nvim/ftdetect/zsh.vim
	setup/setup-config neovim/ftplugin/gitcommit.vim            $(CONFIG_DIR)/nvim/ftplugin/gitcommit.vim
	setup/setup-config neovim/ftplugin/help.vim                 $(CONFIG_DIR)/nvim/ftplugin/help.vim
	setup/setup-config neovim/ftplugin/mail.vim                 $(CONFIG_DIR)/nvim/ftplugin/mail.vim
	setup/setup-config neovim/ftplugin/markdown.vim             $(CONFIG_DIR)/nvim/ftplugin/markdown.vim
	setup/setup-config neovim/indent/sh.vim                     $(CONFIG_DIR)/nvim/indent/sh.vim
	setup/setup-config neovim/plugin/align.vim                  $(CONFIG_DIR)/nvim/plugin/align.vim
	setup/setup-config neovim/plugin/alternate_tab.vim          $(CONFIG_DIR)/nvim/plugin/alternate_tab.vim
	setup/setup-config neovim/plugin/diagnostics_counts.lua     $(CONFIG_DIR)/nvim/plugin/diagnostics_counts.lua
	setup/setup-config neovim/plugin/highlight_long_lines.vim   $(CONFIG_DIR)/nvim/plugin/highlight_long_lines.vim
	setup/setup-config neovim/plugin/insert_snippet.vim         $(CONFIG_DIR)/nvim/plugin/insert_snippet.vim
	setup/setup-config neovim/plugin/manage_sessions.vim        $(CONFIG_DIR)/nvim/plugin/manage_sessions.vim
	setup/setup-config neovim/plugin/open_buffer.vim            $(CONFIG_DIR)/nvim/plugin/open_buffer.vim
	setup/setup-config neovim/plugin/open_file.vim              $(CONFIG_DIR)/nvim/plugin/open_file.vim
	setup/setup-config neovim/plugin/scroll_search.vim          $(CONFIG_DIR)/nvim/plugin/scroll_search.vim
	setup/setup-config neovim/plugin/search_dir.vim             $(CONFIG_DIR)/nvim/plugin/search_dir.vim
	setup/setup-config neovim/plugin/zoom_window.vim            $(CONFIG_DIR)/nvim/plugin/zoom_window.vim
	setup/setup-config neovim/snippets/sh.snippets              $(CONFIG_DIR)/nvim/snippets/sh.snippets
	setup/setup-config neovim/snippets/zsh.snippets             $(CONFIG_DIR)/nvim/snippets/zsh.snippets
	setup/setup-config neovim/spell/en.utf-8.add                $(CONFIG_DIR)/nvim/spell/en.utf-8.add

	# disable tags generation from gutentags plugin on home folder
	# where vim is often opened by default by some apps for the user
	touch $(DESTDIR)$(HOME)/.notags

	# generate spell file
	if [ -z $(DESTDIR) ] ; then \
		nvim --clean -c "mkspell! $(CONFIG_DIR)/nvim/spell/en.utf-8.add.spl $(CONFIG_DIR)/nvim/spell/en.utf-8.add" +qall \
		> /dev/null 2>&1; \
	fi
