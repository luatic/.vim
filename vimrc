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
Plug 'mhartington/oceanic-next'
Plug 'jiangmiao/auto-pairs'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'pangloss/vim-javascript'
Plug 'leshill/vim-json'
Plug 'mxw/vim-jsx'
Plug 'Valloric/YouCompleteMe'
Plug 'tpope/vim-fugitive'

call plug#end()

filetype indent on 
"colorscheme
"colo gruvbox
colo OceanicNext
"golang
let g:go_highlight_function_calls = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_string_spellcheck = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1
let g:go_highlight_function_arguments = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_metalinter_deadline = "5s"
let g:go_fmt_command = "goimports"
let g:go_list_type = "quickfix"
let g:go_template_autocreate = 0
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gs <Plug>(go-doc-split)
au FileType go nmap <Leader>gt <Plug>(go-doc-tab)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
"ycm 
let g:ycm_autoclose_preview_window_after_insertion = 1 
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_disable_signature_help = 1
"netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_winsize = 10
"vim-jsx 
let g:jsx_ext_required = 0
"pangloss
let g:javascript_plugin_jsdoc = 1
"ale 
let g:ale_fixers = ['prettier'] 
let g:ale_fix_on_save = 1
