"------------ configuracion inicial -------------------
"----------- sin saber nada ---------------------------
set number
set relativenumber
set shiftwidth=2
set tabstop=2
set autoindent
set smartindent
set foldmethod=syntax
let mapleader = "~"
"
"------------------ plugins ----------------------------
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
" Make sure you use single quotes
"
"-----------------call plugins----------------------
source /home/dopel/.config/nvim/callPlugins.vim
call plug#end()
"------- recomendado por el instador de plugins --------
filetype plugin indent on
syntax enable
"
"--------------------- mis scripts --------------------
"             -- abbreviation --
source /home/dopel/.config/nvim/abbreviation.vim
"              -- keybinds --
source /home/dopel/.config/nvim/keybinds.vim
"
"--------------------- airline extend -----------------
let g:airline_theme="ouo"
let g:airline_extensions = ['quickfix', 'wordcount', 'term', 'branch', 'fugitiveline', 'tmuxline', 'tabline']
function! AirlineInit()
	let g:airline_section_b = airline#section#create(['branch'])
endfunction
autocmd User AirlineAfterInit call AirlineInit()
let g:airline_powerline_fonts = 1
"
"--------------------- coc configuration ---------------------"
source /home/dopel/.config/nvim/cocConfig.vim
"------------------- barbar configuration --------------------"
source /home/dopel/.config/nvim/barbarConfig.vim
