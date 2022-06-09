all: zsh-configs

zsh-configs:
	mkdir -p $(DESTDIR)$(HOME)/.zsh/config.d
	mkdir -p $(DESTDIR)$(HOME)/.zsh/completions/git
	mkdir -p $(DESTDIR)$(HOME)/.zsh/functions

	setup/setup-file configs/zsh/zlogin                                                                 > $(DESTDIR)$(HOME)/.zlogin
	setup/setup-file configs/zsh/zprofile                                                               > $(DESTDIR)$(HOME)/.zprofile
	setup/setup-file configs/zsh/zshenv                                                                 > $(DESTDIR)$(HOME)/.zshenv
	setup/setup-file configs/zsh/zshrc                                                                  > $(DESTDIR)$(HOME)/.zshrc
	setup/setup-file configs/zsh/config.d/10-general.zsh                                                > $(DESTDIR)$(HOME)/.zsh/config.d/10-general.zsh
	setup/setup-file configs/zsh/config.d/11-history.zsh                                                > $(DESTDIR)$(HOME)/.zsh/config.d/11-history.zsh
	setup/setup-file configs/zsh/config.d/12-prompt.zsh                                                 > $(DESTDIR)$(HOME)/.zsh/config.d/12-prompt.zsh
	setup/setup-file configs/zsh/config.d/20-completion.zsh                                             > $(DESTDIR)$(HOME)/.zsh/config.d/20-completion.zsh
	setup/setup-file configs/zsh/config.d/30-bindings.zsh                                               > $(DESTDIR)$(HOME)/.zsh/config.d/30-bindings.zsh
	setup/setup-file configs/zsh/config.d/40-aliases.zsh                                                > $(DESTDIR)$(HOME)/.zsh/config.d/40-aliases.zsh
	setup/setup-file configs/zsh/config.d/41-variables.zsh                                              > $(DESTDIR)$(HOME)/.zsh/config.d/41-variables.zsh
	setup/setup-file configs/zsh/config.d/90-plugins.zsh                                                > $(DESTDIR)$(HOME)/.zsh/config.d/90-plugins.zsh
	setup/setup-file configs/zsh/completions/_backup                                                    > $(DESTDIR)$(HOME)/.zsh/completions/_backup
	setup/setup-file configs/zsh/completions/_bluetooth                                                 > $(DESTDIR)$(HOME)/.zsh/completions/_bluetooth
	setup/setup-file configs/zsh/completions/_clock                                                     > $(DESTDIR)$(HOME)/.zsh/completions/_clock
	setup/setup-file configs/zsh/completions/_do-not-disturb                                            > $(DESTDIR)$(HOME)/.zsh/completions/_do-not-disturb
	setup/setup-file configs/zsh/completions/_documentation                                             > $(DESTDIR)$(HOME)/.zsh/completions/_documentation
	setup/setup-file configs/zsh/completions/_extract-tokens                                            > $(DESTDIR)$(HOME)/.zsh/completions/_extract-tokens
	setup/setup-file configs/zsh/completions/_http-env                                                  > $(DESTDIR)$(HOME)/.zsh/completions/_http-env
	setup/setup-file configs/zsh/completions/_http-stats                                                > $(DESTDIR)$(HOME)/.zsh/completions/_http-stats
	setup/setup-file configs/zsh/completions/_influx-env                                                > $(DESTDIR)$(HOME)/.zsh/completions/_influx-env
	setup/setup-file configs/zsh/completions/_line-by-line                                              > $(DESTDIR)$(HOME)/.zsh/completions/_line-by-line
	setup/setup-file configs/zsh/completions/_loop                                                      > $(DESTDIR)$(HOME)/.zsh/completions/_loop
	setup/setup-file configs/zsh/completions/_mount-device                                              > $(DESTDIR)$(HOME)/.zsh/completions/_mount-device
	setup/setup-file configs/zsh/completions/_mysql-env                                                 > $(DESTDIR)$(HOME)/.zsh/completions/_mysql-env
	setup/setup-file configs/zsh/completions/_notify                                                    > $(DESTDIR)$(HOME)/.zsh/completions/_notify
	setup/setup-file configs/zsh/completions/_pomodoro                                                  > $(DESTDIR)$(HOME)/.zsh/completions/_pomodoro
	setup/setup-file configs/zsh/completions/_project-path                                              > $(DESTDIR)$(HOME)/.zsh/completions/_project-path
	setup/setup-file configs/zsh/completions/_query-hosts-tags                                          > $(DESTDIR)$(HOME)/.zsh/completions/_query-hosts-tags
	setup/setup-file configs/zsh/completions/_read-news                                                 > $(DESTDIR)$(HOME)/.zsh/completions/_read-news
	setup/setup-file configs/zsh/completions/_redis-env                                                 > $(DESTDIR)$(HOME)/.zsh/completions/_redis-env
	setup/setup-file configs/zsh/completions/_schedule                                                  > $(DESTDIR)$(HOME)/.zsh/completions/_schedule
	setup/setup-file configs/zsh/completions/_screencast                                                > $(DESTDIR)$(HOME)/.zsh/completions/_screencast
	setup/setup-file configs/zsh/completions/_screenshot                                                > $(DESTDIR)$(HOME)/.zsh/completions/_screenshot
	setup/setup-file configs/zsh/completions/_somafm                                                    > $(DESTDIR)$(HOME)/.zsh/completions/_somafm
	setup/setup-file configs/zsh/completions/_ssh-tags                                                  > $(DESTDIR)$(HOME)/.zsh/completions/_ssh-tags
	setup/setup-file configs/zsh/completions/_task                                                      > $(DESTDIR)$(HOME)/.zsh/completions/_task
	setup/setup-file configs/zsh/completions/_theme                                                     > $(DESTDIR)$(HOME)/.zsh/completions/_theme
	setup/setup-file configs/zsh/completions/_time-tracker                                              > $(DESTDIR)$(HOME)/.zsh/completions/_time-tracker
	setup/setup-file configs/zsh/completions/_time-tracker-day                                          > $(DESTDIR)$(HOME)/.zsh/completions/_time-tracker-day
	setup/setup-file configs/zsh/completions/_tmux-env                                                  > $(DESTDIR)$(HOME)/.zsh/completions/_tmux-env
	setup/setup-file configs/zsh/completions/_url                                                       > $(DESTDIR)$(HOME)/.zsh/completions/_url
	setup/setup-file configs/zsh/completions/git/_git-argument                                          > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-argument
	setup/setup-file configs/zsh/completions/git/_git-ci                                                > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-ci
	setup/setup-file configs/zsh/completions/git/_git-hist                                              > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-hist
	setup/setup-file configs/zsh/completions/git/_git-mgrbma                                            > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-mgrbma
	setup/setup-file configs/zsh/completions/git/_git-push-current-branch                               > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-push-current-branch
	setup/setup-file configs/zsh/completions/git/_git-reauthor                                          > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-reauthor
	setup/setup-file configs/zsh/completions/git/_git-run-command                                       > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-run-command
	setup/setup-file configs/zsh/completions/git/_git-sed                                               > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-sed
	setup/setup-file configs/zsh/completions/git/_git-semantic-tag                                      > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-semantic-tag
	setup/setup-file configs/zsh/completions/git/_git-url                                               > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-url
	setup/setup-file configs/zsh/functions/dirsum                                                       > $(DESTDIR)$(HOME)/.zsh/functions/dirsum
	setup/setup-file configs/zsh/functions/goto-project                                                 > $(DESTDIR)$(HOME)/.zsh/functions/goto-project
	setup/setup-file configs/zsh/functions/init-todo                                                    > $(DESTDIR)$(HOME)/.zsh/functions/init-todo
	setup/setup-file configs/zsh/functions/mkcd                                                         > $(DESTDIR)$(HOME)/.zsh/functions/mkcd
	setup/setup-file configs/zsh/functions/task-log                                                     > $(DESTDIR)$(HOME)/.zsh/functions/task-log
	setup/setup-file configs/zsh/functions/time-tracker-overview                                        > $(DESTDIR)$(HOME)/.zsh/functions/time-tracker-overview
	setup/setup-file configs/zsh/functions/time-tracker-sum                                             > $(DESTDIR)$(HOME)/.zsh/functions/time-tracker-sum
	setup/setup-file configs/zsh/functions/highlighters/_zsh_highlight_add_keywords_highlights          > $(DESTDIR)$(HOME)/.zsh/functions/_zsh_highlight_add_keywords_highlights
	setup/setup-file configs/zsh/functions/highlighters/_zsh_highlight_add_positional_params_highlights > $(DESTDIR)$(HOME)/.zsh/functions/_zsh_highlight_add_positional_params_highlights
	setup/setup-file configs/zsh/functions/highlighters/_zsh_highlight_highlighter_http_env_paint       > $(DESTDIR)$(HOME)/.zsh/functions/_zsh_highlight_highlighter_http_env_paint
	setup/setup-file configs/zsh/functions/highlighters/_zsh_highlight_highlighter_http_env_predicate   > $(DESTDIR)$(HOME)/.zsh/functions/_zsh_highlight_highlighter_http_env_predicate
	setup/setup-file configs/zsh/functions/highlighters/_zsh_highlight_highlighter_influx_env_paint     > $(DESTDIR)$(HOME)/.zsh/functions/_zsh_highlight_highlighter_influx_env_paint
	setup/setup-file configs/zsh/functions/highlighters/_zsh_highlight_highlighter_influx_env_predicate > $(DESTDIR)$(HOME)/.zsh/functions/_zsh_highlight_highlighter_influx_env_predicate
	setup/setup-file configs/zsh/functions/highlighters/_zsh_highlight_highlighter_mysql_env_paint      > $(DESTDIR)$(HOME)/.zsh/functions/_zsh_highlight_highlighter_mysql_env_paint
	setup/setup-file configs/zsh/functions/highlighters/_zsh_highlight_highlighter_mysql_env_predicate  > $(DESTDIR)$(HOME)/.zsh/functions/_zsh_highlight_highlighter_mysql_env_predicate
	setup/setup-file configs/zsh/functions/highlighters/_zsh_highlight_highlighter_redis_env_paint      > $(DESTDIR)$(HOME)/.zsh/functions/_zsh_highlight_highlighter_redis_env_paint
	setup/setup-file configs/zsh/functions/highlighters/_zsh_highlight_highlighter_redis_env_predicate  > $(DESTDIR)$(HOME)/.zsh/functions/_zsh_highlight_highlighter_redis_env_predicate

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
