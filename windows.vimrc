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

noremap <silent> tc :tabnew<CR>
noremap <silent> tx :tabclose<CR>
noremap <silent> tn :tabnext<CR>
noremap <silent> tp :tabprevious<CR>
