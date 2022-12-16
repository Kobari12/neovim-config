
call plug#begin('~/.config/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'tomtom/tcomment_vim'
Plug 'lervag/vimtex'
" Plug 'vim-scripts/vim-auto-save'
" Plug 'skanehira/preview-markdown.vim'
call plug#end()

set number
set hlsearch
set smartindent
set laststatus=2
set wildmenu
set ruler
set history=1000
set encoding=utf8
set mouse=a
set tabstop=4
set shiftwidth=4
set ttimeoutlen=50
set clipboard=unnamed
set shell=zsh
syntax enable

nmap <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>

nmap ff :NERDTreeToggle<CR>
nmap <C-p> <Plug>AirlineSelectPrevTab
nmap <C-n> <Plug>AirlineSelectNextTab

nmap sj <C-w>j
nmap sk <C-w>k
nmap sl <C-w>l
nmap sh <C-w>h
nmap ss <C-w>s
nmap sv <C-w>v

inoremap { {}<LEFT>
inoremap ( ()<LEFT>
inoremap < <><LEFT>
inoremap ' ''<LEFT>
inoremap " ""<LEFT>
inoremap {<Enter> {}<Left><CR><ESC><S-o>

noremap O :<C-u>call append(expand('.'), '')<Cr>j

autocmd FileType tex inoremap $ $$<LEFT> 
autocmd FileType tex nmap lb :VimtexCompile<CR> 
autocmd FileType tex nmap lc :!sh ~/bin/texclean.sh<CR><Enter>

autocmd TermOpen * startinsert
tnoremap <Esc> <C-\><C-n>

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_idx_format = {'0': '0 ','1': '1 ','2': '2 ','3': '3 ','4': '4 ','5': '5 ','6': '6 ','7': '7 ','8': '8 ','9': '9 '}
let g:latex_latexmk_options = '-pdf'
let g:vimtex_compiler_latexmk = {
\ 'background': 1,
\ 'build_dir': './out/',
\ 'continuous': 1,
\ 'options': [
\    '-pdfdvi',
\    '-verbose',
\    '-file-line-error',
\    '-synctex=1',
\    '-interaction=nonstopmode',
\],
\}

