pacman:
	$(start_setup)

    # create necessary runtime directories
	@mkdir --parents $(HOME)/build/packages
	@mkdir --parents $(HOME)/build/sources
	@mkdir --parents $(HOME)/build/srcpackages
	@mkdir --parents $(HOME)/build/makepkglogs

	$(call copy_file,makepkg.conf,$(CONFIG_DIR)/pacman/makepkg.conf)

	$(end_setup)
