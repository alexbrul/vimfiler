set nocompatible              " be iMproved, required
filetype off                  " required
let mapleader = ","
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'valloric/youcompleteme'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'mbbill/undotree'
Plugin 'tpope/vim-obsession'
"Plugin 'neomake/neomake'




" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

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

set number
set ruler
set showcmd
set hlsearch
set showmatch
set smartindent
set modeline
set hidden 
set nojoinspaces
set scrolloff=10
set textwidth=80	
set bs=2
syntax on
set encoding=utf-8
filetype plugin on
filetype indent on
set autoread
set cmdheight=2
set ignorecase
set smartcase 
set incsearch
set lazyredraw
set magic


" Av med lyd! Viktig
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"set foldcolumn=1

set tabstop=4
set shiftwidth=4
"set expandtab

fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun


" Sletter ekstra spaces! 
if has("autocmd")
    autocmd BufWritePre *.txt,*.js,*.py,*.wiki,*.sh,*.coffee :call CleanExtraSpaces()
endif




set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"Dele copy buffer
set clipboard=unnamed

map <leader>N :NERDTreeToggle<CR>
nnoremap <leader>a :echo("\<leader\> yessir den virker. leader = <leader>")<CR>
noremap <leader>sop iSystem.out.println();<esc>hi
nnoremap <leader>s :w<CR>



