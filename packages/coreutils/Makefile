all: coreutils
.SILENT: coreutils

coreutils:
	$(start_setup)

	mkdir -p $(DESTDIR)$(HOME)

	$(setup_packages_file)/dircolors > $(DESTDIR)$(HOME)/.dircolors

	$(end_setup)
