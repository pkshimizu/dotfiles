set nocompatible
filetype off
colorscheme desert

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#begin(expand('~/.vim/bundle/'))
  NeoBundleFetch 'Shougo/neobundle.vim'
  call neobundle#end()
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundle 'Shougo/vimproc'

NeoBundle 'Shougo/neocomplcache', { 'autoload' : { 'insert' : 1 }}
NeoBundle 'Shougo/neosnippet', { 'autoload' : { 'insert' : 1 }}
NeoBundle 'Shougo/neosnippet-snippets'

let g:acp_enableAtStartup = 0 
let g:neocomplcache_enable_at_startup = 1 
let g:neocomplcache_enable_smart_case = 1 
let g:neocomplcache_min_syntax_length = 3 
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
let g:neocomplcache_dictionary_filetype_lists = { 'default' : '' }

inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

NeoBundle 'Shougo/neocomplcache-rsense', { 'depends' : 'Shougo/neocomplcache', 'autoload': { 'filetypes': 'ruby' }}

NeoBundle "kana/vim-smartinput"
NeoBundle "cohama/vim-smartinput-endwise"

NeoBundleLazy 'vim-ruby/vim-ruby', { 'autoload' : { 'filetypes': ['ruby', 'eruby', 'haml'] } } 
NeoBundleLazy 'skwp/vim-rspec', { 'autoload' : { 'filetypes': ['ruby', 'eruby', 'haml'] } } 
NeoBundleLazy 'ruby-matchit', { 'autoload' : { 'filetypes': ['ruby', 'eruby', 'haml'] } } 
NeoBundleLazy 'ngmy/vim-rubocop', { 'autoload' : { 'filetypes': ['ruby', 'eruby', 'haml'] } }

NeoBundle 'thinca/vim-quickrun'
let g:quickrun_config = {}
let g:quickrun_config['markdown'] = { 'outputter': 'browser' }

NeoBundle 'scrooloose/syntastic'
let g:syntastic_enable_signs = 1 
let g:syntastic_enable_highlighting = 1 

NeoBundle 'JSON.vim', { 'autoload' : { 'filetypes': 'json' }}

NeoBundle 'Yggdroot/indentLine'
let g:indentLine_color_term = 239 

NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimshell'
call neobundle#end()

set number
set ruler
set laststatus=2
set notitle
set showcmd
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
set list
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<
set helplang=ja
set completeopt=menuone
set backspace=indent,eol,start
set wildmenu
set wildmode=full
set incsearch
set hlsearch
set noswapfile
set nobackup
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
set visualbell t_vb=
set noerrorbells

filetype on
filetype indent on
filetype plugin on
syntax on

au! BufRead,BufNewFile *.json set filetype=json
au! BufRead,BufNewFile *.jade set filetype=jade
au! BufRead,BufNewFile *.coffee set filetype=coffee
autocmd Filetype ruby set ts=2 sts=2 sw=2
autocmd Filetype eruby set ts=2 sts=2 sw=2
autocmd Filetype html set ts=2 sts=2 sw=2
autocmd Filetype css set ts=2 sts=2 sw=2
autocmd Filetype yaml set ts=2 sts=2 sw=2
autocmd Filetype javascript set ts=2 sts=2 sw=2
autocmd Filetype json set ts=2 sts=2 sw=2
autocmd Filetype jade set ts=2 sts=2 sw=2
autocmd Filetype coffee set ts=2 sts=2 sw=2

nmap <Tab> [Tag]
map <silent> [Tag]c :tablast <bar> tabnew<CR>
map <silent> [Tag]h :tabnext<CR>
map <silent> [Tag]l :tabprevious<CR>
map <silent> [Tag]d :tabclose<CR>
