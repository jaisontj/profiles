" Vundle requirements
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugin for autocomplete
" Plugin 'Valloric/YouCompleteMe'

" AutoIndent
Plugin 'Chiel92/vim-autoformat'

" Theme
" Plugin 'reedes/vim-colors-pencil'

" Status bar
Plugin 'vim-airline/vim-airline'

" Syntax highlighting c++
Plugin 'octol/vim-cpp-enhanced-highlight'

" Go support
Plugin 'fatih/vim-go'

" yaml formatting
Plugin 'avakhov/vim-yaml'

" rust support
Plugin 'rust-lang/rust.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on
" color dracula
" colorscheme pencil
" set background=light

set number

set autoindent
" Indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set backspace=indent,eol,start

" colors column 100 with specified colour
" set colorcolumn=100
" highlight ColorColumn ctermbg=lightgrey
highlight Normal ctermfg=black ctermbg=white


" This option forces Vim to source .vimrc file if it present in working directory
" set exrc
" Above option is not secure since it can run .vimrc from any directory. Set secure to restrict
" usage of some commands
set secure

" To autoformat on save
" au BufWrite * :Autoformat
