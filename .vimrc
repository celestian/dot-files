set nocompatible
set tabstop=4
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab
set number


" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
    if &compatible
      set nocompatible               " Be iMproved
    endif
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'jistr/vim-nerdtree-tabs'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'bling/vim-airline'
NeoBundle 'Valloric/YouCompleteMe'
call neobundle#end()

" ------------------------------------------------------------------------------
syntax on
filetype plugin indent on

set cursorline
set colorcolumn=80
set nu
set wrap
set linebreak
set nolist " list disables linebreak

"Highlight trailing spaces
:nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" --- SOLARIZED ----------------------------------------------------------------
" You must use https://github.com/Anthony25/gnome-terminal-colors-solarized
" for your gnome-terminal.
set background=dark " dark | light "
set t_Co=16
colorscheme solarized
" --- NERDTree -----------------------------------------------------------------
" --- NERDTree Tabs ------------------------------------------------------------
nmap <F8> :NERDTreeTabsToggle<CR>
" --- TagBar -------------------------------------------------------------------
nmap <F9> :TagbarToggle<CR>
" --- Airline ------------------------------------------------------------------
let g:airline#extensions#tabline#enabled = 1
" --- YouCompleteMe ------------------------------------------------------------
let g:ycm_global_ycm_extra_conf='/~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm'
" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck


" Zajimave...
" CtrlP
