"------------ configuracion inicial -------------------
"----------- sin saber nada ---------------------------
set number
set relativenumber
set shiftwidth=2
set tabstop=2
set autoindent
set smartindent
imap ii <esc>
imap ññ <Right>
"------------------ plugins ----------------------------
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
" Make sure you use single quotes
" nerdtree!!
Plug 'preservim/nerdtree'
" airLine
Plug 'vim-airline/vim-airline'
" airLine Themes
Plug 'vim-airline/vim-airline-themes'
call plug#end()
"------- recomendado por el instador de plugins --------
filetype plugin indent on 
syntax enable
"--------------configuracion de nerdtree----------------
"---------------shortcuts para nerdtree-----------------
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <silent> <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
"------------ configuracion de splits ------------------
" -- splits vs vertical split sp split--
nnoremap sj :vs<cr>
nnoremap sk :sp<cr>
" --	movimiento entre ventanas --
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
" --	mover ventana para la derecha y para abajo --
nnoremap <c-Left> <c-w>H
nnoremap <c-Down> <c-w>J
nnoremap <c-Up> <c-w>K
nnoremap <c-Right> <c-w>L
" -- cambiar el tamaño de las ventanas --
nnoremap dl :vertical resize +5<cr>
nnoremap dh :resize -5<cr>
nnoremap dj :resize +5<cr>
nnoremap dk :vertical resize -5<cr>

