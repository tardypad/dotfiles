all: env

env:
	mkdir -p $(DESTDIR)$(DATA_DIR)/env/tmux/general
	mkdir -p $(DESTDIR)$(DATA_DIR)/env/tmux/projects

	cp files/data/env/tmux/general/dashboard.sh      $(DESTDIR)$(DATA_DIR)/env/tmux/general/dashboard.sh
	cp files/data/env/tmux/projects/alpine_system.sh $(DESTDIR)$(DATA_DIR)/env/tmux/projects/alpine_system.sh
	cp files/data/env/tmux/projects/arch_system.sh   $(DESTDIR)$(DATA_DIR)/env/tmux/projects/arch_system.sh
	cp files/data/env/tmux/projects/dotfiles.sh      $(DESTDIR)$(DATA_DIR)/env/tmux/projects/dotfiles.sh
	cp files/data/env/tmux/projects/plott.sh         $(DESTDIR)$(DATA_DIR)/env/tmux/projects/plott.sh
	cp files/data/env/tmux/projects/takang.sh        $(DESTDIR)$(DATA_DIR)/env/tmux/projects/takang.sh
	cp files/data/env/tmux/projects/tardypad_me.sh   $(DESTDIR)$(DATA_DIR)/env/tmux/projects/tardypad_me.sh

	chmod +x $(DESTDIR)$(DATA_DIR)/env/tmux/general/*
	chmod +x $(DESTDIR)$(DATA_DIR)/env/tmux/projects/*
