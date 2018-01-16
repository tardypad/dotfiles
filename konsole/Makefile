konsole:
	@echo -n "… setup konsole"

    # create necessary directories
	@mkdir -p "$(CONFIG_DIR)"
	@mkdir -p "$(DATA_DIR)/konsole"
	@mkdir -p "$(DATA_DIR)/kxmlgui5/konsole"

    # copy config files
	@cp "konsole/konsolerc" "$(CONFIG_DIR)/konsolerc"
	@cp --recursive --force --no-target-directory \
		"konsole/konsole" "$(DATA_DIR)/konsole"
	@cp --recursive --force --no-target-directory \
		"konsole/kxmlgui5" "$(DATA_DIR)/kxmlgui5/konsole"

	@echo -e "\r✔ setup konsole"
