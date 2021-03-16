"------------ configuracion inicial -------------------
"----------- sin saber nada ---------------------------
set number
set relativenumber
set shiftwidth=2
set tabstop=2
set autoindent
set smartindent
imap ii <ESC>
imap ññ <Right>
"------------------Nuevos keybinds---------------------
"------------ahora sabiendo un poco---------feb13------
"-------------------para cerrar-------------------------
nnoremap qq :q<cr>
nnoremap qa :qall<cr>
" lo mismo que qq
"nnoremap qc <c-w>c<cr>
"------------ keybinds all windows ---------feb22-------
"    -- windo --
nnoremap ad :windo :diffthis<cr>
nnoremap aq :windo :q!<cr>
nnoremap aw :windo :wq<cr>
"   -- new windows con terminal --
"nnoremap :new +term
"nnoremap :vnew +term
"----------  write  -------------------- feb 22 -------
nnoremap ww :w<cr>
nnoremap wa :wall<cr>
"----------------- Tabs keybinds ---------feb 22--------
nnoremap tn :tabnew<cr>
nnoremap tq :tabo<cr>
nnoremap ts :tab split<cr>
"---------- tilix ----------------------- feb 22 -------
" -- split terminal con tilix --
command-complete=shellcmd TermRight :!tilix -a session-add-right -w %:p:h &
command-complete=shellcmd TermDown :!tilix -a session-add-down -w %:p:h &
nnoremap <silent> xj :TermDown<cr>
nnoremap <silent> xl :TermRight<cr>
"  -- new tab con tilix y new window con tilix --
nnoremap xn :!tilix -a app-new-window -w %:p:h<cr>
"dont work
"nnoremap xN :!tilix -a add-new-session -w %:p:h<cr>
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
"------------ configuracion de splits ------------------
" -- splits vs vertical split sp split--
nnoremap sl :vs<cr>
nnoremap sj :sp<cr>
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
" -- split terminal con tilix y vifm --
nnoremap <silent> ff :Vifm<cr>
nnoremap fl :VsplitVifm<cr>
nnoremap fj :SplitVifm<cr>
nnoremap <silent> fd :DiffVifm<cr>
"--------------------- mis scripts --------------------
"             -- abbreviation --
source /home/dopel/.config/nvim/abbreviation 
"--------------------- airline extend -----------------
let g:airline_theme="bubblegum"
let g:airline_extensions = ['quickfix', 'wordcount', 'term', 'branch', 'fugitiveline']
function! AirlineInit()
	let g:airline_section_b = airline#section#create(['branch'])
endfunction
autocmd User AirlineAfterInit call AirlineInit()
"let g:airline_section_b %{airline#util#wrap(branch(),0)}
