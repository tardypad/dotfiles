all: git-docs

git-docs:
	mkdir -p $(DESTDIR)$(DATA_DIR)/man/man1

	$(setup_file)/docs/git/git-init-todo.scd   | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/git-init-todo.1$(MAN_SUFFIX)
	$(setup_file)/docs/git/git-reauthor.scd    | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/git-reauthor.1$(MAN_SUFFIX)
	$(setup_file)/docs/git/git-run-command.scd | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/git-run-command.1$(MAN_SUFFIX)
	$(setup_file)/docs/git/git-sed.scd         | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/git-sed.1$(MAN_SUFFIX)
	$(setup_file)/docs/git/git-stamp.scd       | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/git-stamp.1$(MAN_SUFFIX)
	$(setup_file)/docs/git/git-url.scd         | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/git-url.1$(MAN_SUFFIX)
