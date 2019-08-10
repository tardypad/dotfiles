all: env

env:
	$(start_setup)

	mkdir -p $(DESTDIR)$(DATA_DIR)/env/tmux/projects

	cp files/data/env/tmux/projects/arch_packages.sh $(DESTDIR)$(DATA_DIR)/env/tmux/projects/arch_packages.sh
	cp files/data/env/tmux/projects/dotfiles.sh      $(DESTDIR)$(DATA_DIR)/env/tmux/projects/dotfiles.sh
	cp files/data/env/tmux/projects/tardypad_me.sh   $(DESTDIR)$(DATA_DIR)/env/tmux/projects/tardypad_me.sh

	chmod +x $(DESTDIR)$(DATA_DIR)/env/tmux/projects/*
