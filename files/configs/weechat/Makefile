all: weechat-configs

weechat-configs:
	setup/setup-config weechat/config.d/alias.conf                       $(CONFIG_DIR)/weechat/alias.conf
	setup/setup-config weechat/config.d/buflist.conf                     $(CONFIG_DIR)/weechat/buflist.conf
	setup/setup-config weechat/config.d/charset.conf                     $(CONFIG_DIR)/weechat/charset.conf
	setup/setup-config weechat/config.d/exec.conf                        $(CONFIG_DIR)/weechat/exec.conf
	setup/setup-config weechat/config.d/fifo.conf                        $(CONFIG_DIR)/weechat/fifo.conf
	setup/setup-config weechat/config.d/fset.conf                        $(CONFIG_DIR)/weechat/fset.conf
	setup/setup-config weechat/config.d/irc.conf                         $(CONFIG_DIR)/weechat/irc.conf
	setup/setup-config weechat/config.d/logger.conf                      $(CONFIG_DIR)/weechat/logger.conf
	setup/setup-config weechat/config.d/plugins.conf                     $(CONFIG_DIR)/weechat/plugins.conf
	setup/setup-config weechat/config.d/python.conf                      $(CONFIG_DIR)/weechat/python.conf
	setup/setup-config weechat/config.d/relay.conf                       $(CONFIG_DIR)/weechat/relay.conf
	setup/setup-config weechat/config.d/script.conf                      $(CONFIG_DIR)/weechat/script.conf
	setup/setup-config weechat/config.d/trigger.conf                     $(CONFIG_DIR)/weechat/trigger.conf
	setup/setup-config weechat/config.d/typing.conf                      $(CONFIG_DIR)/weechat/typing.conf
	setup/setup-config weechat/config.d/weechat.conf                     $(CONFIG_DIR)/weechat/weechat.conf
	setup/setup-config weechat/config.d/xfer.conf                        $(CONFIG_DIR)/weechat/xfer.conf
	setup/setup-config weechat/plugins/edit_nvim_tmux.py                 $(DATA_DIR)/weechat/python/edit_nvim_tmux.py
	setup/setup-config weechat/plugins/export_important_buffers_count.py $(DATA_DIR)/weechat/python/export_important_buffers_count.py
	setup/setup-config weechat/plugins/go_fzf_tmux.py                    $(DATA_DIR)/weechat/python/go_fzf_tmux.py

	# keep secure data configured
	-awk '/^\[data\]$$/ { p=1 } p' $(DESTDIR)$(CONFIG_DIR)/weechat/sec.conf > build/weechat_sec_data
	{ \
		setup/process-file configs/weechat/config.d/sec.conf; \
		cat build/weechat_sec_data; \
	} > $(DESTDIR)$(CONFIG_DIR)/weechat/sec.conf

	# autoload plugins
	mkdir -p $(DESTDIR)$(DATA_DIR)/weechat/python/autoload
	ln -fs ../edit_nvim_tmux.py                 $(DESTDIR)$(DATA_DIR)/weechat/python/autoload/edit_nvim_tmux.py
	ln -fs ../export_important_buffers_count.py $(DESTDIR)$(DATA_DIR)/weechat/python/autoload/export_important_buffers_count.py
	ln -fs ../go_fzf_tmux.py                    $(DESTDIR)$(DATA_DIR)/weechat/python/autoload/go_fzf_tmux.py

	# autoload external plugins
	ln -fs /usr/share/weechat/python/vimode.py $(DESTDIR)$(DATA_DIR)/weechat/python/autoload/vimode.py
