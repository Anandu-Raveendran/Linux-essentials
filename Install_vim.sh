echo "\nAppending .vimrc to the current .vimrc file "
cat .vimrc >> ~/.vimrc

echo "\nInstalling vim"
sudo apt-get install vim -y
echo "\nInstalling curl..."
sudo apt-get install curl -y

echo "\nInstalling ctags..."
sudo apt-get install exuberant-ctags -y

echo "\nInstalling cscope..."
sudo apt-get install cscope -y

echo "\nInstalling Pathogen"
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo "\nInstalling NerdTree"
cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git

echo "\nInstalling tagbar"
git clone git://github.com/majutsushi/tagbar

echo "\nInstalling sensible vim"
mkdir -p ~/.vim/pack/tpope/start
cd ~/.vim/pack/tpope/start
git clone https://tpope.io/vim/sensible.git

echo "\nInstalling supertab"
cd ~/.vim/bundle
git clone https://github.com/ervandew/supertab

echo "\nInstalling ale"
git clone https://github.com/w0rp/ale.git

echo "\nInstalling vim startify"
git clone https://github.com/mhinz/vim-startify.git ~/.vim/bundle/vim-startify.vim

echo "\nInstalling vim commentary"
mkdir -p ~/.vim/pack/tpope/start
cd ~/.vim/pack/tpope/start
git clone https://tpope.io/vim/commentary.git

echo "\nInstalling vim highlight for cursor words"
mkdir -p ~/.vim/bundle/vim-highlight-cursor-words
git clone https://github.com/pboettch/vim-highlight-cursor-words.git ~/.vim/bundle/vim-highlight-cursor-words

echo "\n create persistent undo dir"
mkdir ~/.vim/undodir

echo "\nDone." 
