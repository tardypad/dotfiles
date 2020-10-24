all: git-docs

git-docs:
	mkdir -p $(DESTDIR)$(DATA_DIR)/man/man1

	$(setup_file)/docs/git/git-init-todo.scd   | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/git-init-todo.1perso
	$(setup_file)/docs/git/git-reauthor.scd    | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/git-reauthor.1perso
	$(setup_file)/docs/git/git-run-command.scd | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/git-run-command.1perso
	$(setup_file)/docs/git/git-sed.scd         | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/git-sed.1perso
	$(setup_file)/docs/git/git-url.scd         | scdoc > $(DESTDIR)$(DATA_DIR)/man/man1/git-url.1perso
