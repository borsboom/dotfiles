if [[ -x $(which git) ]]; then
    git clone https://github.com/borsboom/dotfiles.git ~/.eb-dotfiles
else
    mkdir ~/.eb-dotfiles
    curl -sSL https://github.com/borsboom/dotfiles/tarball/master|tar xzf - --strip-components=1 -C ~/.eb-dotfiles
fi
exec /bin/bash -i
