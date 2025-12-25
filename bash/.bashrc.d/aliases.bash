# Favorites
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
alias mkdir='mkdir -p'

# Utility
alias week='date +%V'
alias reload='exec ${SHELL} -l'
alias ipinfo='echo "Internal: $(ip route get 1.1.1.1 | awk "{print \$7}")"; echo "External: $(curl -s https://ifconfig.me)"'

# Navigation
alias ..='cd ..'

alias ls='ls --color=auto'
alias ll='ls -lAh'
