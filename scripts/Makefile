all: script

script:
	$(start_setup)

	mkdir -p $(DESTDIR)$(CONFIG_DIR)/git/scripts
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/i3blocks/scripts
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/sway/scripts
	mkdir -p $(DESTDIR)$(HOME)/.tmux/scripts
	mkdir -p $(DESTDIR)$(HOME)/.zsh/scripts

	$(setup_scripts_file)/git/git-init-todo                 > $(DESTDIR)$(CONFIG_DIR)/git/scripts/git-init-todo
	$(setup_scripts_file)/git/git-reauthor                  > $(DESTDIR)$(CONFIG_DIR)/git/scripts/git-reauthor
	$(setup_scripts_file)/git/git-run-command               > $(DESTDIR)$(CONFIG_DIR)/git/scripts/git-run-command
	$(setup_scripts_file)/git/git-sed                       > $(DESTDIR)$(CONFIG_DIR)/git/scripts/git-sed
	$(setup_scripts_file)/git/git-stamp                     > $(DESTDIR)$(CONFIG_DIR)/git/scripts/git-stamp
	$(setup_scripts_file)/git/git-url                       > $(DESTDIR)$(CONFIG_DIR)/git/scripts/git-url

	$(setup_scripts_file)/i3blocks/bluetooth                > $(DESTDIR)$(CONFIG_DIR)/i3blocks/scripts/bluetooth
	$(setup_scripts_file)/i3blocks/chat                     > $(DESTDIR)$(CONFIG_DIR)/i3blocks/scripts/chat
	$(setup_scripts_file)/i3blocks/datetime                 > $(DESTDIR)$(CONFIG_DIR)/i3blocks/scripts/datetime
	$(setup_scripts_file)/i3blocks/do_not_disturb           > $(DESTDIR)$(CONFIG_DIR)/i3blocks/scripts/do_not_disturb
	$(setup_scripts_file)/i3blocks/music                    > $(DESTDIR)$(CONFIG_DIR)/i3blocks/scripts/music
	$(setup_scripts_file)/i3blocks/network                  > $(DESTDIR)$(CONFIG_DIR)/i3blocks/scripts/network
	$(setup_scripts_file)/i3blocks/pomodoro                 > $(DESTDIR)$(CONFIG_DIR)/i3blocks/scripts/pomodoro
	$(setup_scripts_file)/i3blocks/power                    > $(DESTDIR)$(CONFIG_DIR)/i3blocks/scripts/power
	$(setup_scripts_file)/i3blocks/volume                   > $(DESTDIR)$(CONFIG_DIR)/i3blocks/scripts/volume

	$(setup_scripts_file)/sway/app_chat                     > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/app_chat
	$(setup_scripts_file)/sway/app_mail                     > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/app_mail
	$(setup_scripts_file)/sway/app_monitor                  > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/app_monitor
	$(setup_scripts_file)/sway/app_music                    > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/app_music
	$(setup_scripts_file)/sway/app_news                     > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/app_news
	$(setup_scripts_file)/sway/app_tmux_env                 > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/app_tmux_env
	$(setup_scripts_file)/sway/bar_status_mode              > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/bar_status_mode
	$(setup_scripts_file)/sway/check_notify_low_battery     > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/check_notify_low_battery
	$(setup_scripts_file)/sway/check_notify_package_updates > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/check_notify_package_updates
	$(setup_scripts_file)/sway/color_picker                 > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/color_picker
	$(setup_scripts_file)/sway/command_input                > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/command_input
	$(setup_scripts_file)/sway/command_input_exec           > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/command_input_exec
	$(setup_scripts_file)/sway/create_workspace             > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/create_workspace
	$(setup_scripts_file)/sway/exec_desktop_entry           > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/exec_desktop_entry
	$(setup_scripts_file)/sway/focus_window_title           > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/focus_window_title
	$(setup_scripts_file)/sway/fzf_launcher                 > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/fzf_launcher
	$(setup_scripts_file)/sway/grab_region_screenshot       > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/grab_region_screenshot
	$(setup_scripts_file)/sway/launch_app                   > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/launch_app
	$(setup_scripts_file)/sway/launch_command               > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/launch_command
	$(setup_scripts_file)/sway/launcher                     > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/launcher
	$(setup_scripts_file)/sway/launch_note                  > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/launch_note
	$(setup_scripts_file)/sway/launch_password              > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/launch_password
	$(setup_scripts_file)/sway/launch_system                > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/launch_system
	$(setup_scripts_file)/sway/launch_tmux_env              > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/launch_tmux_env
	$(setup_scripts_file)/sway/move_window_new_workspace    > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/move_window_new_workspace
	$(setup_scripts_file)/sway/notify                       > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/notify
	$(setup_scripts_file)/sway/notify_end_pomodoro          > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/notify_end_pomodoro
	$(setup_scripts_file)/sway/notify_tmux_alert            > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/notify_tmux_alert
	$(setup_scripts_file)/sway/rename_workspace             > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/rename_workspace
	$(setup_scripts_file)/sway/run_command                  > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/run_command

	$(setup_scripts_file)/tmux/extract_tokens.sh            > $(DESTDIR)$(HOME)/.tmux/scripts/extract_tokens.sh
	$(setup_scripts_file)/tmux/move_pane_window_index.sh    > $(DESTDIR)$(HOME)/.tmux/scripts/move_pane_window_index.sh
	$(setup_scripts_file)/tmux/move_window_index.sh         > $(DESTDIR)$(HOME)/.tmux/scripts/move_window_index.sh
	$(setup_scripts_file)/tmux/notify_alert.sh              > $(DESTDIR)$(HOME)/.tmux/scripts/notify_alert.sh
	$(setup_scripts_file)/tmux/select_pane_vim.sh           > $(DESTDIR)$(HOME)/.tmux/scripts/select_pane_vim.sh
	$(setup_scripts_file)/tmux/toggle_monitor_activity.sh   > $(DESTDIR)$(HOME)/.tmux/scripts/toggle_monitor_activity.sh
	$(setup_scripts_file)/tmux/toggle_monitor_silence.sh    > $(DESTDIR)$(HOME)/.tmux/scripts/toggle_monitor_silence.sh
	$(setup_scripts_file)/tmux/toggle_no_distraction.sh     > $(DESTDIR)$(HOME)/.tmux/scripts/toggle_no_distraction.sh

	$(setup_scripts_file)/shell/backup-bookmarks            > $(DESTDIR)$(HOME)/.zsh/scripts/backup-bookmarks
	$(setup_scripts_file)/shell/backup-notes                > $(DESTDIR)$(HOME)/.zsh/scripts/backup-notes
	$(setup_scripts_file)/shell/battery_status              > $(DESTDIR)$(HOME)/.zsh/scripts/battery_status
	$(setup_scripts_file)/shell/do-not-disturb              > $(DESTDIR)$(HOME)/.zsh/scripts/do-not-disturb
	$(setup_scripts_file)/shell/help                        > $(DESTDIR)$(HOME)/.zsh/scripts/help
	$(setup_scripts_file)/shell/http-env                    > $(DESTDIR)$(HOME)/.zsh/scripts/http-env
	$(setup_scripts_file)/shell/influx-env                  > $(DESTDIR)$(HOME)/.zsh/scripts/influx-env
	$(setup_scripts_file)/shell/loop                        > $(DESTDIR)$(HOME)/.zsh/scripts/loop
	$(setup_scripts_file)/shell/man                         > $(DESTDIR)$(HOME)/.zsh/scripts/man
	$(setup_scripts_file)/shell/mysql-env                   > $(DESTDIR)$(HOME)/.zsh/scripts/mysql-env
	$(setup_scripts_file)/shell/pacman-pkgdiff              > $(DESTDIR)$(HOME)/.zsh/scripts/pacman-pkgdiff
	$(setup_scripts_file)/shell/plot                        > $(DESTDIR)$(HOME)/.zsh/scripts/plot
	$(setup_scripts_file)/shell/pomodoro                    > $(DESTDIR)$(HOME)/.zsh/scripts/pomodoro
	$(setup_scripts_file)/shell/project-path                > $(DESTDIR)$(HOME)/.zsh/scripts/project-path
	$(setup_scripts_file)/shell/query-hosts-tags            > $(DESTDIR)$(HOME)/.zsh/scripts/query-hosts-tags
	$(setup_scripts_file)/shell/redis-env                   > $(DESTDIR)$(HOME)/.zsh/scripts/redis-env
	$(setup_scripts_file)/shell/ssh-tags                    > $(DESTDIR)$(HOME)/.zsh/scripts/ssh-tags
	$(setup_scripts_file)/shell/status                      > $(DESTDIR)$(HOME)/.zsh/scripts/status
	$(setup_scripts_file)/shell/tmux-env                    > $(DESTDIR)$(HOME)/.zsh/scripts/tmux-env
	$(setup_scripts_file)/shell/weechat-fifo                > $(DESTDIR)$(HOME)/.zsh/scripts/weechat-fifo

	chmod +x $(DESTDIR)$(CONFIG_DIR)/git/scripts/*
	chmod +x $(DESTDIR)$(CONFIG_DIR)/i3blocks/scripts/*
	chmod +x $(DESTDIR)$(CONFIG_DIR)/sway/scripts/*
	chmod +x $(DESTDIR)$(HOME)/.tmux/scripts/*
	chmod +x $(DESTDIR)$(HOME)/.zsh/scripts/*

