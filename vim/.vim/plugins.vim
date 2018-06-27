" ==================================================================
" Set runtime to .vim directory, so neovim can properly run autoload
" ==================================================================
set runtimepath+=~/.vim/

if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	augroup plugsetup
    	au!
    	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
	augroup end
endif

call plug#begin('~/.vim/plugged')

Plug 'w0rp/ale'
Plug 'mattn/emmet-vim'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'terryma/vim-multiple-cursors'
Plug 'jedrzejchalubek/oceanic-next.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'easymotion/vim-easymotion'

call plug#end()
