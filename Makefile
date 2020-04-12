.POSIX:
.DEFAULT: all

THEME = light

MAN_SUFFIX = perso

BIN_DIR    = $(HOME)/.local/bin
CACHE_DIR  = $(HOME)/.cache
CONFIG_DIR = $(HOME)/.config
DATA_DIR   = $(HOME)/.local/share

setup_file = { setup/substitute-colors $(THEME) | setup/substitute-dirs | setup/substitute-apps | setup/substitute-keys; } < files

include files/configs/alacritty/Makefile
include files/configs/aria2/Makefile
include files/configs/coreutils/Makefile
include files/configs/fontconfig/Makefile
include files/configs/git/Makefile
include files/configs/gnupg/Makefile
include files/configs/htop/Makefile
include files/configs/httpie/Makefile
include files/configs/i3blocks/Makefile
include files/configs/imv/Makefile
include files/configs/less/Makefile
include files/configs/libqalculate/Makefile
include files/configs/mako/Makefile
include files/configs/mpd/Makefile
include files/configs/neomutt/Makefile
include files/configs/openssh/Makefile
include files/configs/qutebrowser/Makefile
include files/configs/sfeed/Makefile
include files/configs/sway/Makefile
include files/configs/swaylock/Makefile
include files/configs/systemd/Makefile
include files/configs/tmux/Makefile
include files/configs/translate-shell/Makefile
include files/configs/universal-ctags/Makefile
include files/configs/vim/Makefile
include files/configs/w3m/Makefile
include files/configs/weechat/Makefile
include files/configs/zathura/Makefile
include files/configs/zsh/Makefile

include files/data/env/Makefile
include files/data/images/Makefile
include files/data/keywords/Makefile
include files/data/sounds/Makefile

include files/docs/git/Makefile
include files/docs/i3blocks/Makefile
include files/docs/shell/Makefile
include files/docs/sway/Makefile
include files/docs/tmux/Makefile

include files/scripts/git/Makefile
include files/scripts/i3blocks/Makefile
include files/scripts/shell/Makefile
include files/scripts/sway/Makefile
include files/scripts/tmux/Makefile

include files/Makefile

clean:
	rm -rf build
