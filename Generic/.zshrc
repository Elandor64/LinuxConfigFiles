# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/fch/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#default ps1
#PS1='[\u@\h \W]\$ '
PROMPT=$'%B\[%F{red}%n%f@%F{blue}%m%f:%F{yellow}%~%f\] %F{green}\xe2\xae\x9a%f%b  '
RPROMPT='[%F{yellow}%?%f]'


export PATH=/usr/lib/jvm/java-10-openjdk/bin:$PATH
export CLASSPATH=".:/usr/local/lib/antlr-4.7.1-complete.jar:$CLASSPATH"
alias antlr4='java -jar /usr/local/lib/antlr-4.7.1-complete.jar'
alias grun='java org.antlr.v4.gui.TestRig'