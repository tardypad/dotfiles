all: vdirsyncer-configs

vdirsyncer-configs:
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/vdirsyncer

	$(setup_file)/configs/vdirsyncer/config > $(DESTDIR)$(CONFIG_DIR)/vdirsyncer/config

	# discover and sync
	if [ -z $(DESTDIR) ] ; then \
		vdirsyncer discover; \
		vdirsyncer sync; \
	fi
