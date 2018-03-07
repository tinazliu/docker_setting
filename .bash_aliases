# set show-all-if-ambiguous on
# bind 'TAB:menu-complete'
alias sshcaffe='ssh -X root@172.17.0.2'

set show-all-if-ambiguous on
bind '"\e[Z":menu-complete'
bind 'TAB:complete'

alias trash='function _trash() {
  mv -f "$1" ~/Trash;
};_trash'
