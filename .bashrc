
#Shows get branch in terminal prompt 
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#git autocomplete 
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion || {
    # if not found in /usr/local/etc, try the brew --prefix location
    [ -f "$(brew --prefix)/etc/bash_completion.d/git-completion.bash" ] && \
        . $(brew --prefix)/etc/bash_completion.d/git-completion.bash
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
alias ll='ls -l'

#Go lang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin



