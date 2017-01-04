BIN = ~/bin/git-gh-pages

.PHONY: install update

update:
	@git pull --rebase

install: $(BIN)

$(BIN):
	ln -s $(PWD)/$(@F) $@
	@echo "All done! Make sure ~/bin is in your PATH"
