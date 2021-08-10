syntax on
set modeline
set expandtab
set tabstop=4
set shiftwidth=4
set exrc " .vimrc in local project dir
set secure
autocmd BufRead,BufNewFile * set signcolumn=yes
autocmd FileType tagbar,nerdtree set signcolumn=no
set foldmethod=indent
set nofoldenable
set number relativenumber
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
call plug#end()


"-- THEMING --
set cursorline
set background=dark
let g:molokai_original = 1
let g:rehash256 = 1
colo zenburn

let g:gitgutter_set_sign_backgrounds = 0

"-- NERDTree --
let NERDTreeShowHidden=1
autocmd VimEnter * NERDTree

"-- Airline --
let g:airline#extensions#tabline#enabled = 1
