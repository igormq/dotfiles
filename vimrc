"Style Configuration
set cindent 
set tabstop=2
set shiftwidth=2
set expandtab

"Execute pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

"NerdTree configuration
autocmd vimenter * if argc() == 0 | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <C-h> <C-w>h
map <C-l> <C-w>l
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-t> :NERDTreeToggle<CR>


"Ruby plugin configuration
autocmd FileType ruby nmap <buffer> <F4> <Plug>(xmpfilter-run)
autocmd FileType ruby xmap <buffer> <F4> <Plug>(xmpfilter-run)
autocmd FileType ruby imap <buffer> <F4> <Plug>(xmpfilter-run)

autocmd FileType ruby nmap <buffer> <F3> <Plug>(xmpfilter-mark)
autocmd FileType ruby xmap <buffer> <F3> <Plug>(xmpfilter-mark)
autocmd FileType ruby imap <buffer> <F3> <Plug>(xmpfilter-mark)

autocmd FileType ruby nmap <buffer> <F5> <esc>:%s/ # [\!\=\~]>.*//g<CR>:g/^# >>.*/d<CR>
autocmd FileType ruby xmap <buffer> <F5> <esc>:%s/ # [\!\=\~]>.*//g<CR>:g/^# >>.*/d<CR>
autocmd FileType ruby imap <buffer> <F5> <esc>:%s/ # [\!\=\~]>.*//g<CR>:g/^# >>.*/d<CR>

let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_rails = 1

"Syntax highlight for scons
au BufNewFile,BufRead SCons* set filetype=scons 
