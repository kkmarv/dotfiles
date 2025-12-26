# Favorites
alias c='clear'
alias d='docker'
alias h='helm'
alias hf='helmfile'
alias k='kubectl'

alias g='git'
alias ga='git add'
alias gc='git commit'
alias gd='git diff'
alias gs='git status'

# Wrapper
alias ..='cd ..'
alias ...='cd ../..'
alias dmesg='dmesg --color=always'
alias less='less -R'
alias ll='ls -lAh'
alias ls='ls --color'
alias mkdir='mkdir -p'

# Utility
alias week='date +%V'
alias reload='exec ${SHELL} -l'
alias ipinfo='echo "Internal: $(ip route get 1.1.1.1 | awk "{print \$7}")"; echo "External: $(curl -s https://ifconfig.me)"'
