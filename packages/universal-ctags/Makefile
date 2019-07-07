all: universal-ctags
.SILENT: universal-ctags

universal-ctags:
	$(start_setup)

	mkdir -p $(DESTDIR)$(HOME)/.ctags.d

	$(setup_packages_file)/main.ctags > $(DESTDIR)$(HOME)/.ctags.d/main.ctags

	$(end_setup)
