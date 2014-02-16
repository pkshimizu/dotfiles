set nobackup
set noswapfile
set tabstop=4
set autoindent
set expandtab
set shiftwidth=4
set number
set nowrap
set list
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<

set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

filetype on
filetype indent on
filetype plugin on
syntax on

au! BufRead,BufNewFile *.json set filetype=json
autocmd Filetype ruby set ts=2 sts=2 sw=2
autocmd Filetype eruby set ts=2 sts=2 sw=2
autocmd Filetype html set ts=2 sts=2 sw=2
autocmd Filetype css set ts=2 sts=2 sw=2
autocmd Filetype yaml set ts=2 sts=2 sw=2
autocmd Filetype javascript set ts=2 sts=2 sw=2
autocmd Filetype json set ts=2 sts=2 sw=2

noremap <silent> tc :tabnew<CR>
noremap <silent> tx :tabclose<CR>
noremap <silent> tn :tabnext<CR>
noremap <silent> tp :tabprevious<CR>

