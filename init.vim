
call jetpack#begin('~/.config/nvim/plugged')
Jetpack 'neoclide/coc.nvim', {'branch': 'release'}
Jetpack 'preservim/nerdtree'
Jetpack 'vim-airline/vim-airline'
Jetpack 'vim-airline/vim-airline-themes'
Jetpack 'ryanoasis/vim-devicons'
Jetpack 'tpope/vim-commentary'
Jetpack 'tpope/vim-fugitive'
Jetpack 'tpope/vim-surround'
Jetpack 'airblade/vim-gitgutter'
Jetpack 'lervag/vimtex'
Jetpack 'vim-jp/vimdoc-ja'
Jetpack 'nvim-lua/plenary.nvim'
Jetpack 'nvim-telescope/telescope.nvim'
Jetpack 'airblade/vim-rooter'
Jetpack 'skanehira/translate.vim'
Jetpack 'skanehira/docker-compose.vim'
Jetpack 'EdenEast/nightfox.nvim'
Jetpack 'junegunn/fzf.vim'
Jetpack 'junegunn/fzf', { 'do': { -> fzf#install() } }
Jetpack 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }
Jetpack 'lambdalisue/fern.vim'
Jetpack 'lambdalisue/fern-git-status.vim'
Jetpack 'lambdalisue/nerdfont.vim'
Jetpack 'lambdalisue/fern-renderer-nerdfont.vim'
Jetpack 'lambdalisue/glyph-palette.vim'
Jetpack 'vim-scripts/vim-auto-save'
Jetpack 'skanehira/preview-markdown.vim'
Jetpack 'machakann/vim-highlightedyank'
Jetpack 'junegunn/vim-easy-align'
Jetpack 'jiangmiao/auto-pairs'
Jetpack 'ervandew/supertab'
call jetpack#end()

set number
set hlsearch
set smartindent
set list
set showmatch
set wildmenu
set ruler
set ic
set laststatus=2
set history=1000
set encoding=utf8
set mouse=a
set tabstop=4
set shiftwidth=4
set ttimeoutlen=50
set clipboard=unnamed
set helplang=ja
set syntax=on

tnoremap <Esc> <C-\><C-n>
noremap O :<C-u>call append(expand('.'), '')<Cr>j

nmap <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>

nmap sj <C-w>j
nmap sk <C-w>k
nmap sl <C-w>l
nmap sh <C-w>h
nmap ss <C-w>s sj
nmap sv <C-w>v sl

let g:fern#renderer = 'nerdfont'
nnoremap ff :Fern . -reveal=% -drawer -toggle -width=40<CR>
colorscheme nightfox

let g:coc_filetype_map = {'tex': 'latex'}
let g:docker_compose_open_terminal_way = 'top'
let g:highlightedyank_highlight_duration = 150

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_idx_format = {'0': '0 ','1': '1 ','2': '2 ','3': '3 ','4': '4 ','5': '5 ','6': '6 ','7': '7 ','8': '8 ','9': '9 '}

