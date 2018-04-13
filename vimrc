set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'fatih/vim-go'

Plugin 'scrooloose/nerdtree'

" typescript
Plugin 'leafgarland/typescript-vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'Shougo/vimproc.vim'

call vundle#end()

filetype plugin indent on


let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:go_fmt_command = "goimports"


"Open go doc in vertical window, horizontal, or tab
au Filetype go nnoremap <leader>v :vsp <CR>:exe "GoDef" <CR>
au Filetype go nnoremap <leader>s :sp <CR>:exe "GoDef"<CR>
au Filetype go nnoremap <leader>t :tab split <CR>:exe "GoDef"<CR>

syntax on
set showmatch
set hlsearch
set ruler

set nobackup

set number

set showcmd
set cursorline
set wildmenu
set incsearch


set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

"autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>

colorscheme peachpuff

" Opening and closing braces
imap <C-F> {<CR>}<C-O>O
