parse_git_branch() {
    git branch 2>/dev/null | sed -n '/\* /s///p'
}

PS1='\u@\h:\w $(parse_git_branch)\$ '

# Aliases
alias ll='ls -lah'
alias gs='git status'
alias v='nvim'

# Editor
export EDITOR=nvim
