# Favorites
alias c='clear'
alias d='docker'
alias h='helm'
alias hf='helmfile'

alias k='kubectl'
alias kd='kubectl run netshoot --image=nicolaka/netshoot -i --tty --rm'

alias g='git'
alias ga='git add'
alias gc='git commit'
alias gd='git diff'
alias gs='git status'

# Wrapper
alias ...='cd ../..'
alias ..='cd ..'
alias dmesg='dmesg -L=always'
alias ip='ip -c'
alias jq='jq -C'
alias less='less -RF'
alias ll='ls -lAh'
alias ls='ls --color'
alias mkdir='mkdir -p'
alias yq='yq -C'

# Utility
alias week='date +%V'
alias reload='exec ${SHELL} -l'
alias ipinfo='echo "Internal: $(ip route get 1.1.1.1 | awk "{print \$7}")"; echo "External: $(curl -s https://ifconfig.me)"'
