all: httpie

httpie:
	$(start_setup)

	mkdir -p $(DESTDIR)$(HOME)/.httpie

	$(setup_configs_file)/config.json > $(DESTDIR)$(HOME)/.httpie/config.json
