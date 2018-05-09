# XDG common folders
CONFIG_DIR := $(if $(XDG_CONFIG_HOME),$(XDG_CONFIG_HOME),$(HOME)/.config)
DATA_DIR := $(if $(XDG_DATA_HOME),$(XDG_DATA_HOME),$(HOME)/.local/share)
CACHE_DIR := $(if $(XDG_CACHE_HOME),$(XDG_CACHE_HOME),$(HOME)/.cache)

# detect all tools target
TOOLS := $(subst /,, $(dir $(wildcard */Makefile)))

# default target first
# install all tools
all: $(TOOLS)
.PHONY: all $(TOOLS)

# info display macros
start_setup = @echo -n "… setup $@"
end_setup   = @echo -e "\r✔ setup $@"

# copy macros
define copy_file
	@mkdir --parents $(dir $(2))
	@cp $@/$(1) $(2)
endef
define copy_folder
	@mkdir --parents $(dir $(2))
	@cp --recursive --force --no-target-directory $@/$(1) $(2)
endef

# all Makefiles could be included with "include */Makefile"
# or "$(foreach tool, $(TOOLS), $(eval include $(tool)/Makefile))"
# but then we lose the autocompletion in the command line :(
include aria2/Makefile
include coreutils/Makefile
include fontconfig/Makefile
include git/Makefile
include gnupg/Makefile
include gnuplot/Makefile
include htop-vim/Makefile
include httpie/Makefile
include http-prompt/Makefile
include i3blocks/Makefile
include less/Makefile
include libqalculate/Makefile
include mopidy/Makefile
include mycli/Makefile
include ncmpcpp/Makefile
include neomutt/Makefile
include newsboat/Makefile
include notes/Makefile
include openssh/Makefile
include pacman/Makefile
include qutebrowser/Makefile
include rbtools/Makefile
include readline/Makefile
include tmux/Makefile
include sway/Makefile
include systemd/Makefile
include termite/Makefile
include translate-shell/Makefile
include universal-ctags/Makefile
include util-linux/Makefile
include vifm/Makefile
include vim/Makefile
include weechat/Makefile
include xdg-user-dirs/Makefile
include xdg-utils/Makefile
include zathura/Makefile
include zsh/Makefile
