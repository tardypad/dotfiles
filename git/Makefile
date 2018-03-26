git:
	$(start_setup)

	$(call copy_file,git/config,$(CONFIG_DIR)/git/config)
ifneq (,$(wildcard git/git/config.local))
	$(call copy_file,git/config.local,$(CONFIG_DIR)/git/config.local)
endif
	$(call copy_file,git/ignore,$(CONFIG_DIR)/git/ignore)
	$(call copy_folder,git/template,$(CONFIG_DIR)/git/template)

	$(end_setup)
