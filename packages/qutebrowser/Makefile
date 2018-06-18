qutebrowser:
	$(start_setup)

	$(call copy_file,config.py,$(CONFIG_DIR)/qutebrowser/config.py)
	$(call copy_folder,config.d,${CONFIG_DIR}/qutebrowser/config.d)
	$(call copy_folder,scripts,${CONFIG_DIR}/qutebrowser/scripts)

	$(end_setup)
