echo "Installing vim"
sudo apt-get install vim -y
echo "Installing curl..."
sudo apt-get install curl -y

echo "Installing ctags..."
sudo apt-get install exuberant-ctags -y

echo "Installing cscope..."
sudo apt-get install cscope -y

echo " Installing Pathogen"
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo "Installing NerdTree"
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git

echo "Installing tagbar"
git clone git://github.com/majutsushi/tagbar

echo "Installing sensible vim"
mkdir -p ~/.vim/pack/tpope/start
cd ~/.vim/pack/tpope/start
git clone https://tpope.io/vim/sensible.git

echo "Installing supertab"
cd ~/.vim/bundle
git clone https://github.com/ervandew/supertab

echo "Installing ale"
git clone https://github.com/w0rp/ale.git

echo "Installing vim startify"
git clone https://github.com/mhinz/vim-startify.git ~/.vim/bundle/vim-startify.vim

echo "Installing vim commentary"
mkdir -p ~/.vim/pack/tpope/start
cd ~/.vim/pack/tpope/start
git clone https://tpope.io/vim/commentary.git

echo "Installing vim highlight for cursor words"
mkdir -p ~/.vim/bundle/vim-highlight-cursor-words
git clone https://github.com/pboettch/vim-highlight-cursor-words.git ~/.vim/bundle/vim-highlight-cursor-words

echo "Done. Now copy .vimrc file to /home/user/"
