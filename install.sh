#!/bin/bash
# Instala o actualiza los archivos de configuracion

# Ubicación actual
DIR=$(pwd)
cd ~

# Awesome
mkdir -p .config/awesome/
cd .config/awesome
ln -s $DIR/awesome/rc.lua .
cd ~

# Git
ln -s $DIR/git/gitconfig .gitconfig

# Vim
mkdir -p .vim
if [ ! -d .vim/bundle/ ]; then
  git clone https://github.com/gmarik/Vundle.vim.git .vim/bundle/Vundle.vim
fi
cd .vim
ln -s $DIR/vim/colors .
cd ~
ln -s $DIR/vim/vimrc .vimrc
vim +PluginInstall +qall

# Yaourt
#cp yaourt/yaourtrc ~/.yaourtrc

# Zsh
if [ ! -d .oh-my-zsh/ ]; then 
  git clone git://github.com/robbyrussell/oh-my-zsh.git .oh-my-zsh
fi

cd .oh-my-zsh/themes/
ln -s $DIR/zsh/erikasv.zsh-theme .
cd ~
ln -s $DIR/zsh/zshrc_mine .zshrc
ln -s $DIR/zsh/zkeybindings .zkeybindings
ln -s $DIR/zsh/zshrc_oh-my-zsh  .zshrc_oh-my-zsh 

if [ ! "$SHELL" = "/bin/zsh" ]; then
  chsh -s /bin/zsh
fi
