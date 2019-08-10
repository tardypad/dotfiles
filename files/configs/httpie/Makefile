all: httpie-configs

httpie-configs:
	$(start_setup)

	mkdir -p $(DESTDIR)$(HOME)/.httpie

	$(setup_configs_file)/httpie/config.json > $(DESTDIR)$(HOME)/.httpie/config.json
