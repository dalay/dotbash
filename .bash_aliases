alias fcount='find . -type f | wc -l'
alias ls='ls -A --color=auto'
alias l='ls -lhA --color=auto'
alias grep='grep --color=auto'
alias fsize='du -smc --exclude={proc,sys,dev} ./* | sort -g'

# Aliases for common drush commands that work in a global context.
alias dr='drush'
alias ddd='drupal-directory'
alias dl='pm-download'
alias ev='php-eval'
alias sa='site-alias'
alias lsa='site-alias --local'
alias st='core-status'
alias use='site-set'

# Aliases for drush commands that work on the current drupal site
alias cc='cache-clear'
alias cca='cache-clear all'
alias dis='pm-disable'
alias en='pm-enable'
alias pmi='pm-info'
alias pml='pm-list'
alias rf='pm-refresh'
alias unin='pm-uninstall'
alias up='pm-update'
alias upc='pm-updatecode'
alias updb='updatedb'
alias q='sql-query'

alias tm='tmux attach || tmux new'
alias r="ranger"

alias devel-log-on='drush vset devel_query_display 1'
alias devel-log-off='drush vset devel_query_display 0'
