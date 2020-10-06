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
Plugin 'reedes/vim-colors-pencil'

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
color simple-dark
" colorscheme pencil

set number
set cursorline
set colorcolumn=99
set smartcase

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
" highlight Normal ctermfg=black ctermbg=lightgreen

" This option forces Vim to source .vimrc file if it present in working directory
" set exrc
" Above option is not secure since it can run .vimrc from any directory. Set secure to restrict
" usage of some commands
set secure

" To autoformat on save
" au BufWrite * :Autoformat

" Settings for the left directory/files pane
" Using netrw
" For the tree-type style. Hit i inside netrw to see others
let g:netrw_liststyle = 3
" Get rid of the banner on top. Hit I inside netrw to toggle
let g:netrw_banner = 0
" Set size to 25
let g:netrw_winsize = 15
" When a file is clicked, open in new tab
" 1 - open files in a new horizontal split
" 2 - open files in a new vertical split
" 3 - open files in a new tab
" 4 - open in previous window
let g:netrw_browse_split = 2
" Open netrw automatically when entering vim
" augroup Drawer
" 	autocmd!
" 	autocmd VimEnter * :Vexplore
" augroup END

" map spacebar to open up Vexplore
nnoremap <space> :Vexplore<CR>

" close if final buffer is netrw or the quickfix
augroup finalcountdown
 au!
 autocmd WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&filetype") == "netrw" || &buftype == 'quickfix' |q|endif
 nmap - :Lexplore<cr>
augroup END
