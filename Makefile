install:
	ln -sf $(shell pwd)/.profile ~/.profile
	ln -sf $(shell pwd)/.zshenv ~/.zshenv
	ln -sf $(shell pwd)/.zshrc ~/.zshrc
	ln -sf $(shell pwd)/.vimrc ~/.vimrc
	ln -sf $(shell pwd)/.config/i3/config ~/.config/i3/config
	ln -sfF $(shell pwd)/.vim/pack/ ~/.vim/pack
	ln -sfF $(shell pwd)/.vim/ftplugin/ ~/.vim/ftplugin

vim-update:
	git submodule update --remote

.PHONY: install
