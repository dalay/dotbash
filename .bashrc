if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

if [ -f ~/.bash_aliases ]; then
 . ~/.bash_aliases
fi

PATH=$PATH:~/.local/bin:~/scripts

force_color_prompt=yes

export TERM=screen-256color
export VISUAL=vim
export EDITOR=vim
# Git
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_DESCRIBE_STYLE=default
export PS1='\[\e[1;36m\]\u@\h\[\e[m\]:\[\e[1;34m\]\w\[\e[m\]\[\e[0;33m\]$(__git_ps1 " [%s]")\[\e[m\]\n\$ '
export HISTIGNORE="&:ls:[bf]g:exit"



shopt -s histappend
PROMPT_COMMAND='history -a'
shopt -s cdspell
shopt -s cmdhist
shopt -s dirspell
shopt -s dotglob

if [ -f ${HOME}/bash.d/* ]; then 
    . ${HOME}/bash.d/*
fi
