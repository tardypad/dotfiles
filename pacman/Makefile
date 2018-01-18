pacman:
	@echo -n "… setup pacman"

    # create necessary directories
	@mkdir -p "$(CONFIG_DIR)/pacman"
	@mkdir -p "$(HOME)/build/"{packages,sources,srcpackages,makepkglogs}

    # copy config files
	@cp "pacman/makepkg.conf" "$(CONFIG_DIR)/pacman/makepkg.conf"

	@echo -e "\r✔ setup pacman"
