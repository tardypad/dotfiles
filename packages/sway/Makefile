sway:
	$(start_setup)

	$(call copy_file,config,${CONFIG_DIR}/sway/config)
	$(call copy_folder,config.d,${CONFIG_DIR}/sway/config.d)
	$(call copy_folder,scripts,${CONFIG_DIR}/sway/scripts)
	$(call copy_folder,applications,${DATA_DIR}/applications)
	$(call copy_folder,sounds,${CONFIG_DIR}/sway/sounds)
	$(call copy_folder,swaynag,${CONFIG_DIR}/swaynag)

	$(end_setup)
