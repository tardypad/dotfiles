all: weechat-configs

weechat-configs:
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/weechat
	mkdir -p $(DESTDIR)$(DATA_DIR)/weechat/python

	$(setup_file)/configs/weechat/config.d/alias.conf                       > $(DESTDIR)$(CONFIG_DIR)/weechat/alias.conf
	$(setup_file)/configs/weechat/config.d/buflist.conf                     > $(DESTDIR)$(CONFIG_DIR)/weechat/buflist.conf
	$(setup_file)/configs/weechat/config.d/charset.conf                     > $(DESTDIR)$(CONFIG_DIR)/weechat/charset.conf
	$(setup_file)/configs/weechat/config.d/exec.conf                        > $(DESTDIR)$(CONFIG_DIR)/weechat/exec.conf
	$(setup_file)/configs/weechat/config.d/fifo.conf                        > $(DESTDIR)$(CONFIG_DIR)/weechat/fifo.conf
	$(setup_file)/configs/weechat/config.d/fset.conf                        > $(DESTDIR)$(CONFIG_DIR)/weechat/fset.conf
	$(setup_file)/configs/weechat/config.d/irc.conf                         > $(DESTDIR)$(CONFIG_DIR)/weechat/irc.conf
	$(setup_file)/configs/weechat/config.d/logger.conf                      > $(DESTDIR)$(CONFIG_DIR)/weechat/logger.conf
	$(setup_file)/configs/weechat/config.d/plugins.conf                     > $(DESTDIR)$(CONFIG_DIR)/weechat/plugins.conf
	$(setup_file)/configs/weechat/config.d/python.conf                      > $(DESTDIR)$(CONFIG_DIR)/weechat/python.conf
	$(setup_file)/configs/weechat/config.d/relay.conf                       > $(DESTDIR)$(CONFIG_DIR)/weechat/relay.conf
	$(setup_file)/configs/weechat/config.d/script.conf                      > $(DESTDIR)$(CONFIG_DIR)/weechat/script.conf
	$(setup_file)/configs/weechat/config.d/trigger.conf                     > $(DESTDIR)$(CONFIG_DIR)/weechat/trigger.conf
	$(setup_file)/configs/weechat/config.d/weechat.conf                     > $(DESTDIR)$(CONFIG_DIR)/weechat/weechat.conf
	$(setup_file)/configs/weechat/config.d/xfer.conf                        > $(DESTDIR)$(CONFIG_DIR)/weechat/xfer.conf
	$(setup_file)/configs/weechat/plugins/edit_vim_tmux.py                  > $(DESTDIR)$(DATA_DIR)/weechat/python/edit_vim_tmux.py
	$(setup_file)/configs/weechat/plugins/export_important_buffers_count.py > $(DESTDIR)$(DATA_DIR)/weechat/python/export_important_buffers_count.py
	$(setup_file)/configs/weechat/plugins/go_fzf_tmux.py                    > $(DESTDIR)$(DATA_DIR)/weechat/python/go_fzf_tmux.py

	# keep secure data configured
	-awk '/^\[data\]$$/ { p=1 } p' $(DESTDIR)$(CONFIG_DIR)/weechat/sec.conf > build/weechat_sec_data
	{ \
		$(setup_file)/configs/weechat/config.d/sec.conf; \
		cat build/weechat_sec_data; \
	} > $(DESTDIR)$(CONFIG_DIR)/weechat/sec.conf

	# autoload plugins
	mkdir -p $(DESTDIR)$(DATA_DIR)/weechat/python/autoload
	ln -fs ../edit_vim_tmux.py                  $(DESTDIR)$(DATA_DIR)/weechat/python/autoload/edit_vim_tmux.py
	ln -fs ../export_important_buffers_count.py $(DESTDIR)$(DATA_DIR)/weechat/python/autoload/export_important_buffers_count.py
	ln -fs ../go_fzf_tmux.py                    $(DESTDIR)$(DATA_DIR)/weechat/python/autoload/go_fzf_tmux.py

	# autoload external plugins
	ln -fs /usr/lib/weechat/python/vimode.py $(DESTDIR)$(DATA_DIR)/weechat/python/autoload/vimode.py
	ln -fs /usr/lib/weechat/python/wee-most.py $(DESTDIR)$(DATA_DIR)/weechat/python/autoload/wee-most.py
