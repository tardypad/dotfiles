git:
	$(start_setup)

	$(call copy_file,config,$(CONFIG_DIR)/git/config)
ifneq (,$(wildcard git/config.local))
	$(call copy_file,config.local,$(CONFIG_DIR)/git/config.local)
endif
	$(call copy_file,ignore,$(CONFIG_DIR)/git/ignore)
	$(call copy_folder,template,$(CONFIG_DIR)/git/template)

	$(end_setup)
