

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# COLORS
PS1="[\[\033[36m\]\u\[\033[37m\]@\[\033[33;1m\]\w\[\033[m\]\[\033[32m\]\$(parse_git_branch)\[\033[m\]\]$ "

#git
alias gs='git status'
alias gp='git pull'
alias gf='git fetch --all'
alias gb='git branch'
alias gl='git log'

# Directory navigation aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias src='cd /Users/cn188981/go/src'

#Go lang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin



