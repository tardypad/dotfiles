#!/usr/bin/env zsh

vim::setup() {
  # create necessary directories
  mkdir -p "${HOME}/.vim/"{backup,swap,undo}

  # copy config files
  copy "vim/vimrc" "${HOME}/.vimrc"
  copy "vim/vim/plugins.vim" "${HOME}/.vim/plugins.vim"
  copy "vim/vim/conf" "${HOME}/.vim/conf"

  # install the plugins manager if not present
  [[ -f "${HOME}/.vim/autoload/plug.vim" ]] \
    || curl --silent --location --create-dirs \
         https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim \
         --output "${HOME}/.vim/autoload/plug.vim"

  # Manually install icinga2 syntax if not present
  # not a real plugin, just one file of a bigger repository
  [[ -f "${HOME}/.vim/plugged/icinga2/syntax/icinga2.vim" ]] \
    || curl --silent --location --create-dirs \
         https://raw.githubusercontent.com/Icinga/icinga2/master/tools/syntax/vim/syntax/icinga2.vim \
         --output "${HOME}/.vim/plugged/icinga2/syntax/icinga2.vim"

  # Manually install neomutt syntax if not present
  # not a real plugin, just one file of a bigger repository
  [[ -f "${HOME}/.vim/plugged/neomutt/syntax/neomutt.vim" ]] \
    || curl --silent --location --create-dirs \
         https://raw.githubusercontent.com/neomutt/neomutt/master/doc/neomutt-syntax.vim \
         --output "${HOME}/.vim/plugged/neomutt/syntax/neomutt.vim"

  # Manually install pass noplaintext feature if not present
  # not a real plugin, just one file of a bigger repository
  [[ -f "${HOME}/.vim/plugged/pass/plugin/noplaintext.vim" ]] \
    || curl --silent --location --create-dirs \
         https://git.zx2c4.com/password-store/plain/contrib/vim/noplaintext.vim \
         --output "${HOME}/.vim/plugged/pass/plugin/noplaintext.vim"

  # load only the plugins definition and install them
  vim -N --noplugin -u "${HOME}/.vim/plugins.vim" \
    +PlugInstall +qall \
    > /dev/null 2>&1
}
