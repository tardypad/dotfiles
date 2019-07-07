.POSIX:
.DEFAULT: all

THEME = light

CONFIG_DIR = $(HOME)/.config
DATA_DIR   = $(HOME)/.local/share
CACHE_DIR  = $(HOME)/.cache

start_setup = printf "… setup $@"
end_setup   = printf "\r✔ setup $@\n"
setup_file  = colors/substitute_placeholders $(THEME) packages/$@

include packages/aria2/Makefile
include packages/coreutils/Makefile
include packages/fontconfig/Makefile
include packages/git/Makefile
include packages/gnupg/Makefile
include packages/htop/Makefile
include packages/httpie/Makefile
include packages/i3blocks/Makefile
include packages/less/Makefile
include packages/libqalculate/Makefile
include packages/mako/Makefile
include packages/mopidy/Makefile
include packages/ncmpcpp/Makefile
include packages/neomutt/Makefile
include packages/newsboat/Makefile
include packages/openssh/Makefile
include packages/qutebrowser/Makefile
include packages/rbtools/Makefile
include packages/tmux/Makefile
include packages/sway/Makefile
include packages/swaylock/Makefile
include packages/systemd/Makefile
include packages/termite/Makefile
include packages/translate-shell/Makefile
include packages/universal-ctags/Makefile
include packages/util-linux/Makefile
include packages/vifm/Makefile
include packages/vim/Makefile
include packages/weechat/Makefile
include packages/xdg-user-dirs/Makefile
include packages/xdg-utils/Makefile
include packages/zathura/Makefile
include packages/zsh/Makefile

include data/applications/Makefile
include data/images/Makefile
include data/sounds/Makefile
