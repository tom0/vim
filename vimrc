"""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

Plug '/usr/local/opt/fzf'
Plug 'airblade/vim-gitgutter'
Plug 'airblade/vim-rooter'
Plug 'editorconfig/editorconfig-vim'
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'mbbill/undotree'
Plug 'mitsuhiko/vim-jinja'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'saltstack/salt-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vimwiki/vimwiki'

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""
" Options
"""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible

set fo=tcrq	" fo to specify default formatoptions
			" t auto-wraps text using textwidth
			" c auto-wraps comments using textwidth
			" r auto-inserts the current comment leader
			" q allows formatting of comments

set autoindent
set backspace=2
" set backupcopy=auto
set directory=.,$TEMP
set expandtab
set guifont=Jetbrains\ Mono:h13
set guioptions-=m
set guioptions-=T
set hidden
set hlsearch
set foldlevelstart=99
set laststatus=2
set nobackup
set nomodeline
set nowrap
set nowritebackup
set number
set shiftwidth=4
set signcolumn=yes
set smartindent
set splitbelow
set splitright
set swapfile
set tabstop=4
set termguicolors
" set writebackup
if has('nvim')
    set inccommand=split
endif

syntax on
filetype plugin on

colorscheme gruvbox
set background=dark

"""""""""""""""""""""""""""""""""""""""""""""""
" Mapppings
"""""""""""""""""""""""""""""""""""""""""""""""
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
nnoremap <leader>p<space> :set paste!<CR>
if has('nvim')
    tnoremap <Esc> <C-\><C-n>
endif

"""""""""""""""""""""""""""""""""""""""""""""""
" Settings
"""""""""""""""""""""""""""""""""""""""""""""""
for fpath in split(globpath('~/.vim/settings', '*.vim'), '\n')
  exe 'source' fpath
endfor
