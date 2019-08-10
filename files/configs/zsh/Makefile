all: zsh-configs

zsh-configs:
	$(start_setup)

	mkdir -p $(DESTDIR)$(HOME)/.zsh/config.d
	mkdir -p $(DESTDIR)$(HOME)/.zsh/completions/git
	mkdir -p $(DESTDIR)$(HOME)/.zsh/functions

	$(setup_configs_file)/zsh/zshrc                                    > $(DESTDIR)$(HOME)/.zshrc
	$(setup_configs_file)/zsh/zshenv                                   > $(DESTDIR)$(HOME)/.zshenv
	$(setup_configs_file)/zsh/zlogin                                   > $(DESTDIR)$(HOME)/.zlogin
	$(setup_configs_file)/zsh/zprofile                                 > $(DESTDIR)$(HOME)/.zprofile
	$(setup_configs_file)/zsh/config.d/aliases.zsh                     > $(DESTDIR)$(HOME)/.zsh/config.d/aliases.zsh
	$(setup_configs_file)/zsh/config.d/bindings.zsh                    > $(DESTDIR)$(HOME)/.zsh/config.d/bindings.zsh
	$(setup_configs_file)/zsh/config.d/completion.zsh                  > $(DESTDIR)$(HOME)/.zsh/config.d/completion.zsh
	$(setup_configs_file)/zsh/config.d/general.zsh                     > $(DESTDIR)$(HOME)/.zsh/config.d/general.zsh
	$(setup_configs_file)/zsh/config.d/history.zsh                     > $(DESTDIR)$(HOME)/.zsh/config.d/history.zsh
	$(setup_configs_file)/zsh/config.d/plugins.zsh                     > $(DESTDIR)$(HOME)/.zsh/config.d/plugins.zsh
	$(setup_configs_file)/zsh/config.d/prompt.zsh                      > $(DESTDIR)$(HOME)/.zsh/config.d/prompt.zsh
	$(setup_configs_file)/zsh/config.d/variables.zsh                   > $(DESTDIR)$(HOME)/.zsh/config.d/variables.zsh
	$(setup_configs_file)/zsh/completions/_do-not-disturb              > $(DESTDIR)$(HOME)/.zsh/completions/_do-not-disturb
	$(setup_configs_file)/zsh/completions/_help                        > $(DESTDIR)$(HOME)/.zsh/completions/_help
	$(setup_configs_file)/zsh/completions/_http-env                    > $(DESTDIR)$(HOME)/.zsh/completions/_http-env
	$(setup_configs_file)/zsh/completions/_influx-env                  > $(DESTDIR)$(HOME)/.zsh/completions/_influx-env
	$(setup_configs_file)/zsh/completions/_loop                        > $(DESTDIR)$(HOME)/.zsh/completions/_loop
	$(setup_configs_file)/zsh/completions/_mysql-env                   > $(DESTDIR)$(HOME)/.zsh/completions/_mysql-env
	$(setup_configs_file)/zsh/completions/_notify                      > $(DESTDIR)$(HOME)/.zsh/completions/_notify
	$(setup_configs_file)/zsh/completions/_pacman-pkgdiff              > $(DESTDIR)$(HOME)/.zsh/completions/_pacman-pkgdiff
	$(setup_configs_file)/zsh/completions/_pomodoro                    > $(DESTDIR)$(HOME)/.zsh/completions/_pomodoro
	$(setup_configs_file)/zsh/completions/_project-path                > $(DESTDIR)$(HOME)/.zsh/completions/_project-path
	$(setup_configs_file)/zsh/completions/_query-hosts-tags            > $(DESTDIR)$(HOME)/.zsh/completions/_query-hosts-tags
	$(setup_configs_file)/zsh/completions/_rbt                         > $(DESTDIR)$(HOME)/.zsh/completions/_rbt
	$(setup_configs_file)/zsh/completions/_redis-env                   > $(DESTDIR)$(HOME)/.zsh/completions/_redis-env
	$(setup_configs_file)/zsh/completions/_ssh-tags                    > $(DESTDIR)$(HOME)/.zsh/completions/_ssh-tags
	$(setup_configs_file)/zsh/completions/_tmux-env                    > $(DESTDIR)$(HOME)/.zsh/completions/_tmux-env
	$(setup_configs_file)/zsh/completions/git/_git-argument            > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-argument
	$(setup_configs_file)/zsh/completions/git/_git-hist                > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-hist
	$(setup_configs_file)/zsh/completions/git/_git-mgrbma              > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-mgrbma
	$(setup_configs_file)/zsh/completions/git/_git-push-current-branch > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-push-current-branch
	$(setup_configs_file)/zsh/completions/git/_git-reauthor            > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-reauthor
	$(setup_configs_file)/zsh/completions/git/_git-run-command         > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-run-command
	$(setup_configs_file)/zsh/completions/git/_git-sed                 > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-sed
	$(setup_configs_file)/zsh/completions/git/_git-stamp               > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-stamp
	$(setup_configs_file)/zsh/completions/git/_git-url                 > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-url
	$(setup_configs_file)/zsh/functions/goto-project                   > $(DESTDIR)$(HOME)/.zsh/functions/goto-project

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
