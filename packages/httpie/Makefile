all: httpie
.SILENT: httpie

httpie:
	$(start_setup)

	mkdir -p $(DESTDIR)$(HOME)/.httpie

	$(setup_file)/config.json > $(DESTDIR)$(HOME)/.httpie/config.json

	$(end_setup)
