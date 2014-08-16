export PS1='\[\033[00;36m\]${debian_chroot:+($debian_chroot)}\u@\h:\[\033[00;33m\]$(__git_ps1 "(%s)" 2>/dev/null)\[\033[0;37m\]\w\$\[\033[0m\] '
set -o vi
export VIMINIT="source ~/.eb-dotfiles/vimrc"
export ACKRC=~/.eb-dotfiles/ackrc
mkdir -p ~/.eb-vimswap && chmod 700 ~/.eb-vimswap
