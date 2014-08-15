if [[ -x $(which git) ]]; then
    if [[ -d $HOME/.eb-dotfiles ]]; then
        (cd $HOME/.eb-dotfiles; git pull -q)
    else
        git clone https://github.com/borsboom/dotfiles.git $HOME/.eb-dotfiles
    fi
else
    mkdir $HOME/.eb-dotfiles
    curl -sSL https://github.com/borsboom/dotfiles/tarball/master|tar xzf - --strip-components=1 -C $HOME/.eb-dotfiles
fi
exec /bin/bash -i --rcfile $HOME/.eb-dotfiles/bashrc
