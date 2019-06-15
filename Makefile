install:
	ln -sf $(shell pwd)/.zshenv ~/.zshenv
	ln -sf $(shell pwd)/.zshrc ~/.zshrc

.PHONY: install
