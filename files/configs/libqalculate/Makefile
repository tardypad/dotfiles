all: libqalculate-configs

libqalculate-configs:
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/qalculate

	THEME=$(THEME) setup/setup-file configs/libqalculate/qalc.cfg > $(DESTDIR)$(CONFIG_DIR)/qalculate/qalc.cfg
