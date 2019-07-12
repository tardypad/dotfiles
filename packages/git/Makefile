all: git

git:
	$(start_setup)

	mkdir -p $(DESTDIR)$(CONFIG_DIR)/git/config.d
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/git/template/info
	mkdir -p $(DESTDIR)$(CONFIG_DIR)/git/scripts

	$(setup_packages_file)/config                  > $(DESTDIR)$(CONFIG_DIR)/git/config
	$(setup_packages_file)/ignore                  > $(DESTDIR)$(CONFIG_DIR)/git/ignore
	$(setup_packages_file)/config.d/aliases        > $(DESTDIR)$(CONFIG_DIR)/git/config.d/aliases
	$(setup_packages_file)/config.d/general        > $(DESTDIR)$(CONFIG_DIR)/git/config.d/general
	$(setup_packages_file)/config.d/style          > $(DESTDIR)$(CONFIG_DIR)/git/config.d/style
	$(setup_packages_file)/template/info/exclude   > $(DESTDIR)$(CONFIG_DIR)/git/template/info/exclude
	$(setup_packages_file)/scripts/git-init-todo   > $(DESTDIR)$(CONFIG_DIR)/git/scripts/git-init-todo
	$(setup_packages_file)/scripts/git-reauthor    > $(DESTDIR)$(CONFIG_DIR)/git/scripts/git-reauthor
	$(setup_packages_file)/scripts/git-run-command > $(DESTDIR)$(CONFIG_DIR)/git/scripts/git-run-command
	$(setup_packages_file)/scripts/git-sed         > $(DESTDIR)$(CONFIG_DIR)/git/scripts/git-sed
	$(setup_packages_file)/scripts/git-stamp       > $(DESTDIR)$(CONFIG_DIR)/git/scripts/git-stamp
	$(setup_packages_file)/scripts/git-url         > $(DESTDIR)$(CONFIG_DIR)/git/scripts/git-url

	chmod +x $(DESTDIR)$(CONFIG_DIR)/git/scripts/*

	$(end_setup)
