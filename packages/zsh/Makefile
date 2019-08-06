all: zsh

zsh:
	$(start_setup)

	mkdir -p $(DESTDIR)$(HOME)/.zsh/config.d
	mkdir -p $(DESTDIR)$(HOME)/.zsh/completions/git
	mkdir -p $(DESTDIR)$(HOME)/.zsh/functions

	$(setup_packages_file)/zshrc                                    > $(DESTDIR)$(HOME)/.zshrc
	$(setup_packages_file)/zshenv                                   > $(DESTDIR)$(HOME)/.zshenv
	$(setup_packages_file)/zlogin                                   > $(DESTDIR)$(HOME)/.zlogin
	$(setup_packages_file)/zprofile                                 > $(DESTDIR)$(HOME)/.zprofile
	$(setup_packages_file)/config.d/aliases.zsh                     > $(DESTDIR)$(HOME)/.zsh/config.d/aliases.zsh
	$(setup_packages_file)/config.d/bindings.zsh                    > $(DESTDIR)$(HOME)/.zsh/config.d/bindings.zsh
	$(setup_packages_file)/config.d/completion.zsh                  > $(DESTDIR)$(HOME)/.zsh/config.d/completion.zsh
	$(setup_packages_file)/config.d/general.zsh                     > $(DESTDIR)$(HOME)/.zsh/config.d/general.zsh
	$(setup_packages_file)/config.d/history.zsh                     > $(DESTDIR)$(HOME)/.zsh/config.d/history.zsh
	$(setup_packages_file)/config.d/plugins.zsh                     > $(DESTDIR)$(HOME)/.zsh/config.d/plugins.zsh
	$(setup_packages_file)/config.d/prompt.zsh                      > $(DESTDIR)$(HOME)/.zsh/config.d/prompt.zsh
	$(setup_packages_file)/config.d/variables.zsh                   > $(DESTDIR)$(HOME)/.zsh/config.d/variables.zsh
	$(setup_packages_file)/completions/_do-not-disturb              > $(DESTDIR)$(HOME)/.zsh/completions/_do-not-disturb
	$(setup_packages_file)/completions/_help                        > $(DESTDIR)$(HOME)/.zsh/completions/_help
	$(setup_packages_file)/completions/_http-env                    > $(DESTDIR)$(HOME)/.zsh/completions/_http-env
	$(setup_packages_file)/completions/_influx-env                  > $(DESTDIR)$(HOME)/.zsh/completions/_influx-env
	$(setup_packages_file)/completions/_loop                        > $(DESTDIR)$(HOME)/.zsh/completions/_loop
	$(setup_packages_file)/completions/_mysql-env                   > $(DESTDIR)$(HOME)/.zsh/completions/_mysql-env
	$(setup_packages_file)/completions/_notify                      > $(DESTDIR)$(HOME)/.zsh/completions/_notify
	$(setup_packages_file)/completions/_pacman-pkgdiff              > $(DESTDIR)$(HOME)/.zsh/completions/_pacman-pkgdiff
	$(setup_packages_file)/completions/_pomodoro                    > $(DESTDIR)$(HOME)/.zsh/completions/_pomodoro
	$(setup_packages_file)/completions/_project-path                > $(DESTDIR)$(HOME)/.zsh/completions/_project-path
	$(setup_packages_file)/completions/_query-hosts-tags            > $(DESTDIR)$(HOME)/.zsh/completions/_query-hosts-tags
	$(setup_packages_file)/completions/_rbt                         > $(DESTDIR)$(HOME)/.zsh/completions/_rbt
	$(setup_packages_file)/completions/_redis-env                   > $(DESTDIR)$(HOME)/.zsh/completions/_redis-env
	$(setup_packages_file)/completions/_ssh-tags                    > $(DESTDIR)$(HOME)/.zsh/completions/_ssh-tags
	$(setup_packages_file)/completions/_tmux-env                    > $(DESTDIR)$(HOME)/.zsh/completions/_tmux-env
	$(setup_packages_file)/completions/git/_git-argument            > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-argument
	$(setup_packages_file)/completions/git/_git-hist                > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-hist
	$(setup_packages_file)/completions/git/_git-mgrbma              > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-mgrbma
	$(setup_packages_file)/completions/git/_git-push-current-branch > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-push-current-branch
	$(setup_packages_file)/completions/git/_git-reauthor            > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-reauthor
	$(setup_packages_file)/completions/git/_git-run-command         > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-run-command
	$(setup_packages_file)/completions/git/_git-sed                 > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-sed
	$(setup_packages_file)/completions/git/_git-stamp               > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-stamp
	$(setup_packages_file)/completions/git/_git-url                 > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-url
	$(setup_packages_file)/functions/goto-project                   > $(DESTDIR)$(HOME)/.zsh/functions/goto-project

    # same git completions
	ln -sf _git-url      $(DESTDIR)$(HOME)/.zsh/completions/git/_git-browse
	ln -sf _git-argument $(DESTDIR)$(HOME)/.zsh/completions/git/_git-bwc
	ln -sf _git-argument $(DESTDIR)$(HOME)/.zsh/completions/git/_git-bwi
	ln -sf _git-argument $(DESTDIR)$(HOME)/.zsh/completions/git/_git-bwr
	ln -sf _git-argument $(DESTDIR)$(HOME)/.zsh/completions/git/_git-commit-description
	ln -sf _git-argument $(DESTDIR)$(HOME)/.zsh/completions/git/_git-commit-issue-id
	ln -sf _git-argument $(DESTDIR)$(HOME)/.zsh/completions/git/_git-commit-review-id
	ln -sf _git-argument $(DESTDIR)$(HOME)/.zsh/completions/git/_git-commit-subject
	ln -sf _git-argument $(DESTDIR)$(HOME)/.zsh/completions/git/_git-head
	ln -sf _git-argument $(DESTDIR)$(HOME)/.zsh/completions/git/_git-rbi
	ln -sf _git-argument $(DESTDIR)$(HOME)/.zsh/completions/git/_git-sh
	ln -sf _git-argument $(DESTDIR)$(HOME)/.zsh/completions/git/_git-sh0
	ln -sf _git-argument $(DESTDIR)$(HOME)/.zsh/completions/git/_git-urlc
	ln -sf _git-argument $(DESTDIR)$(HOME)/.zsh/completions/git/_git-urli
	ln -sf _git-argument $(DESTDIR)$(HOME)/.zsh/completions/git/_git-urlr

    # clear completion cache
	if [ -z $(DESTDIR) ] ; then \
		rm -f $(HOME)/.zcompdump; \
	fi
