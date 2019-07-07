all: sway
.SILENT: sway

sway:
	$(start_setup)

	mkdir -p $(DESTDIR)$(CONFIG_DIR)/sway/config.d
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/sway/scripts
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/swaynag

	$(setup_packages_file)/config                                       > $(DESTDIR)$(CONFIG_DIR)/sway/config
	$(setup_packages_file)/config.d/bar                                 > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/bar
	$(setup_packages_file)/config.d/bindings                            > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/bindings
	$(setup_packages_file)/config.d/general                             > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/general
	$(setup_packages_file)/config.d/inputs                              > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/inputs
	$(setup_packages_file)/config.d/outputs                             > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/outputs
	$(setup_packages_file)/config.d/rules                               > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/rules
	$(setup_packages_file)/config.d/style                               > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/style
	$(setup_packages_file)/scripts/app_chat                             > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/app_chat
	$(setup_packages_file)/scripts/app_mail                             > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/app_mail
	$(setup_packages_file)/scripts/app_monitor                          > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/app_monitor
	$(setup_packages_file)/scripts/app_music                            > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/app_music
	$(setup_packages_file)/scripts/app_news                             > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/app_news
	$(setup_packages_file)/scripts/app_tmux_env                         > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/app_tmux_env
	$(setup_packages_file)/scripts/bar_status_mode                      > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/bar_status_mode
	$(setup_packages_file)/scripts/check_notify_low_battery             > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/check_notify_low_battery
	$(setup_packages_file)/scripts/check_notify_package_updates         > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/check_notify_package_updates
	$(setup_packages_file)/scripts/color_picker                         > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/color_picker
	$(setup_packages_file)/scripts/command_input                        > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/command_input
	$(setup_packages_file)/scripts/command_input_exec                   > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/command_input_exec
	$(setup_packages_file)/scripts/create_workspace                     > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/create_workspace
	$(setup_packages_file)/scripts/exec_desktop_entry                   > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/exec_desktop_entry
	$(setup_packages_file)/scripts/focus_window_title                   > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/focus_window_title
	$(setup_packages_file)/scripts/fzf_launcher                         > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/fzf_launcher
	$(setup_packages_file)/scripts/grab_region_screenshot               > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/grab_region_screenshot
	$(setup_packages_file)/scripts/launch_app                           > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/launch_app
	$(setup_packages_file)/scripts/launch_command                       > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/launch_command
	$(setup_packages_file)/scripts/launcher                             > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/launcher
	$(setup_packages_file)/scripts/launch_note                          > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/launch_note
	$(setup_packages_file)/scripts/launch_password                      > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/launch_password
	$(setup_packages_file)/scripts/launch_system                        > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/launch_system
	$(setup_packages_file)/scripts/launch_tmux_env                      > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/launch_tmux_env
	$(setup_packages_file)/scripts/move_window_new_workspace            > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/move_window_new_workspace
	$(setup_packages_file)/scripts/notify                               > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/notify
	$(setup_packages_file)/scripts/notify_end_pomodoro                  > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/notify_end_pomodoro
	$(setup_packages_file)/scripts/notify_tmux_alert                    > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/notify_tmux_alert
	$(setup_packages_file)/scripts/rename_workspace                     > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/rename_workspace
	$(setup_packages_file)/scripts/run_command                          > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/run_command
	$(setup_packages_file)/swaynag/config                               > $(DESTDIR)$(CONFIG_DIR)/swaynag/config

	chmod +x $(DESTDIR)$(CONFIG_DIR)/sway/scripts/*

	$(end_setup)
