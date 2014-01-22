ERIKASV_CONFIG=$1

chsh -s /bin/zsh

cd ~
git clone https://github.com/robbyrussell/oh-my-zsh.git .oh-my-zsh

ln -s $ERIKASV_CONFIG/.zshrc_mine .zshrc
ln -s $ERIKASV_CONFIG/.zshrc_oh-my-zsh .
ln -s $ERIKASV_CONFIG/.zkeybindings .
ln -s $ERIKASV_CONFIG/erikasv.zsh-theme ~/.oh-my-zsh/themes/.
