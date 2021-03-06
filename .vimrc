" Encoding
set encoding=utf-8
scriptencoding utf-8
set fileencoding=utf-8
set fileencodings=utf-8,cp932

" Fileformats
set fileformats=unix,dos,mac

" Number
set number
" Number color
highlight LineNr ctermfg=239
" Wrap line
set wrap
set display=lastline

" Search
set incsearch
set ignorecase
set smartcase
set hlsearch

" Completion (default: Ctrl + p)
set pumheight=10

" Completion file name
set wildmenu wildmode=list:longest,full
set history=10000

" Indent
set expandtab
set tabstop=4
set softtabstop=4
set autoindent
set smartindent
set shiftwidth=4

" Stop beep & screen flash
set visualbell t_vb=

" Beginngin of line (Shift + h)
nnoremap <S-h> ^
" End of line (Shift + l)
nnoremap <S-l> $

" Yank to End of line
nnoremap Y y$

" Show match
set showmatch
set matchtime=1

" vim-plug
call plug#begin()

" airblade/vim-gitgutter
Plug 'airblade/vim-gitgutter'
set updatetime=250
highlight GitGutterAdd ctermfg=blue ctermbg=brown

" scrooloose/nerdtree
"   - open (Ctrl + e)
"   - cur (Ctrl + w, h-j-k-l)
Plug 'scrooloose/nerdtree'
let NERDTreeShowHidden=1
nnoremap <C-e> :NERDTree<CR>

" vim-airline/vim-airline
" vim-airline/vim-airline-themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let AirlineTheme='dark'

" tpope/vim-fugitive
Plug 'tpope/vim-fugitive'

call plug#end()
