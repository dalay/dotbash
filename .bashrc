if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi
# ~/.bashrc: executed by bash(1) for non-login shells.
if [ -f ~/.bash_aliases ]; then
 . ~/.bash_aliases
fi

PATH=$PATH:~/.local/bin:~/scripts
# export PATH=~/.local/bin:~/scripts:~/bin:/usr/local/bin:/usr/local/mysql/bin:$PATH
# export TERM=xterm-256color
export TERM=screen-256color
export VISUAL=vim
export EDITOR=vim

force_color_prompt=yes
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_DESCRIBE_STYLE=default
export PS1='${debian_chroot:+($debian_chroot)}\[\033[1;36m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]$(__git_ps1 " [%s]")\[\e[m\]\n\$ '

shopt -s histappend
PROMPT_COMMAND='history -a'
shopt -s cdspell
export HISTIGNORE="&:ls:[bf]g:exit"
shopt -s cmdhist
shopt -s dirspell
shopt -s dotglob


# cd /srv/www/dev.giorgio-ferretti.it/sites/all/modules/importkit && clear 
# cd /srv/www/dev.giorgio-ferretti.it/sites/all/modules/gf_discount && clear 

# if [ -z "$TMUX" ]; then tm; fi

