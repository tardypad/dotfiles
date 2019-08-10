all: qutebrowser-configs

qutebrowser-configs:
	$(start_setup)

	mkdir -p $(DESTDIR)$(CONFIG_DIR)/qutebrowser/config.d

	$(setup_file)/configs/qutebrowser/config.py            > $(DESTDIR)$(CONFIG_DIR)/qutebrowser/config.py
	$(setup_file)/configs/qutebrowser/config.d/bindings.py > $(DESTDIR)$(CONFIG_DIR)/qutebrowser/config.d/bindings.py
	$(setup_file)/configs/qutebrowser/config.d/general.py  > $(DESTDIR)$(CONFIG_DIR)/qutebrowser/config.d/general.py
	$(setup_file)/configs/qutebrowser/config.d/style.py    > $(DESTDIR)$(CONFIG_DIR)/qutebrowser/config.d/style.py
