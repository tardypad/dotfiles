.POSIX:

all:
	echo "THEME=$(THEME)" > $(DESTDIR)$(DATA_DIR)/theme

THEME = light

CACHE_DIR  = $(HOME)/.cache
CONFIG_DIR = $(HOME)/.config
DATA_DIR   = $(HOME)/.local/share

-include $(DATA_DIR)/theme

export DESTDIR
export THEME
export THEME_FILES = $(DESTDIR)$(DATA_DIR)/theme_files

include files/configs/aerc/Makefile
include files/configs/aria2/Makefile
include files/configs/bat/Makefile
include files/configs/coreutils/Makefile
include files/configs/ctags/Makefile
include files/configs/fontconfig/Makefile
include files/configs/foot/Makefile
include files/configs/fuzzel/Makefile
include files/configs/gammastep/Makefile
include files/configs/git/Makefile
include files/configs/gnupg/Makefile
include files/configs/htop/Makefile
include files/configs/httpie/Makefile
include files/configs/i3blocks/Makefile
include files/configs/imv/Makefile
include files/configs/isync/Makefile
include files/configs/khard/Makefile
include files/configs/less/Makefile
include files/configs/libqalculate/Makefile
include files/configs/mako/Makefile
include files/configs/misc/Makefile
include files/configs/mpd/Makefile
include files/configs/neovim/Makefile
include files/configs/openssh/Makefile
include files/configs/pulsemixer/Makefile
include files/configs/qutebrowser/Makefile
include files/configs/remind/Makefile
include files/configs/ripgrep/Makefile
include files/configs/sfeed/Makefile
include files/configs/sway/Makefile
include files/configs/swayidle/Makefile
include files/configs/swaylock/Makefile
include files/configs/systemd/Makefile
include files/configs/tmux/Makefile
include files/configs/translate-shell/Makefile
include files/configs/vdirsyncer/Makefile
include files/configs/w3m/Makefile
include files/configs/wayprompt/Makefile
include files/configs/weechat/Makefile
include files/configs/zathura/Makefile
include files/configs/zsh/Makefile

include files/data/env/Makefile
include files/data/images/Makefile
include files/data/keywords/Makefile
include files/data/sounds/Makefile
include files/data/tasks/Makefile

include files/docs/git/Makefile
include files/docs/shell/Makefile
include files/docs/sway/Makefile
include files/docs/tmux/Makefile

include files/scripts/git/Makefile
include files/scripts/i3blocks/Makefile
include files/scripts/shell/Makefile
include files/scripts/sway/Makefile
include files/scripts/tmux/Makefile

include files/Makefile

check:
	find files/scripts -type f ! -name Makefile -exec shellcheck {} \;

clean:
	rm -rf build
