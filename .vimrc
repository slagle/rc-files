" Vundle requirements
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'
" Git integration
Plugin 'tpope/vim-fugitive'
" Auto completion
" Plugin 'Shougo/neocomplete'
" ctrlp
Plugin 'kien/ctrlp.vim'
" NERD Tree
Plugin 'scrooloose/nerdtree'
" vim-arline
Plugin 'bling/vim-airline'
" Bufexplorer
Plugin 'jlanzarotta/bufexplorer'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set title
set tabstop=4
set shiftwidth=4
set expandtab
set tw=79
set autoindent
set wrap
set number
set laststatus=2

" The leader key
let mapleader = ';'

" Folding
set foldmethod=indent
set foldlevel=100

" Highlight trailing whitespace
match ErrorMsg '\s\+$'

autocmd FileType make setlocal noexpandtab
autocmd FileType csv setlocal tw=1000
autocmd FileType csv setlocal paste
autocmd FileType spec setlocal noexpandtab tabstop=8

" Case insensitive searches...
set ignorecase
" ...only if entered in all lowercase
set smartcase

" show the `best match so far' as search strings are typed:
set incsearch

:filetype plugin on

set pastetoggle=<F9>
colorscheme koehler

" aliases
ab epdbi import epdb; epdb.st()
ab rpdbi import rpdb2; rpdb2.start_embedded_debugger('foo', True, True)

" spellcheck
" don't highlight mispellings
hi clear SpellBad
" don't highlight non-capitalizations
hi clear SpellCap

" newcomplete
" disable autocomplete until TAB is pressed
let g:neocomplete#disable_auto_complete = 1
inoremap <expr><S-Tab> pumvisible() ? "\<C-n>" : neocomplete#start_manual_complete('buffer')
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" ctrlp
let g:ctrlp_tabpage_position = 'a'

" vim-airline
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
"
" " Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" GUI
set guifont=Fixed\ 13
colors koehler
set guioptions-=T
set guioptions+=l
set stal=2

" CursorLine
set cursorline
highlight clear CursorLine
highlight CursorLine term=underline ctermbg=8 guibg=#555555

" Buffers
nnoremap <leader>m :bnext!<CR>
nnoremap <leader>n :bprev!<CR>
