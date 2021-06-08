install:
	ln -sf $(shell pwd)/.zshenv ~/.zshenv
	ln -sf $(shell pwd)/.zshrc ~/.zshrc
	ln -sf $(shell pwd)/.vimrc ~/.vimrc
	ln -sf $(shell pwd)/.gvimrc ~/.gvimrc
	ln -sf $(shell pwd)/.ideavimrc ~/.ideavimrc
	ln -sf $(shell pwd)/.gitconfig ~/.gitconfig
	ln -sf $(shell pwd)/.gitconfig-garriguv ~/.gitconfig-garriguv
	ln -sf $(shell pwd)/.gitignore ~/.gitignore
	ln -sf $(shell pwd)/.lldbinit ~/.lldbinit
	mkdir -p ~/bin

vim:
	mkdir -p ~/.vim/{pack,ftplugin}
	ln -sfnF $(shell pwd)/.vim/pack/ ~/.vim/pack
	ln -sfnF $(shell pwd)/.vim/ftplugin/ ~/.vim/ftplugin

brew:
	brew bundle

defaults:
	./defaults.sh

vim-update:
	git submodule update --remote

.PHONY: install vim-update
