mycli:
	$(start_setup)

	$(call copy_file,myclirc,$(HOME)/.myclirc)
	$(call copy_file,my.cnf,$(HOME)/.my.cnf)
ifneq (,$(wildcard mycli/env))
	$(call copy_folder,env,$(CONFIG_DIR)/mycli/env)
endif

	$(end_setup)
