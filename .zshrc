# start SSH agent
. $HOME/system/scripts/ssh-find-agent/ssh-find-agent.sh
ssh_find_agent -a || eval $(ssh-agent) > /dev/null

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
