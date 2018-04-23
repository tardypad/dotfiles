zsh:
	$(start_setup)

	$(call copy_file,zshrc,$(HOME)/.zshrc)
	$(call copy_file,zshenv,$(HOME)/.zshenv)
	$(call copy_file,zlogin,$(HOME)/.zlogin)
	$(call copy_file,zprofile,$(HOME)/.zprofile)
	$(call copy_folder,conf,$(HOME)/.zsh/conf)
	$(call copy_folder,scripts,$(HOME)/.zsh/scripts)
	$(call copy_folder,functions,$(HOME)/.zsh/functions)
	$(call copy_folder,completions,$(HOME)/.zsh/completions)

	$(end_setup)
