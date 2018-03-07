sudo apt-get install vim vim-nox pylint git exuberant-ctags build-essential cmake python-dev libclang1 curl
mkdir -p ~/.vim/autoload
curl https://raw.githubusercontent.com/tpope/vim-pathogen/v2.3/autoload/pathogen.vim -o ~/.vim/autoload/pathogen.vim
mkdir -p ~/.vim/bundlemkdir -p ~/.vim/autoload
curl https://raw.githubusercontent.com/tpope/vim-pathogen/v2.3/autoload/pathogen.vim -o ~/.vim/autoload/pathogen.vim
mkdir -p ~/.vim/bundle

git clone https://github.com/scrooloose/nerdtree ~/.vim/bundle/nerdtree
git clone https://github.com/fholgado/minibufexpl.vim ~/.vim/bundle/minibufexpl
git clone https://github.com/majutsushi/tagbar ~/.vim/bundle/tagbar
git clone https://github.com/tpope/vim-sensible ~/.vim/bundle/sensible
git clone https://github.com/scrooloose/syntastic ~/.vim/bundle/syntastic
git clone https://github.com/sheerun/vim-polyglot ~/.vim/bundle/polyglot
git clone https://github.com/Valloric/YouCompleteMe ~/.vim/bundle/youcompleteme
git clone https://github.com/SirVer/ultisnips ~/.vim/bundle/ultisnips
git clone https://github.com/honza/vim-snippets ~/.vim/bundle/vimsnippets
git clone https://github.com/milkypostman/vim-togglelist.git ~/.vim/bundle/vim-togglelist
git clone https://github.com/tomasr/molokai ~/.vim/bundle/molokai
git clone https://github.com/scrooloose/nerdcommenter ~/.vim/bundle/nerdcommenter
cp .vimrc ~/.vimrc
mkdir -p ~/.vim/cpp_header
mkdir -p ~/.vim/text
cp .ycm_extra_conf.py ~/.ycm_extra_conf.py
cp text/funComment.txt ~/.vim/text/funComment.txt
cp cpp_header/cHeader.txt ~/.vim/cpp_header/cHeader.txt
