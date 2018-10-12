# XDG common folders
CONFIG_DIR := $(if $(XDG_CONFIG_HOME),$(XDG_CONFIG_HOME),$(HOME)/.config)
DATA_DIR := $(if $(XDG_DATA_HOME),$(XDG_DATA_HOME),$(HOME)/.local/share)
CACHE_DIR := $(if $(XDG_CACHE_HOME),$(XDG_CACHE_HOME),$(HOME)/.cache)

# detect all packages target
PACKAGES := $(subst /,,$(dir $(subst packages/,,$(wildcard packages/*/Makefile))))

IS_LOCAL_INSTALL := $(if $(DESTDIR),'false','true')

# default target first
# install all packages
all: $(PACKAGES)
.PHONY: all $(PACKAGES)

# info display macros
start_setup = @echo -n "… setup $@"
end_setup   = @echo -e "\r✔ setup $@"

# copy macros
define copy_file
	@mkdir --parents $(DESTDIR)$(dir $(2))
	@cp packages/$@/$(1) $(DESTDIR)$(2)
endef
define copy_folder
	@mkdir --parents $(DESTDIR)$(dir $(2))
	@cp --recursive --force --no-target-directory packages/$@/$(1) $(DESTDIR)$(2)
endef

# all Makefiles could be included with "include */Makefile"
# or "$(foreach package, $(PACKAGES), $(eval include $(package)/Makefile))"
# but then we lose the autocompletion in the command line :(
include packages/aria2/Makefile
include packages/coreutils/Makefile
include packages/fontconfig/Makefile
include packages/git/Makefile
include packages/gnupg/Makefile
include packages/gnuplot/Makefile
include packages/htop/Makefile
include packages/httpie/Makefile
include packages/i3blocks/Makefile
include packages/less/Makefile
include packages/libqalculate/Makefile
include packages/mopidy/Makefile
include packages/ncmpcpp/Makefile
include packages/neomutt/Makefile
include packages/newsboat/Makefile
include packages/notes/Makefile
include packages/openssh/Makefile
include packages/pacman/Makefile
include packages/qutebrowser/Makefile
include packages/rbtools/Makefile
include packages/tmux/Makefile
include packages/sway/Makefile
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
