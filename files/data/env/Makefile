all: env

env:
	mkdir -p $(DESTDIR)$(DATA_DIR)/env/tmux/general
	mkdir -p $(DESTDIR)$(DATA_DIR)/env/tmux/projects
	mkdir -p $(DESTDIR)$(DATA_DIR)/env/tmux/trainings

	cp files/data/env/tmux/general/dashboard.sh            $(DESTDIR)$(DATA_DIR)/env/tmux/general/dashboard.sh
	cp files/data/env/tmux/projects/alpine_system.sh       $(DESTDIR)$(DATA_DIR)/env/tmux/projects/alpine_system.sh
	cp files/data/env/tmux/projects/arch_system.sh         $(DESTDIR)$(DATA_DIR)/env/tmux/projects/arch_system.sh
	cp files/data/env/tmux/projects/dotfiles.sh            $(DESTDIR)$(DATA_DIR)/env/tmux/projects/dotfiles.sh
	cp files/data/env/tmux/projects/wend.sh                $(DESTDIR)$(DATA_DIR)/env/tmux/projects/wend.sh
	cp files/data/env/tmux/projects/tardypad_me.sh         $(DESTDIR)$(DATA_DIR)/env/tmux/projects/tardypad_me.sh
	cp files/data/env/tmux/trainings/git_atomic_commits.sh $(DESTDIR)$(DATA_DIR)/env/tmux/trainings/git_atomic_commits.sh

	chmod +x $(DESTDIR)$(DATA_DIR)/env/tmux/general/*
	chmod +x $(DESTDIR)$(DATA_DIR)/env/tmux/projects/*
	chmod +x $(DESTDIR)$(DATA_DIR)/env/tmux/trainings/*
