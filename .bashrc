# Best .bashrc to come... much credit to Parrot OS, fortune creators, and others -- https://github.com/ParrotSec/parrot-core/blob/master/parrot-core/root/.bashrc
# --> Place in /home/$USER and /root for a better bash.
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:$PATH

HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s checkwinsize
PS1="\[\033[0;31m\]\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\033[0;31m\]\342\234\227\[\033[0;37m\]]\342\224\200\")[$(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]root\[\033[01;33m\]@\[\033[01;96m\]\h'; else echo '\[\033[0;39m\]\u\[\033[01;33m\]@\[\033[01;96m\]\h'; fi)\[\033[0;31m\]]\342\224\200[\[\033[0;32m\]\w\[\033[0;31m\]]\n\[\033[0;31m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\033[0m\]\[\e[01;33m\]\\$\[\e[0m\]"

man() {
env \
LESS_TERMCAP_mb=$'\e[01;31m' \
LESS_TERMCAP_md=$'\e[01;31m' \
LESS_TERMCAP_me=$'\e[0m' \
LESS_TERMCAP_se=$'\e[0m' \
LESS_TERMCAP_so=$'\e[01;44;33m' \
LESS_TERMCAP_ue=$'\e[0m' \
LESS_TERMCAP_us=$'\e[01;32m' \
man "$@"
}

#Parrot OS default Alias
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -lh'
alias la='ls -lha'
alias l='ls -CF'
alias em='emacs -nw'
alias dd='dd status=progress'
alias _='sudo'
alias _i='sudo -i'

#Added alias:
alias cls='tput reset && echo " " && fortune && echo " " '
alias clear='tput reset && echo " " && fortune && echo " " '
alias aptupdate='sudo apt update && sudo apt upgrade'

#Welcome Message install figlet and customize; or comment out.
figlet Welcome $USER ! ! !

#random quote generator install fortune
echo ' '
echo ' '
fortune
echo ' '
