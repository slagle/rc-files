set title
set tabstop=4
set shiftwidth=4
set expandtab
set tw=79
set autoindent
" set showmatch

ab epdbi import epdb; epdb.st()
ab rpdbi import rpdb2; rpdb2.start_embedded_debugger('foo', True, True)

autocmd FileType make setlocal noexpandtab
autocmd FileType csv setlocal tw=1000
autocmd FileType csv setlocal paste
autocmd FileType spec setlocal noexpandtab tabstop=8
" autocmd FileType python source /home/jslagle/.vim/ftplugin/python_editing.vim

" Case insensitive searches...
set ignorecase
" ...only if entered in all lowercase
set smartcase

" show the `best match so far' as search strings are typed:
set incsearch

" ctags
set tags=~/rpath-hg/ctags/tags.tags
" set tags=~/rpath-hg/ctags/conary-ovf-support.tags
" set tags=~/rpath-hg/ctags/mint.tags
" set tags=~/rpath-hg/ctags/rbuilder.tags
" set tags=~/tags,~/tags-python2.4
" set tags=~/tags-raa-cherrypy3
" set tags=~/tags-raa-2.1
" set tags=~/tags-raa

" highlight WhiteSpaceEOL ctermbg=darkgreen guibg=lightgreen
" match WhiteSpaceEOL /^\s*\ \s*\|\s\+$/
" autocmd WinEnter * match WhiteSpaceEOL /^\s*\ \s*\|\s\+$/
" au BufWinEnter * let w:m3=matchadd('ErrorMsg', '\s\+$', -1)
" au BufWinEnter * let w:m4=matchadd('ErrorMsg', '^ \+\t\+\|^\t\+ \+', -1)

" Folding
" set fdm=indent
autocmd bufwinenter * normal zi

:filetype plugin on

map <F10> :TlistToggle<CR>
set pastetoggle=<F9>
map <F7> :set mouse=<CR>
map <F8> :set mouse=a<CR>
map <A-v> :vsplit<CR><C-w>l
map <F6> :TlistSync<CR>


let Tlist_Sort_Type="name"
let Tlist_Auto_Highlight_Tag=0
let Tlist_Exit_OnlyWindow=1
let Tlist_Show_One_File=1
" let Tlist_Enable_Fold_Column=0

" Set up puppet manifest and spec options
au BufRead,BufNewFile *.pp
  \ set filetype=puppet
au BufRead,BufNewFile *_spec.rb
  \ nmap <F8> :!rspec --color %<CR>

colorscheme koehler

set runtimepath^=~/.vim/bundle/ctrlp.vim
