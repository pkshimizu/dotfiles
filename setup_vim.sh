cp dotfiles/.vimrc ./
sudo apt-get install vim
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
git clone https://github.com/Shougo/vimproc ~/.vim/bundle/vimproc
cd ~/.vim/bundle/vimproc/
make -f make_unix.mak

