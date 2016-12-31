set nocompatible
filetype off

set clipboard=unnamed
set number

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'Valloric/YouCompleteMe'
Plugin 'fatih/vim-go'
Plugin 'aperezdc/vim-template'
Plugin 'scrooloose/nerdtree'
Plugin 'VundleVim/Vundle.vim'

call vundle#end()
filetype plugin indent on

set history=5000

" Faster Saving
nmap <leader>w :w!<cr>

" Correct backspace
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Enable syntax highlighting
syntax enable

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Unix as standard file type
set ffs=unix,dos,mac

" Turn backup off
set nobackup
set nowb
set noswapfile

set gfn=Hack\ 14,Source\ Code\ Pro\ 12,Bitstream\ Vera\ Sans\ Mono\ 12

map <C-n> :NERDTreeToggle<CR>

let g:license = 'All Rights Reserved.'
let g:username = 'Matt Rickard'
let g:email = 'm@rickard.email'

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
