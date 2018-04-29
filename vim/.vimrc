set nocompatible

" Set the leader to space bar
let mapleader = ' '

filetype indent plugin on
filetype plugin on

syntax on

set hidden

set wildmenu

set showcmd

set hlsearch

set ignorecase
set smartcase

set backspace=indent,eol,start

set autoindent

set nostartofline

set ruler
set colorcolumn=80
set confirm

set visualbell

set t_vb=

set mouse=a

set cmdheight=2

set number

set shiftwidth=2
set softtabstop=2
set expandtab

" open NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.swp$']


" Copy contents into system clipboard
set clipboard=unnamed

highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen

" Show trailing whitespace:
match ExtraWhitespace /\s\+$/


nmap <leader>l :set list!<CR>
nnoremap <C-P> :<C-U> FZF<CR>
nnoremap <C-F> :Ack<space>
nnoremap <silent> <Leader>l :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
nnoremap <Leader>ve :tabe $MYVIMRC<CR>
nnoremap <Leader>vs :source $MYVIMRC<CR>
nnoremap <Leader>r :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
nnoremap <Leader>bd :b#<bar>bd#<CR>
map <C-n> :NERDTreeToggle<CR>

if executable('ag')
    let g:ackprg = 'ag --vimgrep'
end

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'

call plug#end()
