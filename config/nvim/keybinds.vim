"------------------Nuevos keybinds---------------------
"------------ahora sabiendo un poco mas ---------
"-----Friday_treinta_de_March_del_dos_mil_veintitres

"-------------------para cerrar-------------------------
"
imap ii <ESC>
nnoremap qq :q<cr>
nnoremap qa :qall<cr>
"
"------------ keybinds all windows ---------feb22-------
"    -- windo --
nnoremap ad :windo :diffthis<cr>
nnoremap aq :windo :q!<cr>
nnoremap aw :windo :wq<cr>
"   -- new windows con terminal --
"----------  write  -------------------- feb 22 -------
nnoremap ww :w<cr>
nnoremap wa :wall<cr>
"----------------- Tabs keybinds ---------feb 22--------
nnoremap tn :tabnew<cr>
nnoremap tq :tabo<cr>
"------------ CONFIGURACION DE SPLITS ------------------
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
nnoremap <Leader>gl :vertical resize +5<cr>
nnoremap <Leader>gh :resize -5<cr>
nnoremap <Leader>gj :resize +5<cr>
nnoremap <Leader>gk :vertical resize -5<cr>
"
"--------------- CONFIGURACION DE VIFM -------------------
nnoremap <silent> ff :Vifm<cr>
nnoremap fl :VsplitVifm<cr>
nnoremap fj :SplitVifm<cr>
noremap <silent> fd :DiffVifm<cr>
"
"-----------------CONFIGURACION DE NERDTREE-----------------
nnoremap <C-t> :NERDTreeToggle<CR>
"
"-------- move in buffer --------
nnoremap bp :bprevious<cr>
nnoremap bn :bnext<cr>
"---------------- TabgBar ----------------
nnoremap <Leader>T :TagbarOpen<cr>
"---------------- Telescope ----------------
nnoremap <Leader>ff :Telescope find_files<cr>
