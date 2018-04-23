weechat:
	$(start_setup)

    # create necessary installation directories
	@mkdir --parents $(HOME)/.weechat/python/autoload
	@mkdir --parents $(HOME)/.weechat/perl/autoload

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
	@if [[ ! -f "$(HOME)/.weechat/python/wee_slack.py" ]]; then \
		curl --silent --location --create-dirs \
			https://raw.githubusercontent.com/rawdigits/wee-slack/master/wee_slack.py \
			--output "$(HOME)/.weechat/python/wee_slack.py"; \
		ln -s ../wee_slack.py "$(HOME)/.weechat/python/autoload/wee_slack.py"; \
	fi

    # install colorize_nicks.py script if not present
	@if [[ ! -f "$(HOME)/.weechat/python/colorize_nicks.py" ]]; then \
		curl --silent --location --create-dirs \
			https://weechat.org/files/scripts/colorize_nicks.py \
			--output "$(HOME)/.weechat/python/colorize_nicks.py"; \
		ln -s ../colorize_nicks.py "$(HOME)/.weechat/python/autoload/colorize_nicks.py"; \
	fi

    # install vimode script if not present
	@if [[ ! -f "$(HOME)/.weechat/python/vimode.py" ]]; then \
		curl --silent --location --create-dirs \
			https://raw.githubusercontent.com/tardypad/weechat-vimode/master/vimode.py \
			--output "$(HOME)/.weechat/python/vimode.py"; \
		ln -s ../vimode.py "$(HOME)/.weechat/python/autoload/vimode.py"; \
	fi

    # install go.py script if not present
	@if [[ ! -f "$(HOME)/.weechat/python/go.py" ]]; then \
		curl --silent --location --create-dirs \
			https://weechat.org/files/scripts/go.py \
			--output "$(HOME)/.weechat/python/go.py"; \
		ln -s ../go.py "$(HOME)/.weechat/python/autoload/go.py"; \
	fi

    # install urlgrab script if not present
	@if [[ ! -f "$(HOME)/.weechat/python/urlgrab.py" ]]; then \
		curl --silent --location --create-dirs \
			https://weechat.org/files/scripts/urlgrab.py \
			--output "$(HOME)/.weechat/python/urlgrab.py"; \
		ln -s ../urlgrab.py "$(HOME)/.weechat/python/autoload/urlgrab.py"; \
	fi

	$(end_setup)
