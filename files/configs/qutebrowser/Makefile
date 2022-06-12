all: qutebrowser-configs

qutebrowser-configs:
	setup/setup-config qutebrowser/config.py                      $(CONFIG_DIR)/qutebrowser/config.py
	setup/setup-config qutebrowser/config.d/bindings.py           $(CONFIG_DIR)/qutebrowser/config.d/bindings.py
	setup/setup-config qutebrowser/config.d/general.py            $(CONFIG_DIR)/qutebrowser/config.d/general.py
	setup/setup-config qutebrowser/config.d/style.py              $(CONFIG_DIR)/qutebrowser/config.d/style.py
	setup/setup-config qutebrowser/scripts/rewrite.py             $(CONFIG_DIR)/qutebrowser/scripts/rewrite.py
	setup/setup-config qutebrowser/userscripts/autofill-login     $(CONFIG_DIR)/qutebrowser/userscripts/autofill-login
	setup/setup-config qutebrowser/userscripts/autofill-otp       $(CONFIG_DIR)/qutebrowser/userscripts/autofill-otp

	chmod +x $(DESTDIR)$(CONFIG_DIR)/qutebrowser/userscripts/autofill-login
	chmod +x $(DESTDIR)$(CONFIG_DIR)/qutebrowser/userscripts/autofill-otp
