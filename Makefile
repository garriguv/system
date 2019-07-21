install:
	ln -sf $(shell pwd)/.profile ~/.profile
	ln -sf $(shell pwd)/.zshenv ~/.zshenv
	ln -sf $(shell pwd)/.zshrc ~/.zshrc
	ln -sf $(shell pwd)/.vimrc ~/.vimrc
	ln -sf $(shell pwd)/.gvimrc ~/.gvimrc
	ln -sf $(shell pwd)/.ideavimrc ~/.ideavimrc
	ln -sf $(shell pwd)/.gitconfig ~/.gitconfig
	ln -sf $(shell pwd)/.vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
	ln -sfnF $(shell pwd)/.vim/pack/ ~/.vim/pack
	ln -sfnF $(shell pwd)/.vim/ftplugin/ ~/.vim/ftplugin

vim-update:
	git submodule update --remote

.PHONY: install vim-update
