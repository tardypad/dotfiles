all: zsh-configs

zsh-configs:
	mkdir -p $(DESTDIR)$(HOME)/.zsh/config.d
	mkdir -p $(DESTDIR)$(HOME)/.zsh/completions/git
	mkdir -p $(DESTDIR)$(HOME)/.zsh/functions

	$(setup_file)/configs/zsh/zlogin                                                                 > $(DESTDIR)$(HOME)/.zlogin
	$(setup_file)/configs/zsh/zprofile                                                               > $(DESTDIR)$(HOME)/.zprofile
	$(setup_file)/configs/zsh/zshenv                                                                 > $(DESTDIR)$(HOME)/.zshenv
	$(setup_file)/configs/zsh/zshrc                                                                  > $(DESTDIR)$(HOME)/.zshrc
	$(setup_file)/configs/zsh/config.d/aliases.zsh                                                   > $(DESTDIR)$(HOME)/.zsh/config.d/aliases.zsh
	$(setup_file)/configs/zsh/config.d/bindings.zsh                                                  > $(DESTDIR)$(HOME)/.zsh/config.d/bindings.zsh
	$(setup_file)/configs/zsh/config.d/completion.zsh                                                > $(DESTDIR)$(HOME)/.zsh/config.d/completion.zsh
	$(setup_file)/configs/zsh/config.d/general.zsh                                                   > $(DESTDIR)$(HOME)/.zsh/config.d/general.zsh
	$(setup_file)/configs/zsh/config.d/history.zsh                                                   > $(DESTDIR)$(HOME)/.zsh/config.d/history.zsh
	$(setup_file)/configs/zsh/config.d/plugins.zsh                                                   > $(DESTDIR)$(HOME)/.zsh/config.d/plugins.zsh
	$(setup_file)/configs/zsh/config.d/prompt.zsh                                                    > $(DESTDIR)$(HOME)/.zsh/config.d/prompt.zsh
	$(setup_file)/configs/zsh/config.d/variables.zsh                                                 > $(DESTDIR)$(HOME)/.zsh/config.d/variables.zsh
	$(setup_file)/configs/zsh/completions/_backup                                                    > $(DESTDIR)$(HOME)/.zsh/completions/_backup
	$(setup_file)/configs/zsh/completions/_do-not-disturb                                            > $(DESTDIR)$(HOME)/.zsh/completions/_do-not-disturb
	$(setup_file)/configs/zsh/completions/_documentation                                             > $(DESTDIR)$(HOME)/.zsh/completions/_documentation
	$(setup_file)/configs/zsh/completions/_extract-tokens                                            > $(DESTDIR)$(HOME)/.zsh/completions/_extract-tokens
	$(setup_file)/configs/zsh/completions/_http-env                                                  > $(DESTDIR)$(HOME)/.zsh/completions/_http-env
	$(setup_file)/configs/zsh/completions/_http-stats                                                > $(DESTDIR)$(HOME)/.zsh/completions/_http-stats
	$(setup_file)/configs/zsh/completions/_influx-env                                                > $(DESTDIR)$(HOME)/.zsh/completions/_influx-env
	$(setup_file)/configs/zsh/completions/_line-by-line                                              > $(DESTDIR)$(HOME)/.zsh/completions/_line-by-line
	$(setup_file)/configs/zsh/completions/_loop                                                      > $(DESTDIR)$(HOME)/.zsh/completions/_loop
	$(setup_file)/configs/zsh/completions/_mount-device                                              > $(DESTDIR)$(HOME)/.zsh/completions/_mount-device
	$(setup_file)/configs/zsh/completions/_mysql-env                                                 > $(DESTDIR)$(HOME)/.zsh/completions/_mysql-env
	$(setup_file)/configs/zsh/completions/_notify                                                    > $(DESTDIR)$(HOME)/.zsh/completions/_notify
	$(setup_file)/configs/zsh/completions/_pomodoro                                                  > $(DESTDIR)$(HOME)/.zsh/completions/_pomodoro
	$(setup_file)/configs/zsh/completions/_project-path                                              > $(DESTDIR)$(HOME)/.zsh/completions/_project-path
	$(setup_file)/configs/zsh/completions/_query-hosts-tags                                          > $(DESTDIR)$(HOME)/.zsh/completions/_query-hosts-tags
	$(setup_file)/configs/zsh/completions/_read-news                                                 > $(DESTDIR)$(HOME)/.zsh/completions/_read-news
	$(setup_file)/configs/zsh/completions/_redis-env                                                 > $(DESTDIR)$(HOME)/.zsh/completions/_redis-env
	$(setup_file)/configs/zsh/completions/_somafm                                                    > $(DESTDIR)$(HOME)/.zsh/completions/_somafm
	$(setup_file)/configs/zsh/completions/_ssh-tags                                                  > $(DESTDIR)$(HOME)/.zsh/completions/_ssh-tags
	$(setup_file)/configs/zsh/completions/_task                                                      > $(DESTDIR)$(HOME)/.zsh/completions/_task
	$(setup_file)/configs/zsh/completions/_task-log                                                  > $(DESTDIR)$(HOME)/.zsh/completions/_task-log
	$(setup_file)/configs/zsh/completions/_time-tracker                                              > $(DESTDIR)$(HOME)/.zsh/completions/_time-tracker
	$(setup_file)/configs/zsh/completions/_time-tracker-sum                                          > $(DESTDIR)$(HOME)/.zsh/completions/_time-tracker-sum
	$(setup_file)/configs/zsh/completions/_tmux-env                                                  > $(DESTDIR)$(HOME)/.zsh/completions/_tmux-env
	$(setup_file)/configs/zsh/completions/_url                                                       > $(DESTDIR)$(HOME)/.zsh/completions/_url
	$(setup_file)/configs/zsh/completions/git/_git-argument                                          > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-argument
	$(setup_file)/configs/zsh/completions/git/_git-hist                                              > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-hist
	$(setup_file)/configs/zsh/completions/git/_git-mgrbma                                            > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-mgrbma
	$(setup_file)/configs/zsh/completions/git/_git-push-current-branch                               > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-push-current-branch
	$(setup_file)/configs/zsh/completions/git/_git-reauthor                                          > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-reauthor
	$(setup_file)/configs/zsh/completions/git/_git-run-command                                       > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-run-command
	$(setup_file)/configs/zsh/completions/git/_git-sed                                               > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-sed
	$(setup_file)/configs/zsh/completions/git/_git-url                                               > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-url
	$(setup_file)/configs/zsh/functions/goto-project                                                 > $(DESTDIR)$(HOME)/.zsh/functions/goto-project
	$(setup_file)/configs/zsh/functions/task-log                                                     > $(DESTDIR)$(HOME)/.zsh/functions/task-log
	$(setup_file)/configs/zsh/functions/time-tracker-sum                                             > $(DESTDIR)$(HOME)/.zsh/functions/time-tracker-sum
	$(setup_file)/configs/zsh/functions/highlighters/_zsh_highlight_add_keywords_highlights          > $(DESTDIR)$(HOME)/.zsh/functions/_zsh_highlight_add_keywords_highlights
	$(setup_file)/configs/zsh/functions/highlighters/_zsh_highlight_add_positional_params_highlights > $(DESTDIR)$(HOME)/.zsh/functions/_zsh_highlight_add_positional_params_highlights
	$(setup_file)/configs/zsh/functions/highlighters/_zsh_highlight_highlighter_http_env_paint       > $(DESTDIR)$(HOME)/.zsh/functions/_zsh_highlight_highlighter_http_env_paint
	$(setup_file)/configs/zsh/functions/highlighters/_zsh_highlight_highlighter_http_env_predicate   > $(DESTDIR)$(HOME)/.zsh/functions/_zsh_highlight_highlighter_http_env_predicate
	$(setup_file)/configs/zsh/functions/highlighters/_zsh_highlight_highlighter_influx_env_paint     > $(DESTDIR)$(HOME)/.zsh/functions/_zsh_highlight_highlighter_influx_env_paint
	$(setup_file)/configs/zsh/functions/highlighters/_zsh_highlight_highlighter_influx_env_predicate > $(DESTDIR)$(HOME)/.zsh/functions/_zsh_highlight_highlighter_influx_env_predicate
	$(setup_file)/configs/zsh/functions/highlighters/_zsh_highlight_highlighter_mysql_env_paint      > $(DESTDIR)$(HOME)/.zsh/functions/_zsh_highlight_highlighter_mysql_env_paint
	$(setup_file)/configs/zsh/functions/highlighters/_zsh_highlight_highlighter_mysql_env_predicate  > $(DESTDIR)$(HOME)/.zsh/functions/_zsh_highlight_highlighter_mysql_env_predicate
	$(setup_file)/configs/zsh/functions/highlighters/_zsh_highlight_highlighter_redis_env_paint      > $(DESTDIR)$(HOME)/.zsh/functions/_zsh_highlight_highlighter_redis_env_paint
	$(setup_file)/configs/zsh/functions/highlighters/_zsh_highlight_highlighter_redis_env_predicate  > $(DESTDIR)$(HOME)/.zsh/functions/_zsh_highlight_highlighter_redis_env_predicate

	# same git completions
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
	ln -sf _git-url      $(DESTDIR)$(HOME)/.zsh/completions/git/_git-browse

	# clear completion cache
	rm -f $(DESTDIR)$(HOME)/.zcompdump
