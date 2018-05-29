set number
syntax on
filetype plugin on
filetype indent on 
set t_Co=256
set background=dark
colo gruvbox
set noet ts=2 sw=2 sts=2
set smartindent
set incsearch 
set hlsearch
set smartcase
set showmatch
let mapleader = "\<Space>"
set encoding=utf-8


autocmd BufRead,BufWritePre *.html normal gg=G
autocmd BufRead,BufWritePre *.py normal gg=G
au Filetype python setl et ts=2 sw=2

"golang
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

"netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_winsize = 10

let g:jsx_ext_required = 0
au BufWritePre *.js Neoformat
