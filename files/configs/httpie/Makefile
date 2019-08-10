all: httpie-configs

httpie-configs:
	$(start_setup)

	mkdir -p $(DESTDIR)$(HOME)/.httpie

	$(setup_file)/configs/httpie/config.json > $(DESTDIR)$(HOME)/.httpie/config.json
