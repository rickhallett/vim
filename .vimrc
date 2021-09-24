syntax on
set modeline
set expandtab
set tabstop=4
set shiftwidth=4
set exrc " .vimrc in local project dir
set secure
set number " show line numbers
set noswapfile " disable the swapfile
set hlsearch " highlight all results
set ignorecase " ignore case in search
set incsearch " show search results as you type
autocmd BufRead,BufNewFile * set signcolumn=yes
autocmd FileType tagbar,nerdtree set signcolumn=no
set foldmethod=indent
set nofoldenable
" set number relativenumber
"set diffopt+=vertical
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu | set rnu   | endif
:  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu | set nornu | endif
:augroup END

call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'preservim/nerdtree'
Plug 'pangloss/vim-javascript'
Plug 'vim-airline/vim-airline'
Plug 'atom/fuzzy-finder'
Plug 'eslint/eslint'
call plug#end()


"-- THEMING --
set cursorline
set background=dark
let g:molokai_original = 1
let g:rehash256 = 1
"colo zenburn
colo molokai
let g:gitgutter_set_sign_backgrounds = 0

"-- NERDTree --
let NERDTreeShowHidden=1
" autocmd VimEnter * NERDTree
:let g:NERDTreeWinSize=60
nmap <F6> :NERDTreeToggle<CR>

"-- Airline --
let g:airline#extensions#tabline#enabled = 1

" -- FZF
nmap <C-P> :FZF<CR>

" -- Default Vim changes
inoremap jk <ESC>

