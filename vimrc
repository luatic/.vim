set clipboard=unnamed
set noswapfile
set wildmenu
set nocompatible
set number relativenumber
syntax on
set t_Co=256
set background=dark
set noet ts=2 sw=2 sts=2
set incsearch 
set hlsearch
set smartcase
set showmatch
let mapleader = "\<Space>"
set encoding=utf-8
au FileType,BufNewFile,BufRead,FileType,OptionSet *  setlocal formatoptions-=cro
set smartindent
"au BufRead,BufWrite *.html normal gg=G

call plug#begin('~/.vim/plugged')

Plug 'dense-analysis/ale'
Plug 'alvan/vim-closetag'
Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'Valloric/YouCompleteMe'
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'

call plug#end()
filetype indent on 
"colorscheme
colo gruvbox
"fugitive 
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>
"ycm 
let g:ycm_autoclose_preview_window_after_insertion = 1 
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_disable_signature_help = 1
"netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_winsize = 10
"ale 
let g:ale_fixers = ['prettier'] 
let g:ale_fix_on_save = 1
let g:hugohelper_spell_check_lang = 'en_gb'
