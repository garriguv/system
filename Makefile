install:
	ln -sf $(shell pwd)/.zshenv ~/.zshenv
	ln -sf $(shell pwd)/.zshrc ~/.zshrc
	ln -sf $(shell pwd)/.vimrc ~/.vimrc
	ln -sf $(shell pwd)/.gvimrc ~/.gvimrc
	ln -sf $(shell pwd)/.ideavimrc ~/.ideavimrc
	ln -sf $(shell pwd)/.gitconfig ~/.gitconfig
	ln -sf $(shell pwd)/.gitconfig-garriguv ~/.gitconfig-garriguv
	ln -sf $(shell pwd)/.gitignore ~/.gitignore
	mkdir -p ~/.vim/{pack,ftplugin}
	ln -sfnF $(shell pwd)/.vim/pack/ ~/.vim/pack
	ln -sfnF $(shell pwd)/.vim/ftplugin/ ~/.vim/ftplugin
	mkdir -p ~/bin
	brew bundle
	./defaults.sh

vim-update:
	git submodule update --remote

.PHONY: install vim-update
