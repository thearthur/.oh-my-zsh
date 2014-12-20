#!/bin/bash
TARGET=$1

cat <<EOF | ssh $TARGET bash
git config --global user.email "arthur@yummly.com"
git config --global user.name "Arthur Ulfeldt"
git config --global color.ui auto
rm ~/tmux-config.bak -rf
mv -f ~/tmux-config ~/tmux-config.bak
#git clone git@github.com:thearthur/tmux-config ~/tmux-config
git clone https://github.com/thearthur/tmux-config.git ~/tmux-config
ln -sf ~/tmux-config/.tmux.conf ~/.tmux.conf
rm ~/.emacs.d.bak -rf
mv -f ~/.emacs.d ~/.emacs.d.bak
#git clone git@github.com:thearthur/arthur-s-emacs-config ~/.emacs.d
git clone https://github.com/thearthur/arthur-s-emacs-config.git ~/.emacs.d
echo '{:user {:plugins [[cider/cider-nrepl "0.8.0-SNAPSHOT"]]}}' > ~/.lein/profiles.clj
rm -rf ~/.oh-my-zsh.bak
mv ~/.oh-my-zsh ~/.oh-my-zsh.bak
#git clone --recursive git@github.com:thearthur/.oh-my-zsh ~/.oh-my-zsh/
git clone --recursive https://github.com/thearthur/.oh-my-zsh.git ~/.oh-my-zsh/
ln -sf ~/.oh-my-zsh/.zshrc ~/.zshrc
mkdir -p ~/bin/
ln -sf ~/.oh-my-zsh/movin.sh ~/bin/movin.sh
sudo apt-get install -y zsh
sudo chsh \$USER -s /bin/zsh
EOF


