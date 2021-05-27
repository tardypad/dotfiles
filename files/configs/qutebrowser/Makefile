all: qutebrowser-configs

qutebrowser-configs:
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/qutebrowser/config.d
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/qutebrowser/userscripts

	$(setup_file)/configs/qutebrowser/config.py                      > $(DESTDIR)$(CONFIG_DIR)/qutebrowser/config.py
	$(setup_file)/configs/qutebrowser/config.d/bindings.py           > $(DESTDIR)$(CONFIG_DIR)/qutebrowser/config.d/bindings.py
	$(setup_file)/configs/qutebrowser/config.d/general.py            > $(DESTDIR)$(CONFIG_DIR)/qutebrowser/config.d/general.py
	$(setup_file)/configs/qutebrowser/config.d/style.py              > $(DESTDIR)$(CONFIG_DIR)/qutebrowser/config.d/style.py
	$(setup_file)/configs/qutebrowser/userscripts/autofill-login     > $(DESTDIR)$(CONFIG_DIR)/qutebrowser/userscripts/autofill-login

	chmod +x $(DESTDIR)$(CONFIG_DIR)/qutebrowser/userscripts/autofill-login
