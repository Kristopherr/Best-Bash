# Best .bashrc to come... much credit to Parrot OS, fortune creators, and others -- https://github.com/ParrotSec/parrot-core/blob/master/parrot-core/root/.bashrc
# --> Place in /home/$USER and /root for a better bash.
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:$PATH

HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s checkwinsize
PS1='\[\e[31m\]╭╼[\[\e[m\]$USER\[\e[33m\]@\[\e[m\]\[\e[01;36m\]$HOSTNAME\[\e[m\]\[\e[31m\]]╾╼[\[\e[m\]\[\e[36m\]$(hostname -I | head -n1 | cut -d " " -f1)\[\e[m\]\[\e[31m\]]╾╼[\[\e[m\]\[\e[36m\]$(dig @resolver1.opendns.com A myip.opendns.com +short -4)\[\e[m\]\[\e[31m\]]\[\e[m\]\n\[\e[31m\]╰──╼[\[\e[m\]\w\[\e[31m\]]─╼\[\e[m\] \[\e[01;33m\]\\$\[$(tput sgr0)\]\[\e[m\]'

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
#info to use in PS1:
#ipv6
dig @resolver1.opendns.com AAAA myip.opendns.com +short -6
#ipv4
dig @resolver1.opendns.com A myip.opendns.com +short -4
#local ip
hostname -I | head -n1 | cut -d " " -f1
#Names
echo "$USER@$HOSTNAME"
#working dir
pwd
echo ' '
