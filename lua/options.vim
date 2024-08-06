
" Command aliases
fun! SetupCommandAlias(from, to)
  exec 'cnoreabbrev <silent> <expr> '.a:from
        \ .' ((getcmdtype() is# ":" && getcmdline() is# "'.a:from.'")'
        \ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfun

call SetupCommandAlias("bda","BufferLineCloseOther")

" Keymaps
nnoremap <leader>fl <cmd>lua require('telescope.builtin').live_grep({previewer=false})<cr>
nnoremap <leader>fk <cmd>lua require('telescope.builtin').current_buffer_fuzzy_find({previewer=false})<cr>
 
" Cursor on last symbol in normal mode
set ve+=onemore

" enable alt key
let c='a'
while c <= 'z'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw

" Timeout
"set notimeout
"set ttimeout
"set ttimeoutlen=10
 
" Cursor blinking
set guicursor=a:blinkwait700-blinkoff400-blinkon250

" Code folding
set foldmethod=indent
set foldlevelstart=99

" Buffers
set bufhidden=wipe
set switchbuf=newtab 
nnoremap qq :bd<CR>

" Copy and paste
nnoremap <leader>y "+y
vnoremap <leader>y "+y
vnoremap <leader>c "+c<C-c>
nnoremap <leader>p "+P :%s/\r//ge<CR>
nnoremap p P

" Exit INSERT mode without moving cursor 
inoremap <C-c> x<Esc>"_x
"inoremap <Esc> x<Esc>"_x

" Move lines 
nnoremap <silent><A-j> :m .+1<CR>==
nnoremap <silent><A-k> :m .-2<CR>==
vnoremap <silent><A-j> :m '>+1<CR>gv=gv
vnoremap <silent><A-k> :m '<-2<CR>gv=gv

" Basic options
filetype plugin on
set directory^=$HOME/.vim/swp//
set mouse=a
set hidden
set hlsearch
set backspace=indent,eol,start
set ignorecase
set belloff=all
set showcmd
set laststatus=2
"set clipboard=unnamedplus
set number
set fileformats=unix
set softtabstop=0
set shiftwidth=4
set tabstop=4
set cindent
set cinoptions=>s,e0,n0,f0,{0,}0,^0,L0,:s,=s,l0,b0,gs,hs,ps,ts,is,+s,c3,C0,/0,(2s,us,U0,w0,W0,m0,j0,J0,)20,*70,#0
set updatetime=300
set shortmess+=c
set signcolumn=yes

" Increase window width by 5 columns
nnoremap + :vertical resize +1<CR>

" Decrease window width by 5 columns
nnoremap - :vertical resize -1<CR>

" Termguicolors
if has('termguicolors')
    set termguicolors
endif

