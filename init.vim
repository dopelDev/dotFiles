set number
set relativenumber
set shiftwidth=2
set tabstop=2
set autoindent
set smartindent
imap ii <esc>
imap ññ <Right>
" imap ss <Left>
" plugins
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
" Make sure you use single quotes
call plug#end()
" recomendado por el instador de plugins 
filetype plugin indent on 
syntax enable 
