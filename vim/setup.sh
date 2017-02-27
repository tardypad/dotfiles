#!/usr/bin/zsh

local_setup_vim() {
  # create necessary directories
  mkdir -p ~/.vim/{backup,swap,undo}

  # copy config files
  local_copy "vim/vimrc" ".vimrc"
  local_copy "vim/vim/plugins.vim" ".vim/plugins.vim"
  local_copy "vim/vim/conf" ".vim/conf"

  # install the plugins manager if not present
  [[ -f ~/.vim/autoload/plug.vim ]] \
    || curl --silent --location --create-dirs \
         https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim \
         --output ~/.vim/autoload/plug.vim

  # load only the plugins definition and install them
  vim -N --noplugin -u ~/.vim/plugins.vim \
    +PlugInstall +qall \
    > /dev/null 2>&1
}
