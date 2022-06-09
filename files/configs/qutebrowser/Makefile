all: qutebrowser-configs

qutebrowser-configs:
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/qutebrowser/config.d
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/qutebrowser/userscripts
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/qutebrowser/scripts

	THEME=$(THEME) setup/setup-file configs/qutebrowser/config.py                      > $(DESTDIR)$(CONFIG_DIR)/qutebrowser/config.py
	THEME=$(THEME) setup/setup-file configs/qutebrowser/config.d/bindings.py           > $(DESTDIR)$(CONFIG_DIR)/qutebrowser/config.d/bindings.py
	THEME=$(THEME) setup/setup-file configs/qutebrowser/config.d/general.py            > $(DESTDIR)$(CONFIG_DIR)/qutebrowser/config.d/general.py
	THEME=$(THEME) setup/setup-file configs/qutebrowser/config.d/style.py              > $(DESTDIR)$(CONFIG_DIR)/qutebrowser/config.d/style.py
	THEME=$(THEME) setup/setup-file configs/qutebrowser/scripts/rewrite.py             > $(DESTDIR)$(CONFIG_DIR)/qutebrowser/scripts/rewrite.py
	THEME=$(THEME) setup/setup-file configs/qutebrowser/userscripts/autofill-login     > $(DESTDIR)$(CONFIG_DIR)/qutebrowser/userscripts/autofill-login
	THEME=$(THEME) setup/setup-file configs/qutebrowser/userscripts/autofill-otp       > $(DESTDIR)$(CONFIG_DIR)/qutebrowser/userscripts/autofill-otp

	chmod +x $(DESTDIR)$(CONFIG_DIR)/qutebrowser/userscripts/autofill-login
	chmod +x $(DESTDIR)$(CONFIG_DIR)/qutebrowser/userscripts/autofill-otp
