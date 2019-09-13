all: git-docs

git-docs:
	$(start_setup)

	mkdir -p $(DESTDIR)$(DATA_DIR)/man/man1

	scdoc < files/docs/git/git-init-todo.scd   > $(DESTDIR)$(DATA_DIR)/man/man1/git-init-todo.1
	scdoc < files/docs/git/git-reauthor.scd    > $(DESTDIR)$(DATA_DIR)/man/man1/git-reauthor.1
	scdoc < files/docs/git/git-run-command.scd > $(DESTDIR)$(DATA_DIR)/man/man1/git-run-command.1
	scdoc < files/docs/git/git-sed.scd         > $(DESTDIR)$(DATA_DIR)/man/man1/git-sed.1
	scdoc < files/docs/git/git-stamp.scd       > $(DESTDIR)$(DATA_DIR)/man/man1/git-stamp.1
	scdoc < files/docs/git/git-url.scd         > $(DESTDIR)$(DATA_DIR)/man/man1/git-url.1
