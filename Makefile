install:
	ln -sf $(shell pwd)/.zshenv ~/.zshenv
	ln -sf $(shell pwd)/.zshrc ~/.zshrc
	ln -sf $(shell pwd)/.vimrc ~/.vimrc

.PHONY: install
