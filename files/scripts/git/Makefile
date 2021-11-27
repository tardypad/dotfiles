all: git-scripts

git-scripts:
	mkdir -p $(DESTDIR)$(BIN_DIR)

	$(setup_file)/scripts/git/git-reauthor     > $(DESTDIR)$(BIN_DIR)/git-reauthor
	$(setup_file)/scripts/git/git-run-command  > $(DESTDIR)$(BIN_DIR)/git-run-command
	$(setup_file)/scripts/git/git-sed          > $(DESTDIR)$(BIN_DIR)/git-sed
	$(setup_file)/scripts/git/git-semantic-tag > $(DESTDIR)$(BIN_DIR)/git-semantic-tag
	$(setup_file)/scripts/git/git-url          > $(DESTDIR)$(BIN_DIR)/git-url

	chmod +x $(DESTDIR)$(BIN_DIR)/git-reauthor
	chmod +x $(DESTDIR)$(BIN_DIR)/git-run-command
	chmod +x $(DESTDIR)$(BIN_DIR)/git-sed
	chmod +x $(DESTDIR)$(BIN_DIR)/git-semantic-tag
	chmod +x $(DESTDIR)$(BIN_DIR)/git-url
