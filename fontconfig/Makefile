fontconfig:
	@echo -n "… setup fontconfig"

    # create necessary directories
	@mkdir -p "$(CONFIG_DIR)/fontconfig"
	@mkdir -p "$(DATA_DIR)/fonts"

    # copy config files
	@cp "fontconfig/fonts.conf" "$(CONFIG_DIR)/fontconfig/fonts.conf"

    # install Adobe Source Code Pro font if not present
	@if [[ ! -d "$(DATA_DIR)/fonts/source-code-pro/" ]]; then \
		curl --silent --location \
			https://github.com/adobe-fonts/source-code-pro/archive/2.030R-ro/1.050R-it.tar.gz \
			| tar xz --strip-component=1 -C "$(DATA_DIR)/fonts" source-code-pro-2.030R-ro-1.050R-it/OTF; \
		mv "$(DATA_DIR)/fonts/OTF" "$(DATA_DIR)/fonts/source-code-pro"; \
	fi

    # install Adobe Source Sans Pro font if not present
	@if [[ ! -d "$(DATA_DIR)/fonts/source-sans-pro/" ]]; then \
		curl --silent --location \
			https://github.com/adobe-fonts/source-sans-pro/archive/2.020R-ro/1.075R-it.tar.gz \
			| tar xz --strip-component=1 -C "$(DATA_DIR)/fonts" source-sans-pro-2.020R-ro-1.075R-it/OTF; \
		mv "$(DATA_DIR)/fonts/OTF" "$(DATA_DIR)/fonts/source-sans-pro"; \
	fi

    # install Adobe Source Serif Pro font if not present
	@if [[ ! -d "$(DATA_DIR)/fonts/source-serif-pro/" ]]; then \
		curl --silent --location \
			https://github.com/adobe-fonts/source-serif-pro/archive/2.000R.tar.gz \
			| tar xz --strip-component=1 -C "$(DATA_DIR)/fonts" source-serif-pro-2.000R/OTF; \
		mv "$(DATA_DIR)/fonts/OTF" "$(DATA_DIR)/fonts/source-serif-pro"; \
	fi

    # rebuild fonts cache
	@fc-cache -f

	@echo -e "\r✔ setup fontconfig"
