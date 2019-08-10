all: universal-ctags-configs

universal-ctags-configs:
	$(start_setup)

	mkdir -p $(DESTDIR)$(HOME)/.ctags.d

	$(setup_file)/configs/universal-ctags/main.ctags > $(DESTDIR)$(HOME)/.ctags.d/main.ctags
