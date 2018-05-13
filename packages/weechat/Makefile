weechat:
	$(start_setup)

    # create necessary installation directories
	@mkdir --parents $(DESTDIR)$(HOME)/.weechat/python/autoload
	@mkdir --parents $(DESTDIR)$(HOME)/.weechat/perl/autoload

	$(call copy_file,alias.conf,$(HOME)/.weechat/alias.conf)
	$(call copy_file,buflist.conf,$(HOME)/.weechat/buflist.conf)
	$(call copy_file,charset.conf,$(HOME)/.weechat/charset.conf)
	$(call copy_file,colorize_nicks.conf,$(HOME)/.weechat/colorize_nicks.conf)
	$(call copy_file,exec.conf,$(HOME)/.weechat/exec.conf)
	$(call copy_file,fifo.conf,$(HOME)/.weechat/fifo.conf)
	$(call copy_file,irc.conf,$(HOME)/.weechat/irc.conf)
	$(call copy_file,logger.conf,$(HOME)/.weechat/logger.conf)
	$(call copy_file,plugins.conf,$(HOME)/.weechat/plugins.conf)
	$(call copy_file,relay.conf,$(HOME)/.weechat/relay.conf)
	$(call copy_file,script.conf,$(HOME)/.weechat/script.conf)
	$(call copy_file,trigger.conf,$(HOME)/.weechat/trigger.conf)
	$(call copy_file,urlgrab.conf,$(HOME)/.weechat/urlgrab.conf)
	$(call copy_file,weechat.conf,$(HOME)/.weechat/weechat.conf)
	$(call copy_file,xfer.conf,$(HOME)/.weechat/xfer.conf)

    # install wee-slack if not present
    # version from github is more recent than one in weechat scripts repo
	@if [[ ! -f "$(DESTDIR)$(HOME)/.weechat/python/wee_slack.py" ]]; then \
		curl --silent --location --create-dirs \
			https://raw.githubusercontent.com/rawdigits/wee-slack/3eff1de49d3aba1d991b7b6953e6b55a24fdecd9/wee_slack.py \
			--output "$(DESTDIR)$(HOME)/.weechat/python/wee_slack.py"; \
		ln -s ../wee_slack.py "$(DESTDIR)$(HOME)/.weechat/python/autoload/wee_slack.py"; \
	fi

    # install colorize_nicks.py script if not present
	@if [[ ! -f "$(DESTDIR)$(HOME)/.weechat/python/colorize_nicks.py" ]]; then \
		curl --silent --location --create-dirs \
			https://raw.githubusercontent.com/weechat/scripts/24d3f9db81d3621dd7f75d8f6e6cfc411a49f907/python/colorize_nicks.py \
			--output "$(DESTDIR)$(HOME)/.weechat/python/colorize_nicks.py"; \
		ln -s ../colorize_nicks.py "$(DESTDIR)$(HOME)/.weechat/python/autoload/colorize_nicks.py"; \
	fi

    # install vimode script if not present
	@if [[ ! -f "$(DESTDIR)$(HOME)/.weechat/python/vimode.py" ]]; then \
		curl --silent --location --create-dirs \
			https://raw.githubusercontent.com/tardypad/weechat-vimode/d460776130ec8e2010d7189bbd24dda3f6a0aa46/vimode.py \
			--output "$(DESTDIR)$(HOME)/.weechat/python/vimode.py"; \
		ln -s ../vimode.py "$(DESTDIR)$(HOME)/.weechat/python/autoload/vimode.py"; \
	fi

    # install go.py script if not present
	@if [[ ! -f "$(DESTDIR)$(HOME)/.weechat/python/go.py" ]]; then \
		curl --silent --location --create-dirs \
			https://raw.githubusercontent.com/weechat/scripts/dc9e69f37fcdc51f0f5a8856ef977ee3d8d8e371/python/go.py \
			--output "$(DESTDIR)$(HOME)/.weechat/python/go.py"; \
		ln -s ../go.py "$(DESTDIR)$(HOME)/.weechat/python/autoload/go.py"; \
	fi

    # install urlgrab script if not present
	@if [[ ! -f "$(DESTDIR)$(HOME)/.weechat/python/urlgrab.py" ]]; then \
		curl --silent --location --create-dirs \
			https://raw.githubusercontent.com/weechat/scripts/8171777c930875ccb10311e3e86776292f142729/python/urlgrab.py \
			--output "$(DESTDIR)$(HOME)/.weechat/python/urlgrab.py"; \
		ln -s ../urlgrab.py "$(DESTDIR)$(HOME)/.weechat/python/autoload/urlgrab.py"; \
	fi

	$(end_setup)
