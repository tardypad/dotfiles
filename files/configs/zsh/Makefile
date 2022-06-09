all: zsh-configs

zsh-configs:
	mkdir -p $(DESTDIR)$(HOME)/.zsh/config.d
	mkdir -p $(DESTDIR)$(HOME)/.zsh/completions/git
	mkdir -p $(DESTDIR)$(HOME)/.zsh/functions

	THEME=$(THEME) setup/setup-file configs/zsh/zlogin                                                                 > $(DESTDIR)$(HOME)/.zlogin
	THEME=$(THEME) setup/setup-file configs/zsh/zprofile                                                               > $(DESTDIR)$(HOME)/.zprofile
	THEME=$(THEME) setup/setup-file configs/zsh/zshenv                                                                 > $(DESTDIR)$(HOME)/.zshenv
	THEME=$(THEME) setup/setup-file configs/zsh/zshrc                                                                  > $(DESTDIR)$(HOME)/.zshrc
	THEME=$(THEME) setup/setup-file configs/zsh/config.d/10-general.zsh                                                > $(DESTDIR)$(HOME)/.zsh/config.d/10-general.zsh
	THEME=$(THEME) setup/setup-file configs/zsh/config.d/11-history.zsh                                                > $(DESTDIR)$(HOME)/.zsh/config.d/11-history.zsh
	THEME=$(THEME) setup/setup-file configs/zsh/config.d/12-prompt.zsh                                                 > $(DESTDIR)$(HOME)/.zsh/config.d/12-prompt.zsh
	THEME=$(THEME) setup/setup-file configs/zsh/config.d/20-completion.zsh                                             > $(DESTDIR)$(HOME)/.zsh/config.d/20-completion.zsh
	THEME=$(THEME) setup/setup-file configs/zsh/config.d/30-bindings.zsh                                               > $(DESTDIR)$(HOME)/.zsh/config.d/30-bindings.zsh
	THEME=$(THEME) setup/setup-file configs/zsh/config.d/40-aliases.zsh                                                > $(DESTDIR)$(HOME)/.zsh/config.d/40-aliases.zsh
	THEME=$(THEME) setup/setup-file configs/zsh/config.d/41-variables.zsh                                              > $(DESTDIR)$(HOME)/.zsh/config.d/41-variables.zsh
	THEME=$(THEME) setup/setup-file configs/zsh/config.d/90-plugins.zsh                                                > $(DESTDIR)$(HOME)/.zsh/config.d/90-plugins.zsh
	THEME=$(THEME) setup/setup-file configs/zsh/completions/_backup                                                    > $(DESTDIR)$(HOME)/.zsh/completions/_backup
	THEME=$(THEME) setup/setup-file configs/zsh/completions/_bluetooth                                                 > $(DESTDIR)$(HOME)/.zsh/completions/_bluetooth
	THEME=$(THEME) setup/setup-file configs/zsh/completions/_clock                                                     > $(DESTDIR)$(HOME)/.zsh/completions/_clock
	THEME=$(THEME) setup/setup-file configs/zsh/completions/_do-not-disturb                                            > $(DESTDIR)$(HOME)/.zsh/completions/_do-not-disturb
	THEME=$(THEME) setup/setup-file configs/zsh/completions/_documentation                                             > $(DESTDIR)$(HOME)/.zsh/completions/_documentation
	THEME=$(THEME) setup/setup-file configs/zsh/completions/_extract-tokens                                            > $(DESTDIR)$(HOME)/.zsh/completions/_extract-tokens
	THEME=$(THEME) setup/setup-file configs/zsh/completions/_http-env                                                  > $(DESTDIR)$(HOME)/.zsh/completions/_http-env
	THEME=$(THEME) setup/setup-file configs/zsh/completions/_http-stats                                                > $(DESTDIR)$(HOME)/.zsh/completions/_http-stats
	THEME=$(THEME) setup/setup-file configs/zsh/completions/_influx-env                                                > $(DESTDIR)$(HOME)/.zsh/completions/_influx-env
	THEME=$(THEME) setup/setup-file configs/zsh/completions/_line-by-line                                              > $(DESTDIR)$(HOME)/.zsh/completions/_line-by-line
	THEME=$(THEME) setup/setup-file configs/zsh/completions/_loop                                                      > $(DESTDIR)$(HOME)/.zsh/completions/_loop
	THEME=$(THEME) setup/setup-file configs/zsh/completions/_mount-device                                              > $(DESTDIR)$(HOME)/.zsh/completions/_mount-device
	THEME=$(THEME) setup/setup-file configs/zsh/completions/_mysql-env                                                 > $(DESTDIR)$(HOME)/.zsh/completions/_mysql-env
	THEME=$(THEME) setup/setup-file configs/zsh/completions/_notify                                                    > $(DESTDIR)$(HOME)/.zsh/completions/_notify
	THEME=$(THEME) setup/setup-file configs/zsh/completions/_pomodoro                                                  > $(DESTDIR)$(HOME)/.zsh/completions/_pomodoro
	THEME=$(THEME) setup/setup-file configs/zsh/completions/_project-path                                              > $(DESTDIR)$(HOME)/.zsh/completions/_project-path
	THEME=$(THEME) setup/setup-file configs/zsh/completions/_query-hosts-tags                                          > $(DESTDIR)$(HOME)/.zsh/completions/_query-hosts-tags
	THEME=$(THEME) setup/setup-file configs/zsh/completions/_read-news                                                 > $(DESTDIR)$(HOME)/.zsh/completions/_read-news
	THEME=$(THEME) setup/setup-file configs/zsh/completions/_redis-env                                                 > $(DESTDIR)$(HOME)/.zsh/completions/_redis-env
	THEME=$(THEME) setup/setup-file configs/zsh/completions/_schedule                                                  > $(DESTDIR)$(HOME)/.zsh/completions/_schedule
	THEME=$(THEME) setup/setup-file configs/zsh/completions/_screencast                                                > $(DESTDIR)$(HOME)/.zsh/completions/_screencast
	THEME=$(THEME) setup/setup-file configs/zsh/completions/_screenshot                                                > $(DESTDIR)$(HOME)/.zsh/completions/_screenshot
	THEME=$(THEME) setup/setup-file configs/zsh/completions/_somafm                                                    > $(DESTDIR)$(HOME)/.zsh/completions/_somafm
	THEME=$(THEME) setup/setup-file configs/zsh/completions/_ssh-tags                                                  > $(DESTDIR)$(HOME)/.zsh/completions/_ssh-tags
	THEME=$(THEME) setup/setup-file configs/zsh/completions/_task                                                      > $(DESTDIR)$(HOME)/.zsh/completions/_task
	THEME=$(THEME) setup/setup-file configs/zsh/completions/_theme                                                     > $(DESTDIR)$(HOME)/.zsh/completions/_theme
	THEME=$(THEME) setup/setup-file configs/zsh/completions/_time-tracker                                              > $(DESTDIR)$(HOME)/.zsh/completions/_time-tracker
	THEME=$(THEME) setup/setup-file configs/zsh/completions/_time-tracker-day                                          > $(DESTDIR)$(HOME)/.zsh/completions/_time-tracker-day
	THEME=$(THEME) setup/setup-file configs/zsh/completions/_tmux-env                                                  > $(DESTDIR)$(HOME)/.zsh/completions/_tmux-env
	THEME=$(THEME) setup/setup-file configs/zsh/completions/_url                                                       > $(DESTDIR)$(HOME)/.zsh/completions/_url
	THEME=$(THEME) setup/setup-file configs/zsh/completions/git/_git-argument                                          > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-argument
	THEME=$(THEME) setup/setup-file configs/zsh/completions/git/_git-ci                                                > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-ci
	THEME=$(THEME) setup/setup-file configs/zsh/completions/git/_git-hist                                              > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-hist
	THEME=$(THEME) setup/setup-file configs/zsh/completions/git/_git-mgrbma                                            > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-mgrbma
	THEME=$(THEME) setup/setup-file configs/zsh/completions/git/_git-push-current-branch                               > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-push-current-branch
	THEME=$(THEME) setup/setup-file configs/zsh/completions/git/_git-reauthor                                          > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-reauthor
	THEME=$(THEME) setup/setup-file configs/zsh/completions/git/_git-run-command                                       > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-run-command
	THEME=$(THEME) setup/setup-file configs/zsh/completions/git/_git-sed                                               > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-sed
	THEME=$(THEME) setup/setup-file configs/zsh/completions/git/_git-semantic-tag                                      > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-semantic-tag
	THEME=$(THEME) setup/setup-file configs/zsh/completions/git/_git-url                                               > $(DESTDIR)$(HOME)/.zsh/completions/git/_git-url
	THEME=$(THEME) setup/setup-file configs/zsh/functions/dirsum                                                       > $(DESTDIR)$(HOME)/.zsh/functions/dirsum
	THEME=$(THEME) setup/setup-file configs/zsh/functions/goto-project                                                 > $(DESTDIR)$(HOME)/.zsh/functions/goto-project
	THEME=$(THEME) setup/setup-file configs/zsh/functions/init-todo                                                    > $(DESTDIR)$(HOME)/.zsh/functions/init-todo
	THEME=$(THEME) setup/setup-file configs/zsh/functions/mkcd                                                         > $(DESTDIR)$(HOME)/.zsh/functions/mkcd
	THEME=$(THEME) setup/setup-file configs/zsh/functions/task-log                                                     > $(DESTDIR)$(HOME)/.zsh/functions/task-log
	THEME=$(THEME) setup/setup-file configs/zsh/functions/time-tracker-overview                                        > $(DESTDIR)$(HOME)/.zsh/functions/time-tracker-overview
	THEME=$(THEME) setup/setup-file configs/zsh/functions/time-tracker-sum                                             > $(DESTDIR)$(HOME)/.zsh/functions/time-tracker-sum
	THEME=$(THEME) setup/setup-file configs/zsh/functions/highlighters/_zsh_highlight_add_keywords_highlights          > $(DESTDIR)$(HOME)/.zsh/functions/_zsh_highlight_add_keywords_highlights
	THEME=$(THEME) setup/setup-file configs/zsh/functions/highlighters/_zsh_highlight_add_positional_params_highlights > $(DESTDIR)$(HOME)/.zsh/functions/_zsh_highlight_add_positional_params_highlights
	THEME=$(THEME) setup/setup-file configs/zsh/functions/highlighters/_zsh_highlight_highlighter_http_env_paint       > $(DESTDIR)$(HOME)/.zsh/functions/_zsh_highlight_highlighter_http_env_paint
	THEME=$(THEME) setup/setup-file configs/zsh/functions/highlighters/_zsh_highlight_highlighter_http_env_predicate   > $(DESTDIR)$(HOME)/.zsh/functions/_zsh_highlight_highlighter_http_env_predicate
	THEME=$(THEME) setup/setup-file configs/zsh/functions/highlighters/_zsh_highlight_highlighter_influx_env_paint     > $(DESTDIR)$(HOME)/.zsh/functions/_zsh_highlight_highlighter_influx_env_paint
	THEME=$(THEME) setup/setup-file configs/zsh/functions/highlighters/_zsh_highlight_highlighter_influx_env_predicate > $(DESTDIR)$(HOME)/.zsh/functions/_zsh_highlight_highlighter_influx_env_predicate
	THEME=$(THEME) setup/setup-file configs/zsh/functions/highlighters/_zsh_highlight_highlighter_mysql_env_paint      > $(DESTDIR)$(HOME)/.zsh/functions/_zsh_highlight_highlighter_mysql_env_paint
	THEME=$(THEME) setup/setup-file configs/zsh/functions/highlighters/_zsh_highlight_highlighter_mysql_env_predicate  > $(DESTDIR)$(HOME)/.zsh/functions/_zsh_highlight_highlighter_mysql_env_predicate
	THEME=$(THEME) setup/setup-file configs/zsh/functions/highlighters/_zsh_highlight_highlighter_redis_env_paint      > $(DESTDIR)$(HOME)/.zsh/functions/_zsh_highlight_highlighter_redis_env_paint
	THEME=$(THEME) setup/setup-file configs/zsh/functions/highlighters/_zsh_highlight_highlighter_redis_env_predicate  > $(DESTDIR)$(HOME)/.zsh/functions/_zsh_highlight_highlighter_redis_env_predicate

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
