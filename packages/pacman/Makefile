pacman:
	$(start_setup)

    # create necessary runtime directories
	@mkdir --parents $(DESTDIR)$(HOME)/build/packages
	@mkdir --parents $(DESTDIR)$(HOME)/build/sources
	@mkdir --parents $(DESTDIR)$(HOME)/build/srcpackages
	@mkdir --parents $(DESTDIR)$(HOME)/build/makepkglogs

	$(call copy_file,makepkg.conf,$(CONFIG_DIR)/pacman/makepkg.conf)

	$(end_setup)
