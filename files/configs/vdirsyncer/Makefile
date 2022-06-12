all: vdirsyncer-configs

vdirsyncer-configs:
	setup/setup-config vdirsyncer/config $(CONFIG_DIR)/vdirsyncer/config

	# discover and sync
	if [ -z $(DESTDIR) ] ; then \
		vdirsyncer discover; \
		vdirsyncer sync; \
	fi
