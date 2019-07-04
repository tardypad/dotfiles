sway:
	$(start_setup)

	@mkdir -p $(DESTDIR)$(CONFIG_DIR)/sway/config.d
	@mkdir -p $(DESTDIR)$(CONFIG_DIR)/sway/scripts
	@mkdir -p $(DESTDIR)$(CONFIG_DIR)/sway/sounds
	@mkdir -p $(DESTDIR)$(CONFIG_DIR)/swaynag
	@mkdir -p $(DESTDIR)$(DATA_DIR)/applications

	$(setup_file)/config > $(DESTDIR)$(CONFIG_DIR)/sway/config
	$(setup_file)/config.d/bar > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/bar
	$(setup_file)/config.d/bindings > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/bindings
	$(setup_file)/config.d/general > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/general
	$(setup_file)/config.d/inputs > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/inputs
	$(setup_file)/config.d/outputs > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/outputs
	$(setup_file)/config.d/rules > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/rules
	$(setup_file)/config.d/style > $(DESTDIR)$(CONFIG_DIR)/sway/config.d/style
	$(setup_file)/scripts/app_chat > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/app_chat
	$(setup_file)/scripts/app_mail > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/app_mail
	$(setup_file)/scripts/app_monitor > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/app_monitor
	$(setup_file)/scripts/app_music > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/app_music
	$(setup_file)/scripts/app_news > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/app_news
	$(setup_file)/scripts/app_tmux_env > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/app_tmux_env
	$(setup_file)/scripts/bar_status_mode > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/bar_status_mode
	$(setup_file)/scripts/check_notify_low_battery > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/check_notify_low_battery
	$(setup_file)/scripts/check_notify_package_updates > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/check_notify_package_updates
	$(setup_file)/scripts/color_picker > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/color_picker
	$(setup_file)/scripts/command_input > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/command_input
	$(setup_file)/scripts/command_input_exec > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/command_input_exec
	$(setup_file)/scripts/create_workspace > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/create_workspace
	$(setup_file)/scripts/exec_desktop_entry > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/exec_desktop_entry
	$(setup_file)/scripts/focus_window_title > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/focus_window_title
	$(setup_file)/scripts/fzf_launcher > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/fzf_launcher
	$(setup_file)/scripts/grab_region_screenshot > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/grab_region_screenshot
	$(setup_file)/scripts/launch_app > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/launch_app
	$(setup_file)/scripts/launch_command > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/launch_command
	$(setup_file)/scripts/launcher > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/launcher
	$(setup_file)/scripts/launch_note > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/launch_note
	$(setup_file)/scripts/launch_password > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/launch_password
	$(setup_file)/scripts/launch_system > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/launch_system
	$(setup_file)/scripts/launch_tmux_env > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/launch_tmux_env
	$(setup_file)/scripts/move_window_new_workspace > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/move_window_new_workspace
	$(setup_file)/scripts/notify > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/notify
	$(setup_file)/scripts/notify_end_pomodoro > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/notify_end_pomodoro
	$(setup_file)/scripts/notify_tmux_alert > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/notify_tmux_alert
	$(setup_file)/scripts/rename_workspace > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/rename_workspace
	$(setup_file)/scripts/run_command > $(DESTDIR)$(CONFIG_DIR)/sway/scripts/run_command
	$(setup_file)/applications/chat_client.desktop > $(DESTDIR)$(DATA_DIR)/applications/chat_client.desktop
	$(setup_file)/applications/chromium_web_browser.desktop > $(DESTDIR)$(DATA_DIR)/applications/chromium_web_browser.desktop
	$(setup_file)/applications/document_viewer.desktop > $(DESTDIR)$(DATA_DIR)/applications/document_viewer.desktop
	$(setup_file)/applications/ebook_manager.desktop > $(DESTDIR)$(DATA_DIR)/applications/ebook_manager.desktop
	$(setup_file)/applications/file_manager.desktop > $(DESTDIR)$(DATA_DIR)/applications/file_manager.desktop
	$(setup_file)/applications/firefox_web_browser.desktop > $(DESTDIR)$(DATA_DIR)/applications/firefox_web_browser.desktop
	$(setup_file)/applications/mail_client.desktop > $(DESTDIR)$(DATA_DIR)/applications/mail_client.desktop
	$(setup_file)/applications/music_player.desktop > $(DESTDIR)$(DATA_DIR)/applications/music_player.desktop
	$(setup_file)/applications/news_reader.desktop > $(DESTDIR)$(DATA_DIR)/applications/news_reader.desktop
	$(setup_file)/applications/qutebrowser_web_browser.desktop > $(DESTDIR)$(DATA_DIR)/applications/qutebrowser_web_browser.desktop
	$(setup_file)/applications/raster_graphics_editor.desktop > $(DESTDIR)$(DATA_DIR)/applications/raster_graphics_editor.desktop
	$(setup_file)/applications/sailfishos_ide.desktop > $(DESTDIR)$(DATA_DIR)/applications/sailfishos_ide.desktop
	$(setup_file)/applications/system_monitor.desktop > $(DESTDIR)$(DATA_DIR)/applications/system_monitor.desktop
	$(setup_file)/applications/terminal.desktop > $(DESTDIR)$(DATA_DIR)/applications/terminal.desktop
	$(setup_file)/applications/vector_graphics_editor.desktop > $(DESTDIR)$(DATA_DIR)/applications/vector_graphics_editor.desktop
	$(setup_file)/applications/video_player.desktop > $(DESTDIR)$(DATA_DIR)/applications/video_player.desktop
	$(setup_file)/sounds/end_pomodoro.wav > $(DESTDIR)$(CONFIG_DIR)/sway/sounds/end_pomodoro.wav
	$(setup_file)/sounds/low_battery.wav > $(DESTDIR)$(CONFIG_DIR)/sway/sounds/low_battery.wav
	$(setup_file)/swaynag/config > $(DESTDIR)$(CONFIG_DIR)/swaynag/config

	@chmod +x $(DESTDIR)$(CONFIG_DIR)/sway/scripts/*

	$(end_setup)
