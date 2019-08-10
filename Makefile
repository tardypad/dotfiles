.POSIX:
.SILENT:
.DEFAULT: all

THEME = light

BIN_DIR    = $(HOME)/.local/bin
CACHE_DIR  = $(HOME)/.cache
CONFIG_DIR = $(HOME)/.config
DATA_DIR   = $(HOME)/.local/share

start_setup = printf "setup $@\n"

setup_file = { setup/substitute_colors $(THEME) | setup/substitute_dirs; } < files

include files/configs/aria2/Makefile
include files/configs/coreutils/Makefile
include files/configs/fontconfig/Makefile
include files/configs/git/Makefile
include files/configs/gnupg/Makefile
include files/configs/htop/Makefile
include files/configs/httpie/Makefile
include files/configs/i3blocks/Makefile
include files/configs/less/Makefile
include files/configs/libqalculate/Makefile
include files/configs/mako/Makefile
include files/configs/mopidy/Makefile
include files/configs/ncmpcpp/Makefile
include files/configs/neomutt/Makefile
include files/configs/newsboat/Makefile
include files/configs/openssh/Makefile
include files/configs/qutebrowser/Makefile
include files/configs/rbtools/Makefile
include files/configs/tmux/Makefile
include files/configs/sway/Makefile
include files/configs/swaylock/Makefile
include files/configs/systemd/Makefile
include files/configs/termite/Makefile
include files/configs/translate-shell/Makefile
include files/configs/universal-ctags/Makefile
include files/configs/util-linux/Makefile
include files/configs/vim/Makefile
include files/configs/weechat/Makefile
include files/configs/xdg-user-dirs/Makefile
include files/configs/xdg-utils/Makefile
include files/configs/zathura/Makefile
include files/configs/zsh/Makefile

include files/data/applications/Makefile
include files/data/env/Makefile
include files/data/images/Makefile
include files/data/sounds/Makefile

include files/docs/git/Makefile
include files/docs/shell/Makefile
include files/docs/sway/Makefile

include files/scripts/git/Makefile
include files/scripts/i3blocks/Makefile
include files/scripts/shell/Makefile
include files/scripts/sway/Makefile
include files/scripts/tmux/Makefile

include files/Makefile
