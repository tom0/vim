"""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'vimwiki/vimwiki'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'jiangmiao/auto-pairs'
Plug 'sjl/gundo.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'airblade/vim-gitgutter'
Plug 'fatih/vim-go'
Plug 'junegunn/goyo.vim'
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ternjs/tern_for_vim'
Plug 'carlitux/deoplete-ternjs'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'davidhalter/jedi-vim'
Plug 'zchee/deoplete-jedi'
Plug 'zchee/deoplete-go'
Plug 'machakann/vim-highlightedyank'
Plug 'autozimu/LanguageClient-neovim'
Plug 'gregsexton/gitv'

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""
" Options
"""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible	" Use gVim defaults

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
set guifont=Meslo\ LG\ M\ for\ Powerline:h12
set guioptions-=m
set guioptions-=T
set autoindent
set cindent
set hidden
set hlsearch
set laststatus=2
set nobackup
set nowritebackup
set nowrap
set number
set splitright
set splitbelow
set signcolumn=yes
set nomodeline

syntax on
filetype plugin on

colorscheme solarized
set background=dark

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

"""""""""""""""""""""""""""""""""""""""""""""""
" NeoVim
"""""""""""""""""""""""""""""""""""""""""""""""
if has('nvim')
    tnoremap <Esc> <C-\><C-n>

    set inccommand=split
endif

"""""""""""""""""""""""""""""""""""""""""""""""
" Settings
"""""""""""""""""""""""""""""""""""""""""""""""
for fpath in split(globpath('~/.vim/settings', '*.vim'), '\n')
  exe 'source' fpath
endfor
