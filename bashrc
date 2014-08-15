#XXX might be a bit confusing that this file is name bashrc since it's really only used once at login

[[ -e /etc/profile ]] && source /etc/profile
if [[ -e ~/.bash_profile ]]; then
    source ~/.bash_profile
elif [[ -e ~/.bash_login ]]; then
    source ~/.bash_login
elif [[ -e ~/.profile ]]; then
    source ~/.profile
fi

export PS1='\[\033[00;36m\]${debian_chroot:+($debian_chroot)}\u@\h:\[\033[00;33m\]$(__git_ps1 "(%s)")\[\033[0;37m\]\w\$\[\033[0m\] '
set -o vi
