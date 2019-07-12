all: weechat

weechat:
	$(start_setup)

	mkdir -p $(DESTDIR)$(HOME)/.weechat

	$(setup_packages_file)/config.d/alias.conf                       > $(DESTDIR)$(HOME)/.weechat/alias.conf
	$(setup_packages_file)/config.d/spell.conf                       > $(DESTDIR)$(HOME)/.weechat/spell.conf
	$(setup_packages_file)/config.d/buflist.conf                     > $(DESTDIR)$(HOME)/.weechat/buflist.conf
	$(setup_packages_file)/config.d/charset.conf                     > $(DESTDIR)$(HOME)/.weechat/charset.conf
	$(setup_packages_file)/config.d/colorize_nicks.conf              > $(DESTDIR)$(HOME)/.weechat/colorize_nicks.conf
	$(setup_packages_file)/config.d/exec.conf                        > $(DESTDIR)$(HOME)/.weechat/exec.conf
	$(setup_packages_file)/config.d/fifo.conf                        > $(DESTDIR)$(HOME)/.weechat/fifo.conf
	$(setup_packages_file)/config.d/fset.conf                        > $(DESTDIR)$(HOME)/.weechat/fset.conf
	$(setup_packages_file)/config.d/irc.conf                         > $(DESTDIR)$(HOME)/.weechat/irc.conf
	$(setup_packages_file)/config.d/logger.conf                      > $(DESTDIR)$(HOME)/.weechat/logger.conf
	$(setup_packages_file)/config.d/plugins.conf                     > $(DESTDIR)$(HOME)/.weechat/plugins.conf
	$(setup_packages_file)/config.d/python.conf                      > $(DESTDIR)$(HOME)/.weechat/python.conf
	$(setup_packages_file)/config.d/relay.conf                       > $(DESTDIR)$(HOME)/.weechat/relay.conf
	$(setup_packages_file)/config.d/script.conf                      > $(DESTDIR)$(HOME)/.weechat/script.conf
	$(setup_packages_file)/config.d/trigger.conf                     > $(DESTDIR)$(HOME)/.weechat/trigger.conf
	$(setup_packages_file)/config.d/weechat.conf                     > $(DESTDIR)$(HOME)/.weechat/weechat.conf
	$(setup_packages_file)/config.d/xfer.conf                        > $(DESTDIR)$(HOME)/.weechat/xfer.conf
	$(setup_packages_file)/plugins/edit_vim_tmux.py                  > $(DESTDIR)$(HOME)/.weechat/python/edit_vim_tmux.py
	$(setup_packages_file)/plugins/export_important_buffers_count.py > $(DESTDIR)$(HOME)/.weechat/python/export_important_buffers_count.py
	$(setup_packages_file)/plugins/go_fzf_tmux.py                    > $(DESTDIR)$(HOME)/.weechat/python/go_fzf_tmux.py

    # install plugins
	mkdir -p $(DESTDIR)$(HOME)/.weechat/python
	curl -sL https://raw.githubusercontent.com/rawdigits/wee-slack/v2.3.0/wee_slack.py \
		-o $(DESTDIR)$(HOME)/.weechat/python/wee_slack.py
	curl -sL https://raw.githubusercontent.com/weechat/scripts/ffda2e03486d1e90983a35ee3505b84d10fd5244/python/colorize_nicks.py \
		-o $(DESTDIR)$(HOME)/.weechat/python/colorize_nicks.py
	curl -sL https://raw.githubusercontent.com/GermainZ/weechat-vimode/95661a27f92dc3f3286cf1539ab112a81ad15639/vimode.py \
		-o $(DESTDIR)$(HOME)/.weechat/python/vimode.py

    # autoload plugins
	mkdir -p $(DESTDIR)$(HOME)/.weechat/python/autoload
	ln -fs ../go_fzf_tmux.py                    $(DESTDIR)$(HOME)/.weechat/python/autoload/go_fzf_tmux.py
	ln -fs ../edit_vim_tmux.py                  $(DESTDIR)$(HOME)/.weechat/python/autoload/edit_vim_tmux.py
	ln -fs ../export_important_buffers_count.py $(DESTDIR)$(HOME)/.weechat/python/autoload/export_important_buffers_count.py
	ln -fs ../wee_slack.py                      $(DESTDIR)$(HOME)/.weechat/python/autoload/wee_slack.py
	ln -fs ../colorize_nicks.py                 $(DESTDIR)$(HOME)/.weechat/python/autoload/colorize_nicks.py
	ln -fs ../vimode.py                         $(DESTDIR)$(HOME)/.weechat/python/autoload/vimode.py
