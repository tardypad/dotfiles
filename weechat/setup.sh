#!/usr/bin/zsh

weechat::local::setup() {
  # copy config files
  local_copy "weechat/weechat/alias.conf" ".weechat/alias.conf"
  local_copy "weechat/weechat/charset.conf" ".weechat/charset.conf"
  local_copy "weechat/weechat/exec.conf" ".weechat/exec.conf"
  local_copy "weechat/weechat/fifo.conf" ".weechat/fifo.conf"
  local_copy "weechat/weechat/irc.conf" ".weechat/irc.conf"
  local_copy "weechat/weechat/logger.conf" ".weechat/logger.conf"
  local_copy "weechat/weechat/plugins.conf" ".weechat/plugins.conf"
  local_copy "weechat/weechat/relay.conf" ".weechat/relay.conf"
  local_copy "weechat/weechat/script.conf" ".weechat/script.conf"
  local_copy "weechat/weechat/sec.conf" ".weechat/sec.conf"
  local_copy "weechat/weechat/trigger.conf" ".weechat/trigger.conf"
  local_copy "weechat/weechat/weechat.conf" ".weechat/weechat.conf"
  local_copy "weechat/weechat/xfer.conf" ".weechat/xfer.conf"

  # install wee-slack if not present
  [[ -f ~/.weechat/python/autoload/wee_slack.py ]] \
    || curl --silent --location --create-dirs \
         https://raw.githubusercontent.com/rawdigits/wee-slack/master/wee_slack.py \
         --output ~/.weechat/python/autoload/wee_slack.py
}
