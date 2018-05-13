systemd:
	$(start_setup)

	$(call copy_folder,user,$(CONFIG_DIR)/systemd/user)

ifeq ($(IS_LOCAL_INSTALL),'true')
    # reload daemon
	@systemctl --user daemon-reload
endif

	$(end_setup)
