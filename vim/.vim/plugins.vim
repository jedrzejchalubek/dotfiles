" Set runtime to .vim directory, so neovim can properly run autoload
set runtimepath+=~/.vim/

if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	augroup plugsetup
    	au!
    	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
	augroup end
endif

call plug#begin('~/.vim/plugged')

Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'jeffkreeftmeijer/vim-numbertoggle'

call plug#end()
