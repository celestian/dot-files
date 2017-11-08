# dot-files
.files

### Terminal
https://github.com/Anthony25/gnome-terminal-colors-solarized

### Alacritty
sudo dnf copr -y enable mschuwalow/alacritty
sudo dnf -y install alacritty

### Awesome wm
https://github.com/lcpz/awesome-copycats

### emacs
```
systemctl --user enable emacs.service
systemctl --user start emacs.service

git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
sudo dnf install emacs
```

### vim
$ curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
$ sh ./install.sh

$ cd ~/.vim/bundle
$ git clone git://github.com/altercation/vim-colors-solarized.git

$ cd ~/.vim/bundle/YouCompleteMe
$ ./install.sh --clang-completer
