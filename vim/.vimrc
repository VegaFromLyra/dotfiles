set nocompatible

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

set confirm

set visualbell

set t_vb=

set mouse=a

set cmdheight=2

set number

set shiftwidth=4
set softtabstop=4
set expandtab

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdcommenter'

call plug#end()
