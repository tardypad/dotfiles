tmux:
	$(start_setup)

	$(call copy_file,tmux.conf,$(HOME)/.tmux.conf)
	$(call copy_folder,tmux/scripts,$(HOME)/.tmux/scripts)
	$(call copy_folder,tmux/conf,$(HOME)/.tmux/conf)
	$(call copy_folder,env,$(CONFIG_DIR)/tmux/env)

	$(end_setup)
