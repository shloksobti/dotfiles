" Shlok Sobti

" Colors {{{ 
syntax on
"colorscheme badwolf         
autocmd vimenter * colorscheme gruvbox
set background=dark
set termguicolors 
" }}}

" Spaces and Tabs {{{
set tabstop=2 
set shiftwidth=2 
set softtabstop=2
set expandtab
set modeline
filetype indent on
filetype plugin on
set autoindent
" }}}

" Searching {{{
set ignorecase
set smartcase
set hlsearch
set incsearch
set showmatch
" }}}

" UI Layout {{{
set cursorline
set showcmd 
set wildmenu 
set number
set lazyredraw
set encoding=utf-8
set mouse=a
" }}}

" Folding {{{
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indent level
" }}}

" Backups {{{
set backup
set backupdir=~/.vim-tmp//,~/.tmp//,~/tmp//,/var/tmp//,/tmp//
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp//,~/.tmp//,~/tmp//,/var/tmp,/tmp//
set writebackup
" }}}

" Vim Plug {{{
call plug#begin('~/.vim/plugged')

Plug 'bling/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'rhysd/vim-clang-format'
Plug 'bfrg/vim-cpp-modern'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'Valloric/YouCompleteMe'

call plug#end()
" }}}

" Plugin Modifications {{{
" Nerd Tree
map <C-n> :NERDTreeToggle<CR>
autocmd vimenter * NERDTree                                                                              " Open NERDTree on start up
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif    " Close NERDTree if only window left
" You Complete Me 
"let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

" }}}

" Custom Overrides {{{
"autocmd FileType python set shiftwidth=2 tabstop=2 expandtab softtabstop=2
" }}}

" Custom Mappings {{{
nnoremap <Leader>w <C-w>
nnoremap <Leader>e za
nnoremap <leader><space> :nohlsearch<CR>
" }}}

" vim:foldmethod=marker:foldlevel=0
