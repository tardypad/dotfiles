git:
	$(start_setup)

	$(call copy_file,config,$(CONFIG_DIR)/git/config)
	$(call copy_file,aliases,$(CONFIG_DIR)/git/aliases)
ifneq (,$(wildcard packages/git/config.local))
	$(call copy_file,config.local,$(CONFIG_DIR)/git/config.local)
endif
	$(call copy_file,ignore,$(CONFIG_DIR)/git/ignore)
	$(call copy_folder,template,$(CONFIG_DIR)/git/template)
	$(call copy_folder,scripts,$(CONFIG_DIR)/git/scripts)

	$(end_setup)
