tmux:
	$(start_setup)

	$(call copy_file,tmux.conf,$(HOME)/.tmux.conf)
	$(call copy_folder,scripts,$(HOME)/.tmux/scripts)
	$(call copy_folder,config.d,$(HOME)/.tmux/config.d)
	$(call copy_folder,images,$(CONFIG_DIR)/tmux/images)

	$(end_setup)
