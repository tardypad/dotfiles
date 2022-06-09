all: git-scripts

git-scripts:
	mkdir -p $(DESTDIR)$(BIN_DIR)

	THEME=$(THEME) setup/setup-file scripts/git/git-reauthor     > $(DESTDIR)$(BIN_DIR)/git-reauthor
	THEME=$(THEME) setup/setup-file scripts/git/git-run-command  > $(DESTDIR)$(BIN_DIR)/git-run-command
	THEME=$(THEME) setup/setup-file scripts/git/git-sed          > $(DESTDIR)$(BIN_DIR)/git-sed
	THEME=$(THEME) setup/setup-file scripts/git/git-semantic-tag > $(DESTDIR)$(BIN_DIR)/git-semantic-tag
	THEME=$(THEME) setup/setup-file scripts/git/git-url          > $(DESTDIR)$(BIN_DIR)/git-url

	chmod +x $(DESTDIR)$(BIN_DIR)/git-reauthor
	chmod +x $(DESTDIR)$(BIN_DIR)/git-run-command
	chmod +x $(DESTDIR)$(BIN_DIR)/git-sed
	chmod +x $(DESTDIR)$(BIN_DIR)/git-semantic-tag
	chmod +x $(DESTDIR)$(BIN_DIR)/git-url
