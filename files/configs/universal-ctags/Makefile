all: universal-ctags-configs

universal-ctags-configs:
	$(start_setup)

	mkdir -p $(DESTDIR)$(HOME)/.ctags.d

	$(setup_configs_file)/universal-ctags/main.ctags > $(DESTDIR)$(HOME)/.ctags.d/main.ctags
