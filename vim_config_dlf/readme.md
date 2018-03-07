Docker
-------
docker repo [https://hub.docker.com/r/fong5855/vim/](https://hub.docker.com/r/fong5855/vim/)

clone docker image
		docker pull fong5855/vim

usage for example:
		docker run --name vim -p 1234:22 -dit -v E:\docker-vim\:/root/docker-vim fong5855/vim

VIM 配置
---------
0. 把 .vimrc .vimrc.bundle 放到root
1. 安裝 vundle
		apt-get install git curl
		git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
		vim

	輸入 
		:PluginInstall
vundle會自動安裝 .vimrc.bundle內的插件
3. compile YCM  
	a. 安裝 libclang
		apt-get install llvm-3.9 clang-3.9 libclang-3.9-dev libboost-all-dev
	b. 安裝 cmake
		sudo apt-get install build-essential cmake
	c. 安裝 python(3)-dev
		sudo apt-get install python-dev
	d. 編譯 YCM
		cd ~/.vim/bundle/YouCompleteMe
		./install.sh --clang-completer
	e. 缺什就補什 windows應該是編譯不起來

