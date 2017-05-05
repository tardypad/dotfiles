#!/usr/bin/zsh

weechat::local::setup() {
  # create necessary directories
  mkdir -p ~/.weechat/{python,perl}/autoload

  # copy config files
  local_copy "weechat/weechat/alias.conf" ".weechat/alias.conf"
  local_copy "weechat/weechat/buffers.conf" ".weechat/buffers.conf"
  local_copy "weechat/weechat/charset.conf" ".weechat/charset.conf"
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
}
