weechat:
	$(start_setup)

    # create necessary installation directories
	@mkdir --parents $(DESTDIR)$(HOME)/.weechat/python/autoload
	@mkdir --parents $(DESTDIR)$(HOME)/.weechat/perl/autoload

	$(call copy_file,alias.conf,$(HOME)/.weechat/alias.conf)
	$(call copy_file,aspell.conf,$(HOME)/.weechat/aspell.conf)
	$(call copy_file,buflist.conf,$(HOME)/.weechat/buflist.conf)
	$(call copy_file,charset.conf,$(HOME)/.weechat/charset.conf)
	$(call copy_file,colorize_nicks.conf,$(HOME)/.weechat/colorize_nicks.conf)
	$(call copy_file,exec.conf,$(HOME)/.weechat/exec.conf)
	$(call copy_file,fifo.conf,$(HOME)/.weechat/fifo.conf)
	$(call copy_file,fset.conf,$(HOME)/.weechat/fset.conf)
	$(call copy_file,irc.conf,$(HOME)/.weechat/irc.conf)
	$(call copy_file,logger.conf,$(HOME)/.weechat/logger.conf)
	$(call copy_file,lua.conf,$(HOME)/.weechat/lua.conf)
	$(call copy_file,perl.conf,$(HOME)/.weechat/perl.conf)
	$(call copy_file,plugins.conf,$(HOME)/.weechat/plugins.conf)
	$(call copy_file,python.conf,$(HOME)/.weechat/python.conf)
	$(call copy_file,relay.conf,$(HOME)/.weechat/relay.conf)
	$(call copy_file,script.conf,$(HOME)/.weechat/script.conf)
	$(call copy_file,trigger.conf,$(HOME)/.weechat/trigger.conf)
	$(call copy_file,weechat.conf,$(HOME)/.weechat/weechat.conf)
	$(call copy_file,xfer.conf,$(HOME)/.weechat/xfer.conf)

  # install wee-slack
  # version from github is more recent than one in weechat scripts repo
	@curl --silent --location --create-dirs \
		https://raw.githubusercontent.com/rawdigits/wee-slack/v2.2.0/wee_slack.py \
		--output "$(DESTDIR)$(HOME)/.weechat/python/wee_slack.py"; \
	ln -fs ../wee_slack.py "$(DESTDIR)$(HOME)/.weechat/python/autoload/wee_slack.py"; \

  # install colorize_nicks.py script
	@curl --silent --location --create-dirs \
		https://raw.githubusercontent.com/weechat/scripts/ffda2e03486d1e90983a35ee3505b84d10fd5244/python/colorize_nicks.py \
		--output "$(DESTDIR)$(HOME)/.weechat/python/colorize_nicks.py"; \
	ln -fs ../colorize_nicks.py "$(DESTDIR)$(HOME)/.weechat/python/autoload/colorize_nicks.py"; \

  # install vimode script
	@curl --silent --location --create-dirs \
		https://raw.githubusercontent.com/GermainZ/weechat-vimode/95661a27f92dc3f3286cf1539ab112a81ad15639/vimode.py \
		--output "$(DESTDIR)$(HOME)/.weechat/python/vimode.py"; \
	ln -fs ../vimode.py "$(DESTDIR)$(HOME)/.weechat/python/autoload/vimode.py"; \

  # install go.py script
	@curl --silent --location --create-dirs \
		https://raw.githubusercontent.com/weechat/scripts/dc9e69f37fcdc51f0f5a8856ef977ee3d8d8e371/python/go.py \
		--output "$(DESTDIR)$(HOME)/.weechat/python/go.py"; \
	ln -fs ../go.py "$(DESTDIR)$(HOME)/.weechat/python/autoload/go.py"; \

	$(end_setup)
