# oh-my-zsh configuration
export ZSH="/Users/$(whoami)/.oh-my-zsh"
ZSH_THEME="robbyrussell"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(ssh-agent)

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

# ruby
alias be="bundle exec"