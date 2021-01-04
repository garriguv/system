# oh-my-zsh configuration
export ZSH="/Users/$(whoami)/.oh-my-zsh"
ZSH_THEME="robbyrussell"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(ssh-agent z)

# ssh-agent configuration
zstyle :omz:plugins:ssh-agent agent-forwarding on

source $ZSH/oh-my-zsh.sh

# git
function g {
	if [[ $# -gt 0 ]]
	then
		git "$@"
	else
		git status --short --branch
	fi
}

# reload configuration
function sz {
	source ~/.zshenv
	source ~/.zshrc
}

# ls
alias l="ls -Flh"
alias la="ls -FAlh"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Local configuration
[ -f ~/.local.zsh ] && source ~/.local.zsh

# rbenv
eval "$(rbenv init -)"

# Homebrew
alias ibrew="arch -x86_64 /usr/local/bin/brew"
alias mbrew="arch -arm64 /opt/homebrew/bin/brew"

# ruby
alias be="bundle exec"
