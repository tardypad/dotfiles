all: images

images:
	$(start_setup)

	mkdir -p $(DESTDIR)$(DATA_DIR)/images

	colors/substitute_placeholders $(THEME) data/images/lock.svg > $(DESTDIR)$(DATA_DIR)/images/lock.svg
