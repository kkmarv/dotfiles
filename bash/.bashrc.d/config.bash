# Shell Options
shopt -s histappend
shopt -s cmdhist
shopt -s checkwinsize

# History
HISTSIZE=1000
HISTFILESIZE=2000
HISTCONTROL=ignoreboth
HISTTIMEFORMAT="%Y-%m-%d %H:%M:%S  "

bind 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'
bind 'set menu-complete-display-prefix on'

[ -f ~/.bash_aliases ] && . ~/.bash_aliases
[ -f ~/.bash_completion ] && . ~/.bash_completion
