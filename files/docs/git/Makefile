all: git-docs

git-docs:
	DESTDIR=$(DESTDIR) THEME=$(THEME) setup/setup-doc git/git-reauthor
	DESTDIR=$(DESTDIR) THEME=$(THEME) setup/setup-doc git/git-run-command
	DESTDIR=$(DESTDIR) THEME=$(THEME) setup/setup-doc git/git-sed
	DESTDIR=$(DESTDIR) THEME=$(THEME) setup/setup-doc git/git-semantic-tag
	DESTDIR=$(DESTDIR) THEME=$(THEME) setup/setup-doc git/git-url
