.POSIX:
.SILENT:
.DEFAULT: all

THEME = light

CONFIG_DIR = $(HOME)/.config
DATA_DIR   = $(HOME)/.local/share
CACHE_DIR  = $(HOME)/.cache

start_setup = printf "setup $@\n"

setup_configs_file = colors/substitute_placeholders $(THEME) configs/$@
setup_scripts_file = colors/substitute_placeholders $(THEME) scripts/

include configs/aria2/Makefile
include configs/coreutils/Makefile
include configs/fontconfig/Makefile
include configs/git/Makefile
include configs/gnupg/Makefile
include configs/htop/Makefile
include configs/httpie/Makefile
include configs/i3blocks/Makefile
include configs/less/Makefile
include configs/libqalculate/Makefile
include configs/mako/Makefile
include configs/mopidy/Makefile
include configs/ncmpcpp/Makefile
include configs/neomutt/Makefile
include configs/newsboat/Makefile
include configs/openssh/Makefile
include configs/qutebrowser/Makefile
include configs/rbtools/Makefile
include configs/tmux/Makefile
include configs/sway/Makefile
include configs/swaylock/Makefile
include configs/systemd/Makefile
include configs/termite/Makefile
include configs/translate-shell/Makefile
include configs/universal-ctags/Makefile
include configs/util-linux/Makefile
include configs/vim/Makefile
include configs/weechat/Makefile
include configs/xdg-user-dirs/Makefile
include configs/xdg-utils/Makefile
include configs/zathura/Makefile
include configs/zsh/Makefile

include data/applications/Makefile
include data/env/Makefile
include data/images/Makefile
include data/sounds/Makefile

include docs/Makefile
include scripts/Makefile
