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
