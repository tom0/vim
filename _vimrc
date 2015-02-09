set nocompatible	" Use gVim defaults

" set tw=80		 tw to specify a default text width
set fo=tcrq		" fo to specify default formatoptions
			" t auto-wraps text using textwidth
			" c auto-wraps comments using textwidth
			" r auto-inserts the current comment leader
			" q allows formatting of comments

" allow backspacing over everything in insert mode
set backspace=2
set directory=.,$TEMP
set nobackup
set nowritebackup
set tabstop=4           " Each Tab has 1_spaces equivalent width
set shiftwidth=4        " Indentation width when using >> and << re-indentation
set expandtab           " Tabs are expanded to spaces
set guifont=consolas
set guioptions-=m
set guioptions-=T
set autoindent
set cindent

execute pathogen#infect()
syntax on
filetype plugin on

colorscheme solarized
set background=light

set nobackup
set nowritebackup

"""""""""""""""""""""""""""""""""""""""""""""""
" Disable arrow keys.
"""""""""""""""""""""""""""""""""""""""""""""""
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

