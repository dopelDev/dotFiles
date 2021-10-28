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
"---------- tilix ----------------------- feb 22 -------
" -- split terminal con tilix --
"command-complete=shellcmd TermRight :!tilix -a session-add-right -w %:p:h &
"command-complete=shellcmd TermDown :!tilix -a session-add-down -w %:p:h &
"nnoremap <silent> xj :TermDown<cr>
"nnoremap <silent> xl :TermRight<cr>
"  -- new tab con tilix y new window con tilix --
"nnoremap xn :!tilix -a app-new-window -w %:p:h<cr>
"dont work
"nnoremap xN :!tilix -a add-new-session -w %:p:h<cr>
"
"
"------------------ plugins ----------------------------
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
" Make sure you use single quotes
"-----------------call plugins----------------------
source /home/dopel/.config/nvim/callPlugins.vim
call plug#end()
"------- recomendado por el instador de plugins --------
filetype plugin indent on 
syntax enable
"
"--------------------- mis scripts --------------------
"             -- abbreviation --
source /home/dopel/.config/nvim/abbreviation 
"              -- keybinds --
source /home/dopel/.config/nvim/keybinds
"
"--------------------- airline extend -----------------
let g:airline_theme="angr"
let g:airline_extensions = ['quickfix', 'wordcount', 'term', 'branch', 'fugitiveline', 'tmuxline', 'tabline']
function! AirlineInit()
	let g:airline_section_b = airline#section#create(['branch'])
endfunction
autocmd User AirlineAfterInit call AirlineInit()
"let g:airline_section_b %{airline#util#wrap(branch(),0)}
let g:airline_powerline_fonts = 1
"
"-----------------------Vifm configuration--------------------"
"algun dia cuando sepa mas !!!!
"
"--------------------- coc configuration ---------------------"
source /home/dopel/.config/nvim/cocConfig.vim
