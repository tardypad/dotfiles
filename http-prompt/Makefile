http-prompt:
	$(start_setup)

	$(call copy_file,config.py,$(CONFIG_DIR)/http-prompt/config.py)
ifneq (,$(wildcard http-prompt/env))
	$(call copy_folder env,$(CONFIG_DIR)/http-prompt/env)
endif

	$(end_setup)
