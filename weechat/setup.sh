#!/usr/bin/env zsh

weechat::setup() {
  # create necessary directories
  mkdir -p "${HOME}/.weechat/"{python,perl}/autoload

  # copy config files
  copy "weechat/weechat/alias.conf" "${HOME}/.weechat/alias.conf"
  copy "weechat/weechat/buflist.conf" "${HOME}/.weechat/buflist.conf"
  copy "weechat/weechat/charset.conf" "${HOME}/.weechat/charset.conf"
  copy "weechat/weechat/colorize_nicks.conf" "${HOME}/.weechat/colorize_nicks.conf"
  copy "weechat/weechat/exec.conf" "${HOME}/.weechat/exec.conf"
  copy "weechat/weechat/fifo.conf" "${HOME}/.weechat/fifo.conf"
  copy "weechat/weechat/irc.conf" "${HOME}/.weechat/irc.conf"
  copy "weechat/weechat/logger.conf" "${HOME}/.weechat/logger.conf"
  copy "weechat/weechat/plugins.conf" "${HOME}/.weechat/plugins.conf"
  copy "weechat/weechat/relay.conf" "${HOME}/.weechat/relay.conf"
  copy "weechat/weechat/script.conf" "${HOME}/.weechat/script.conf"
  copy "weechat/weechat/trigger.conf" "${HOME}/.weechat/trigger.conf"
  copy "weechat/weechat/urlgrab.conf" "${HOME}/.weechat/urlgrab.conf"
  copy "weechat/weechat/weechat.conf" "${HOME}/.weechat/weechat.conf"
  copy "weechat/weechat/xfer.conf" "${HOME}/.weechat/xfer.conf"

  # install wee-slack if not present
  # version from github is more recent than one in weechat scripts repo
  if [[ ! -f "${HOME}/.weechat/python/wee_slack.py" ]]; then
    curl --silent --location --create-dirs \
      https://raw.githubusercontent.com/rawdigits/wee-slack/master/wee_slack.py \
      --output "${HOME}/.weechat/python/wee_slack.py"
    ln -s ../wee_slack.py "${HOME}/.weechat/python/autoload/wee_slack.py"
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
      https://raw.githubusercontent.com/tardypad/weechat-vimode/master/vimode.py \
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
