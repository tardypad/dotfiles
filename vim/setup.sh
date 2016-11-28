#!/usr/bin/zsh

setup_vim() {
  # copy config files
  copy "vim/vimrc" ".vimrc"
  [[ -d ~/.vim ]] || mkdir ~/.vim
  copy "vim/vim/plug.vim" ".vim/plug.vim"
  copy "vim/vim/plug" ".vim/plug"
  copy "vim/vim/conf" ".vim/conf"

  # install the plugins manager if not present
  [[ -f ~/.vim/autoload/plug.vim ]] \
    || curl --silent --location --create-dirs \
         https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim \
         --output ~/.vim/autoload/plug.vim

  # load only the plugins definition and install them
  vim -N --noplugin -u ~/.vim/plug.vim \
    +PlugInstall +qall \
    > /dev/null 2>&1
}
