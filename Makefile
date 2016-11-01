.PHONY: install
install:
	test -L $(HOME)/bin/git-gh-pages || ln -s $(PWD)/git-gh-pages $(HOME)/bin/git-gh-pages
	@echo "...All done!"
