#!/usr/bin/zsh

weechat::local::setup() {
  # create necessary directories
  mkdir -p ~/.weechat/{python,perl}/autoload

  # copy config files
  local_copy "weechat/weechat/alias.conf" ".weechat/alias.conf"
  local_copy "weechat/weechat/buffers.conf" ".weechat/buffers.conf"
  local_copy "weechat/weechat/charset.conf" ".weechat/charset.conf"
  local_copy "weechat/weechat/colorize_nicks.conf" ".weechat/colorize_nicks.conf"
  local_copy "weechat/weechat/exec.conf" ".weechat/exec.conf"
  local_copy "weechat/weechat/fifo.conf" ".weechat/fifo.conf"
  local_copy "weechat/weechat/irc.conf" ".weechat/irc.conf"
  local_copy "weechat/weechat/logger.conf" ".weechat/logger.conf"
  local_copy "weechat/weechat/plugins.conf" ".weechat/plugins.conf"
  local_copy "weechat/weechat/relay.conf" ".weechat/relay.conf"
  local_copy "weechat/weechat/script.conf" ".weechat/script.conf"
  local_copy "weechat/weechat/trigger.conf" ".weechat/trigger.conf"
  local_copy "weechat/weechat/weechat.conf" ".weechat/weechat.conf"
  local_copy "weechat/weechat/xfer.conf" ".weechat/xfer.conf"

  # install wee-slack if not present
  # version from github is more recent than one in weechat scripts repo
  if [[ ! -f ~/.weechat/python/wee_slack.py ]]; then
    curl --silent --location --create-dirs \
      https://raw.githubusercontent.com/rawdigits/wee-slack/master/wee_slack.py \
      --output ~/.weechat/python/wee_slack.py
    ln -s ../wee_slack.py ~/.weechat/python/autoload/wee_slack.py
  fi

  # install buffers.pl script if not present
  if [[ ! -f ~/.weechat/perl/buffers.pl ]]; then
    curl --silent --location --create-dirs \
      https://weechat.org/files/scripts/buffers.pl \
      --output ~/.weechat/perl/buffers.pl
    ln -s ../buffers.pl ~/.weechat/perl/autoload/buffers.pl
  fi

  # install colorize_nicks.py script if not present
  if [[ ! -f ~/.weechat/python/colorize_nicks.py ]]; then
    curl --silent --location --create-dirs \
      https://weechat.org/files/scripts/colorize_nicks.py \
      --output ~/.weechat/python/colorize_nicks.py
    ln -s ../colorize_nicks.py ~/.weechat/python/autoload/colorize_nicks.py
  fi

  # install vimode script if not present
  if [[ ! -f ~/.weechat/python/vimode.py ]]; then
    curl --silent --location --create-dirs \
      https://raw.githubusercontent.com/GermainZ/weechat-vimode/master/vimode.py \
      --output ~/.weechat/python/vimode.py
    ln -s ../vimode.py ~/.weechat/python/autoload/vimode.py
  fi

  # install go.py script if not present
  if [[ ! -f ~/.weechat/python/go.py ]]; then
    curl --silent --location --create-dirs \
      https://weechat.org/files/scripts/go.py \
      --output ~/.weechat/python/go.py
    ln -s ../go.py ~/.weechat/python/autoload/go.py
  fi

  # install urlgrab script if not present
  if [[ ! -f ~/.weechat/python/urlgrab.py ]]; then
    curl --silent --location --create-dirs \
      https://weechat.org/files/scripts/urlgrab.py \
      --output ~/.weechat/python/urlgrab.py
    ln -s ../urlgrab.py ~/.weechat/python/autoload/urlgrab.py
  fi
}
