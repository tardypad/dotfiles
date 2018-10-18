zsh:
	$(start_setup)

	$(call copy_file,zshrc,$(HOME)/.zshrc)
	$(call copy_file,zshenv,$(HOME)/.zshenv)
	$(call copy_file,zlogin,$(HOME)/.zlogin)
	$(call copy_file,zprofile,$(HOME)/.zprofile)
	$(call copy_folder,config.d,$(HOME)/.zsh/config.d)
	$(call copy_folder,scripts,$(HOME)/.zsh/scripts)
	$(call copy_folder,functions,$(HOME)/.zsh/functions)
	$(call copy_folder,completions,$(HOME)/.zsh/completions)

ifneq (,$(wildcard packages/zsh/env/tmux))
	$(call copy_folder,env/tmux,$(CONFIG_DIR)/tmux/env)
endif

ifneq (,$(wildcard packages/zsh/env/mysql))
	$(call copy_folder,env/mysql,$(CONFIG_DIR)/mysql/env)
endif

ifneq (,$(wildcard packages/zsh/env/http))
	$(call copy_folder,env/http,$(CONFIG_DIR)/http/env)
endif

ifneq (,$(wildcard packages/zsh/env/redis))
	$(call copy_folder,env/redis,$(CONFIG_DIR)/redis/env)
endif

ifneq (,$(wildcard packages/zsh/env/influxdb))
	$(call copy_folder,env/influxdb,$(CONFIG_DIR)/influxdb/env)
endif

	$(end_setup)
