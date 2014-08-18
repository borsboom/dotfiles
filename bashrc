set -o vi

export PS1='\[\033[1;36m\]${debian_chroot:+($debian_chroot)}\u@\h:\[\033[1;33m\]$(__git_ps1 "(%s)" 2>/dev/null)\[\033[1;37m\]\w\$\[\033[0m\] '
unset PROMPT_COMMAND
[[ -n $EB_WINDOW_TITLE ]] && PROMPT_COMMAND='echo \e]0;$EB_WINDOW_TITLE\a'

export ACKRC=~/.eb-dotfiles/ackrc
export SCREENRC=~/.eb-dotfiles/screenrc

mkdir -p ~/.eb-vimswap && chmod 700 ~/.eb-vimswap
export VIMINIT="source ~/.eb-dotfiles/vimrc"

### Adjust $PATH

[[ -d "/usr/local/bin" && ! "$PATH" == *"/usr/local/bin:"* ]] && \
    export PATH="/usr/local/bin:$PATH"

[[ -d "$HOME/Library/Haskell/bin" && ! "$PATH" == *"$HOME/Library/Haskell/bin"* ]] && \
    export PATH="$HOME/Library/Haskell/bin:$PATH"

[[ -d "$HOME/.cabal/bin" && ! "$PATH" == *"$HOME/.cabal/bin"* ]] && \
    export PATH="$HOME/.cabal/bin:$PATH"

[[ -d "$HOME/.eb-dotfiles/bin" && ! "$PATH" == *"$HOME/.eb-dotfiles/bin"* ]] && \
    export PATH="$HOME/.eb-dotfiles/bin:$PATH"

[[ -d "$HOME/bin" && ! "$PATH" == *"$HOME/bin"* ]] && \
    export PATH="$HOME/bin:$PATH"

### Git

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM="auto"

### Colourful 'ls' output on Mac OS

export CLICOLOR=
