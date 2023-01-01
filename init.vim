
call plug#begin('~/.config/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'lervag/vimtex'
Plug 'vim-jp/vimdoc-ja'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'airblade/vim-rooter'
Plug 'skanehira/translate.vim'
Plug 'skanehira/docker-compose.vim'
Plug 'EdenEast/nightfox.nvim'
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/glyph-palette.vim'
Plug 'vim-scripts/vim-auto-save'
Plug 'skanehira/preview-markdown.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'junegunn/vim-easy-align'
Plug 'jiangmiao/auto-pairs'
Plug 'ervandew/supertab'
call plug#end()

set number
set hlsearch
set smartindent
set list
set showmatch
set wildmenu
set ruler
set ic
set noswapfile
set ignorecase
set smartcase
set wrapscan
set incsearch
set inccommand=split
set laststatus=2
set history=1000
set encoding=utf8
set mouse=a
set tabstop=4
set shiftwidth=4
set ttimeoutlen=50
set clipboard+=unnamed
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
let g:highlightedyank_highlight_duration = 150

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_idx_format = {'0': '0 ','1': '1 ','2': '2 ','3': '3 ','4': '4 ','5': '5 ','6': '6 ','7': '7 ','8': '8 ','9': '9 '}


