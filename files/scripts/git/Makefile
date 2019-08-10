all: git-scripts

git-scripts:
	$(start_setup)

	mkdir -p $(DESTDIR)$(BIN_DIR)

	$(setup_scripts_file)/git/git-init-todo   > $(DESTDIR)$(BIN_DIR)/git-init-todo
	$(setup_scripts_file)/git/git-reauthor    > $(DESTDIR)$(BIN_DIR)/git-reauthor
	$(setup_scripts_file)/git/git-run-command > $(DESTDIR)$(BIN_DIR)/git-run-command
	$(setup_scripts_file)/git/git-sed         > $(DESTDIR)$(BIN_DIR)/git-sed
	$(setup_scripts_file)/git/git-stamp       > $(DESTDIR)$(BIN_DIR)/git-stamp
	$(setup_scripts_file)/git/git-url         > $(DESTDIR)$(BIN_DIR)/git-url

	chmod +x $(DESTDIR)$(BIN_DIR)/git-init-todo
	chmod +x $(DESTDIR)$(BIN_DIR)/git-reauthor
	chmod +x $(DESTDIR)$(BIN_DIR)/git-run-command
	chmod +x $(DESTDIR)$(BIN_DIR)/git-sed
	chmod +x $(DESTDIR)$(BIN_DIR)/git-stamp
	chmod +x $(DESTDIR)$(BIN_DIR)/git-url
