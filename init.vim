
" curl -fLo ~/.confg/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin('~/.config/nvim/plugged')
" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Lokaltog/vim-powerline'
Plug 'ryanoasis/vim-devicons'

" fern
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/glyph-palette.vim'

" fzf
Plug '/usr/bin/fzf'
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

" telescope
Plug 'nvim-telescope/telescope.nvim'
Plug 'DevonMorris/telescope-docker.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'kyazdani42/nvim-web-devicons'

" base
Plug 'mbbill/undotree'
Plug 'vim-scripts/vim-auto-save'
Plug 'machakann/vim-highlightedyank'
Plug 'ervandew/supertab'
Plug 'junegunn/vim-easy-align'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'sheerun/vim-polyglot'
Plug 'ntpeters/vim-better-whitespace'
Plug 'svermeulen/vim-yoink'

" other
Plug 'EdenEast/nightfox.nvim'
Plug 'skanehira/translate.vim'
Plug 'thinca/vim-quickrun'
Plug 'vim-jp/vimdoc-ja'
Plug 'lervag/vimtex'
Plug 'skanehira/preview-markdown.vim'
Plug 'skanehira/docker-compose.vim'

" search
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'haya14busa/incsearch-easymotion.vim'
call plug#end()

let g:mapleader="\<space>"

" look
set number
set list
set showmatch
set matchpairs& matchpairs+=<:>
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%
set wrap
set matchtime=3
set laststatus=2
set display=lastline
set pumheight=10

" search, replace
set ignorecase
set smartcase
set wrapscan
set incsearch
set gdefault
set inccommand=split
nnoremap <Leader>re :%s/<C-R><C-W>//g<Left><Left>
nnoremap <Esc><Esc> <cmd>nohlsearch<cr>

" indent
set autoindent
set smartindent
set expandtab
set tabstop=3
set softtabstop=3
set shiftwidth=3
set pastetoggle=<F2>

" completion
set wildmode=list:longest
set infercase
set wildmenu
set hlsearch
au FileType * setlocal formatoptions-=ro

" window
set splitbelow
set splitright
set diffopt+=vertical
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap ss <C-w>s <C-w>j
nnoremap sv <C-w>v <C-w>l

" Operation
set clipboard+=unnamed
set backspace=indent,eol,start
set hidden
set textwidth=0
set mouse=a
set completeopt=menu,menuone
set encoding=utf-8
set fileencoding=&encoding
set fileencodings=ucs-bom,utf-8,iso-2022-jp,cp932,euc-jp,default,latin
set ambiwidth=double
nnoremap O :<C-u>call append(expand('.'), '')<cr>j
tmap <Esc> <C-\><C-n>
nnoremap <C-j> }
nnoremap <C-k> {
nnoremap <C-h> ^
nnoremap <C-l> $
nnoremap <C-m> %
nnoremap <C-s> <cmd>w<cr>
inoremap <C-s> <esc><cmd>w<cr>
nnoremap あ a
nnoremap い i
nnoremap お o

" log
set history=1000
set undofile
set undodir=~/.config/nvim/undodir
set noswapfile
set directory=.
set nobackup
set nowritebackup
autocmd BufReadPost *
      \ if line("'\"") > 0 && line ("'\"") <= line("$") |
      \ exe "normal! g'\"" |
      \ endif

" other
filetype plugin indent on
set encoding=utf8
set helplang=ja
set ttimeoutlen=50
" colorscheme nightfox
nnoremap <Leader>. <cmd>new ~/.dotfile<cr>

" ### plugin ###
" telescope
nnoremap ts <cmd>Telescope<cr>
nnoremap tf <cmd>Telescope find_files<cr>
nnoremap th <cmd>History<cr>

" undotree
nnoremap tu <cmd>UndotreeToggle<cr>

" coc
inoremap <silent><expr> <cr> coc#pum#visible()?coc#pum#confirm() : "\<cr>"
nnoremap <Leader>, <cmd>new ~/.config/nvim/snippet<cr>

" highlightedyank
let g:highlightedyank_highlight_duration = 150

" fern
let g:fern#renderer = 'nerdfont'
let g:fern#default_hidden=1
nnoremap ff :Fern . -reveal=% -drawer -toggle -width=40<cr>

" airline
let g:airline_theme = 'wombat'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
nnoremap <C-p> <Plug>AirlineSelectPrevTab
nnoremap <C-q> <Plug>AirlineSelectNextTab

" quickrun
let g:quickrun_config={'*':{'split':''}}

" whitespace
let g:better_whitespace_enabled = 0
let g:strip_whitespace_on_save = 1
let g:strip_whitespace_confirm = 0

" incsearch
nnoremap /  <Plug>(incsearch-forward)
nnoremap s/ <Plug>(incsearch-fuzzyspell-/)
nnoremap sl <Plug>(easymotion-overwin-line)
nnoremap sw <Plug>(easymotion-overwin-w)
nnoremap sf <Plug>(easymotion-overwin-f2)
function! s:config_easyfuzzymotion(...) abort
   return extend(copy({
     \ 'converters': [incsearch#config#fuzzyword#converter()],
     \ 'modules': [incsearch#config#easymotion#module({'overwin': 1})],
     \ 'keymap': {"\<CR>": '<Over>(easymotion)'},
     \ 'is_expr': 0,
     \ 'is_stay': 1
     \ }), get(a:, 1, {}))
endfunction
nnoremap <silent><expr> <Space>/ incsearch#go(<SID>config_easyfuzzymotion())

" yoink
nnoremap p <plug>(YoinkPaste_p)
nnoremap <expr> p yoink#canSwap()?'<plug>(YoinkPostPasteSwapBack)':'<plug>(YoinkPaste_p)'
nnoremap <expr> P yoink#canSwap()?'<plug>(YoinkPostPasteSwapForward)':'<plug>(YoinkPaste_P)'
let g:yoinkSavePersistently = 1

" latex
let maplocalleader=' '
let g:tex_flavor = "latex"

