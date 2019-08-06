all: universal-ctags

universal-ctags:
	$(start_setup)

	mkdir -p $(DESTDIR)$(HOME)/.ctags.d

	$(setup_configs_file)/main.ctags > $(DESTDIR)$(HOME)/.ctags.d/main.ctags
