parse_git_branch() {
    git branch 2>/dev/null | sed -n '/\* /s///p'
}

# Colors
GREEN='\[\e[32m\]'
BLUE='\[\e[34m\]'
YELLOW='\[\e[33m\]'
RED='\[\e[31m\]'
RESET='\[\e[0m\]'

PS1="${GREEN}\u@\h${RESET}:${BLUE}\w${RESET} ${YELLOW}\$(parse_git_branch)${RESET}\$ "

# Aliases
alias ll='ls -lah'
alias gs='git status'
alias v='nvim'
alias c='clear'

# Editor
export EDITOR=nvim
