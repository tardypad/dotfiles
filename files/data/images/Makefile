all: images

images:
	mkdir -p $(DESTDIR)$(DATA_DIR)/images

	setup/substitute-colors dark < files/data/images/lock.svg > $(DESTDIR)$(DATA_DIR)/images/lock.svg-dark
	setup/substitute-colors light < files/data/images/lock.svg > $(DESTDIR)$(DATA_DIR)/images/lock.svg-light
	ln -sf lock.svg-$(THEME) $(DESTDIR)$(DATA_DIR)/images/lock.svg

	if ! grep -qsxF $(DATA_DIR)/images/lock.svg "${THEME_FILES}"; then \
		echo $(DATA_DIR)/images/lock.svg >> "${THEME_FILES}"; \
	fi
