all: ctags-configs

ctags-configs:
	mkdir -p $(DESTDIR)$(HOME)/.ctags.d

	THEME=$(THEME) setup/setup-file configs/ctags/main.ctags > $(DESTDIR)$(HOME)/.ctags.d/main.ctags
