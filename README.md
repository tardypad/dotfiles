Dotfiles
========

Personal configuration files

Tools:
- git [2.11](https://github.com/git/git/releases/tag/v2.11.0)
- konsole
- openssh [7.3](https://github.com/openssh/openssh-portable/releases/tag/V_7_3_P1)
- tmux [2.3](https://github.com/tmux/tmux/releases/tag/2.3)
- vim [8.0](https://github.com/vim/vim/releases/tag/v8.0.0000)
- weechat [1.7.1](https://github.com/weechat/weechat/releases/tag/v1.7.1)
- zsh [5.3](https://github.com/zsh-users/zsh/releases/tag/zsh-5.3)

Theme:  
All tools are configured to use the dark
[Solarized](http://ethanschoonover.com/solarized) color palette

Plugins managers:
- tmux: [tpm](https://github.com/tmux-plugins/tpm)
- vim: [vim-plug](https://github.com/junegunn/vim-plug)
- zsh: [zplug](https://github.com/zplug/zplug)

Setup:
```shell
usage: setup_config.zsh [<options>] [<tools>]

Setup tools' config locally and/or on remote hosts

Options:
  -h,  --help            show this message only
  -d,  --dest   DEST     only setup destinations DEST:
                           local   only setup local host
                           remote  only setup all remote hosts
                           HOST    only setup remote host HOST
                         by default local and all remote hosts are setup

Available tools: git konsole openssh tmux vim weechat zsh
If no tool argument is passed, all of them are setup
```
