if [[ -x $(which git) ]]; then
    [[ -d $HOME/.eb-dotfiles ]] || git clone https://github.com/borsboom/dotfiles.git $HOME/.eb-dotfiles
    (cd $HOME/.eb-dotfiles; git pull)
else
    mkdir $HOME/.eb-dotfiles
    curl -sSL https://github.com/borsboom/dotfiles/tarball/master|tar xzf - --strip-components=1 -C $HOME/.eb-dotfiles
fi
exec /bin/bash -i
