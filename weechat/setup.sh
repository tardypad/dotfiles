#!/usr/bin/env zsh

weechat::local::setup() {
  # create necessary directories
  mkdir -p "${HOME}/.weechat/"{python,perl}/autoload

  # copy config files
  local_copy "weechat/weechat/alias.conf" "${HOME}/.weechat/alias.conf"
  local_copy "weechat/weechat/buffers.conf" "${HOME}/.weechat/buffers.conf"
  local_copy "weechat/weechat/charset.conf" "${HOME}/.weechat/charset.conf"
  local_copy "weechat/weechat/colorize_nicks.conf" "${HOME}/.weechat/colorize_nicks.conf"
  local_copy "weechat/weechat/exec.conf" "${HOME}/.weechat/exec.conf"
  local_copy "weechat/weechat/fifo.conf" "${HOME}/.weechat/fifo.conf"
  local_copy "weechat/weechat/irc.conf" "${HOME}/.weechat/irc.conf"
  local_copy "weechat/weechat/logger.conf" "${HOME}/.weechat/logger.conf"
  local_copy "weechat/weechat/plugins.conf" "${HOME}/.weechat/plugins.conf"
  local_copy "weechat/weechat/relay.conf" "${HOME}/.weechat/relay.conf"
  local_copy "weechat/weechat/script.conf" "${HOME}/.weechat/script.conf"
  local_copy "weechat/weechat/trigger.conf" "${HOME}/.weechat/trigger.conf"
  local_copy "weechat/weechat/weechat.conf" "${HOME}/.weechat/weechat.conf"
  local_copy "weechat/weechat/xfer.conf" "${HOME}/.weechat/xfer.conf"

  # install wee-slack if not present
  # version from github is more recent than one in weechat scripts repo
  if [[ ! -f "${HOME}/.weechat/python/wee_slack.py" ]]; then
    curl --silent --location --create-dirs \
      https://raw.githubusercontent.com/rawdigits/wee-slack/master/wee_slack.py \
      --output "${HOME}/.weechat/python/wee_slack.py"
    ln -s ../wee_slack.py "${HOME}/.weechat/python/autoload/wee_slack.py"
  fi

  # install buffers.pl script if not present
  if [[ ! -f "${HOME}/.weechat/perl/buffers.pl" ]]; then
    curl --silent --location --create-dirs \
      https://weechat.org/files/scripts/buffers.pl \
      --output "${HOME}/.weechat/perl/buffers.pl"
    ln -s ../buffers.pl "${HOME}/.weechat/perl/autoload/buffers.pl"
  fi

  # install colorize_nicks.py script if not present
  if [[ ! -f "${HOME}/.weechat/python/colorize_nicks.py" ]]; then
    curl --silent --location --create-dirs \
      https://weechat.org/files/scripts/colorize_nicks.py \
      --output "${HOME}/.weechat/python/colorize_nicks.py"
    ln -s ../colorize_nicks.py "${HOME}/.weechat/python/autoload/colorize_nicks.py"
  fi

  # install vimode script if not present
  if [[ ! -f "${HOME}/.weechat/python/vimode.py" ]]; then
    curl --silent --location --create-dirs \
      https://raw.githubusercontent.com/GermainZ/weechat-vimode/master/vimode.py \
      --output "${HOME}/.weechat/python/vimode.py"
    ln -s ../vimode.py "${HOME}/.weechat/python/autoload/vimode.py"
  fi

  # install go.py script if not present
  if [[ ! -f "${HOME}/.weechat/python/go.py" ]]; then
    curl --silent --location --create-dirs \
      https://weechat.org/files/scripts/go.py \
      --output "${HOME}/.weechat/python/go.py"
    ln -s ../go.py "${HOME}/.weechat/python/autoload/go.py"
  fi

  # install urlgrab script if not present
  if [[ ! -f "${HOME}/.weechat/python/urlgrab.py" ]]; then
    curl --silent --location --create-dirs \
      https://weechat.org/files/scripts/urlgrab.py \
      --output "${HOME}/.weechat/python/urlgrab.py"
    ln -s ../urlgrab.py "${HOME}/.weechat/python/autoload/urlgrab.py"
  fi
}
