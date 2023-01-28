noremap <SPACE> <Nop>
let mapleader=" "

:set number
:set foldmethod=indent
:set tabstop=4
:set shiftwidth=4
:set softtabstop=4
:set expandtab

packloadall		" Load all plugins
silent! helptags ALL	" Load helps files for all plugins
autocmd BufRead * norma zR

" Plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'github/copilot.vim'
Plug 'preservim/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-airline/vim-airline'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'ap/vim-css-color'
Plug 'tc50cal/vim-terminal'
Plug 'tpope/vim-commentary' " Comment lines
Plug 'tpope/vim-surround' " Surround text

call plug#end()

:colorscheme molokai

" Remapping keys
noremap <C-s> :w<CR>
noremap <C-q> :q<CR>
noremap <C-Q> :qa<CR>
noremap <C-z> :undo<CR>
noremap <C-y> :redo<CR>
nnoremap <C-d> :t.<CR>i
noremap <C-o> :e 
noremap <C-k> :help key-notation<CR>
nmap <C-l> gcc
nmap <C-e> ysw

" Split editor
noremap <A-s> :vsplit<CR>
noremap <A-Up> :bnext<CR>
noremap <A-Down> :bprevious<CR>
noremap <A-Left> <C-w><Left>
noremap <S-Left> <C-w><S-h>
noremap <A-Right> <C-w><Right>
noremap <S-Right> <C-w><S-l>
noremap <S-Up> <C-w><S-k>
noremap <S-Down> <C-w><S-j>
noremap <A-w> :bd<CR>
noremap <A-W> <C-w><C-o>
noremap <C-Up> :resize -2<CR>
noremap <C-Down> :resize +2<CR>
noremap <C-Left> :vertical resize -2<CR>
noremap <C-Right> :vertical resize +2<CR>

" Tabs
noremap <C-t> :tabnew<CR>
noremap <C-w> :tabclose<CR>
noremap <S-w> :tabonly<CR>
noremap <A-0> 1gt
noremap <A-1> 1gt
noremap <A-2> 2gt
noremap <A-3> 3gt
noremap <A-4> 4gt
noremap <A-5> 5gt
noremap <A-6> 6gt
noremap <A-7> 7gt
noremap <A-8> 8gt
noremap <A-9> 9gt

" Folders
noremap zO zR
noremap zC zM

" Lateral menu
noremap <C-b> :NERDTreeToggle<CR>
noremap <A-b> :Bookmark<CR>

