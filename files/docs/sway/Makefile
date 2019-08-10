all: sway-docs

sway-docs:
	$(start_setup)

	mkdir -p $(DESTDIR)$(DATA_DIR)/man/man1

	scdoc < files/docs/sway/sway-command-input-exec.scd > $(DESTDIR)$(DATA_DIR)/man/man1/sway-command-input-exec.1
