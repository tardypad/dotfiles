ncmpcpp:
	$(start_setup)

    # create necessary runtime directories
	@mkdir --parents $(DATA_DIR)/ncmpcpp

	$(call copy_file,config,$(CONFIG_DIR)/ncmpcpp/config)
	$(call copy_file,bindings,$(CONFIG_DIR)/ncmpcpp/bindings)

	$(end_setup)
