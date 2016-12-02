#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

#My aliases
alias inst='sudo pacman -S'
alias insta='sudo yaourt -S'
alias updt='sudo pacman -Syu'
alias gcm='git commit -m'
alias ..='cd ..'
alias grep='grep --color=auto'
alias rm='rm -I --preserve-root'
alias procexp='ps auxf | sort -nr -k 3 | head -10'
alias desk='startxfce4'

#default ps1
#PS1='[\u@\h \W]\$ '
PS1='\[\033[1;36m\][\[\033[1;34m\]\u\[\033[1;33m\]@\[\033[1;32m\]\h:\[\033[1;35m\]\w\[\033[1;36m\]]\[\033[1;31m\]\\$\[\033[0m\] '
