all: env

env:
	$(start_setup)

	mkdir -p $(DESTDIR)$(DATA_DIR)/env/tmux/projects

	cp data/env/tmux/projects/arch_packages.sh $(DESTDIR)$(DATA_DIR)/env/tmux/projects/arch_packages.sh
	cp data/env/tmux/projects/dotfiles.sh      $(DESTDIR)$(DATA_DIR)/env/tmux/projects/dotfiles.sh
	cp data/env/tmux/projects/tardypad_me.sh   $(DESTDIR)$(DATA_DIR)/env/tmux/projects/tardypad_me.sh

	chmod +x $(DESTDIR)$(DATA_DIR)/env/tmux/projects/*

	$(end_setup)
