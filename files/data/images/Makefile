all: images

images:
	$(start_setup)

	mkdir -p $(DESTDIR)$(DATA_DIR)/images

	setup/substitute-colors $(THEME) < files/data/images/lock.svg > $(DESTDIR)$(DATA_DIR)/images/lock.svg
