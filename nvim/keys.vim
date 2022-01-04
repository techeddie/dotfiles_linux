""""""""""""""""""""""""""""""""""""""""""""""""""""
"RELOAD SESSION
nnoremap <C-r> :source $HOME/.config/nvim/init.vim <CR>

""##########################################################""
let mapleader=" " "map space as leder key
nnoremap <Leader>o :w!<CR>
nnoremap <Leader>r :source $HOME/.config/nvim/init.vim <CR>

"Explorer NetRW
nnoremap <Leader>e :Explore<CR>

"WELCOME MANAGER
nnoremap <Leader>s :Startify<CR>
nnoremap <Leader>m :Startify<CR>

"SAVE QUIT 
nnoremap <Leader>w :w!<CR>
nnoremap <Leader>x :q!<CR>
nnoremap <Leader>q :Bclose!<CR>

"open new file from current buffer path
"o = open regular
"oh = open horizonzal
"ov = open vertical
"ov = open tabbed
"
map <leader>o :e <C-R>=expand("%:p:h") . "/" <CR>
map <leader>oh :sp <C-R>=expand("%:p:h") . "/" <CR>
map <leader>ov :vsp <C-R>=expand("%:p:h") . "/" <CR>
map <leader>ot :tabe <C-R>=expand("%:p:h") . "/" <CR>

"HISTORY TREE
nnoremap <Leader>h :UndotreeShow<CR> :UndotreeFocus<CR>
nnoremap <M-u> :UndotreeToggle<CR> :vertical:resize -8<CR> :UndotreeFocus<CR>

"RESIIZE PANELS
noremap <silent> <Leader>+ :exe "vertical resize +35"<CR>
nmap <silent> <Leader>- :exe "vertical resize -35"<CR>

"PLUGIN MANAGER
nnoremap <Leader>pi :PlugInstall<CR>
nnoremap <Leader>ps :PlugStatus<CR>
nnoremap <Leader>pu :PlugUpdate<CR>
nnoremap <Leader>pg :PlugUpgrade<CR>

"SHOW TABS - BUFFER
" nnoremap <Leader>t :tabs<CR>

"comment current line
nnoremap <Leader>c :Commentary<CR>

"PASTE CURRENT LINE TO NEXT LINE
nnoremap <Leader>y Yp

"RUN FUZZY FINDER
nnoremap <Leader>f :Lf<CR>
nnoremap <Leader>l :Lf<CR>

"UPPERCASE
nnoremap <Leader>u gUU

"Mappings
nnoremap <Leader>? :Maps<CR>
""##########################################################""

"ESC REPLACEMENT
inoremap ö <esc>
" inoremap ß <esc>

nnoremap <C-a><C-w> :set wrap<CR>
nnoremap <C-a><C-e> :set nowrap<CR>
" nnoremap <C-v> :Vifm<CR>
" nnoremap <F4> :Bclose!<CR>
" nnoremap <F6> :Lf<CR>
"
"TABBING
nnoremap <C-a><C-n> :bn<CR>
nnoremap <C-a><C-p> :bp<CR>
nnoremap <C-n> :tabnew<CR>
nnoremap <A-Right> :bn<CR>
nnoremap <A-Left> :bp<CR>
nnoremap <Ca-p> :bprevious<CR>
" set <F15>=^[[1;5I
" set <F16>=^[[1;6I
nmap <C-i> gt
nmap <m-i> gT
" nmap <F16> <C-S-Tab>
" imap <F15> <C-Tab>
" imap <F6> <C-S-Tab>

" nnoremap <C-Tab> :bnext<CR>
nnoremap <CS-Tab> b:prev<CR>
" nnoremap <C-Tab> :bn<CR>
" nnoremap <C-t> :tabnew<CR> <C-m>

"show open files via fzf
nnoremap <C-b> ::BuffergatorOpen<CR>
nnoremap <C-l> ::Buffers<CR>
nnoremap <M-b> ::Buffers<CR> 
nnoremap <M-v> ::vsplit<CR>
nnoremap <M-h> ::split<CR>

"COPY AND PASTE CURRENT LINE
noremap <M-y> Yp 

"SCROLL
" noremap <C-Up> 10k 
"noremap <C-k> 10k 
"<C-y>
" nnoremap <C-Down> 10j
"nnoremap <C-j> 10j
"<C-e>


"resize
nnoremap <silent> <Leader>+ :exe "vertical resize +35"<CR>
nnoremap <silent> <Leader>- :exe "vertical resize -35"<CR>

"function keys mapping
nnoremap <F1> :Startify<CR>
nnoremap <M-m> :Startify<CR>
nnoremap <C-m> :Startify<CR>

"NAVIGATE BETWEEN WINDOWS
" nmap <silent> <A-Up> :wincmd k<CR>
" nmap <silent> <A-Down> :wincmd j<CR>
" nmap <silent> <A-Left> :wincmd h<CR>
" nmap <silent> <A-Right> :wincmd l<CR>

"resize
nnoremap <silent> <Leader>+ :exe "vertical resize +35"<CR>
nnoremap <silent> <Leader>- :exe "vertical resize -35"<CR>

"function keys mapping
nnoremap <F1> :Startify<CR>
nnoremap <F3> :OneTerm<CR>
nnoremap <F2> :Vifm<CR>
nnoremap <C-f> :BLines<CR>
nnoremap <C-h> :History<CR>
" nnoremap <C-f> :BLines '<CR>
" nnoremap <C-t> :tabnew<CR>
noremap <F10> :write!<CR>
"jump up and down
noremap <C-Up> <C-y>
noremap <C-Down> <C-e>

" noremap <C-Up> <C-y>
" noremap <C-Down> <C-e>
nnoremap <v-E> x

"change current word
noremap cw ce
" noremap <C-e> ce
noremap <C-c> ce
"split
set splitbelow splitright
set fillchars+=vert:\

"CHANGE 2 SPLIT WINDOWS FROM VERT TO HORIZ TO VERT
map <Leader>tv <C-w>t<C-w>H
map <Leader>th <C-w>t<C-w>K

nnoremap <A-q> :Bclose!<CR>


"edit mode - quit and save
nnoremap <C-x> :Bclose!<CR>
" nnoremap <C-a><C-k> :q!<CR>
nnoremap <M-k> :Bclose!<CR>
nnoremap <C-q> :Bclose!<CR>
" nnoremap <C-w> :q!<CR>
nnoremap <C-s> :w!<CR>
nnoremap <C-z> :redo<CR>
nnoremap <C-k> :qall!<CR>
nnoremap <F4> :qall!<CR>

"save in insert mode
inoremap <M-s> <C-O>:w<CR><Esc>
inoremap <M-o> <C-O>:w<CR><Esc>

  noremap ü :w! <Cr>
  " noremap <F10> <C-\><C-o>:w!<CR>
  " sdfsdfsdfsdf
" inoremap <F10> <C-\><C-o>:w!<CR>
"autocmd vimenter * if !argc() | NERDTree | endif

"terminal window
" let g:floaterm_keymap_toggle = '<F9>'

"MOVE MARKED LINE UP AND DOWN
xnoremap <C-Up> :move '<-2<CR>gv-gv
xnoremap <C-Down> :move '>+1<CR>gv-gv

"DD DOT YANK
nnoremap d "xd
vnoremap d "xd

"BUFFER
nnoremap <silent>be :BufferLineSortByExtension<CR>
nnoremap <silent>bd :BufferLineSortByDirectory<CR>
nnoremap <silent> gb :BufferLinePick<CR>
nnoremap <silent> gD :BufferLinePickClose<CR>

  nnoremap <silent><leader>1 <Cmd>BufferLineGoToBuffer 1<CR>
  nnoremap <silent><leader>2 <Cmd>BufferLineGoToBuffer 2<CR>
  nnoremap <silent><leader>3 <Cmd>BufferLineGoToBuffer 3<CR>
  nnoremap <silent><leader>4 <Cmd>BufferLineGoToBuffer 4<CR>
  nnoremap <silent><leader>5 <Cmd>BufferLineGoToBuffer 5<CR>
  nnoremap <silent><leader>6 <Cmd>BufferLineGoToBuffer 6<CR>
  nnoremap <silent><leader>7 <Cmd>BufferLineGoToBuffer 7<CR>
  nnoremap <silent><leader>8 <Cmd>BufferLineGoToBuffer 8<CR>
  nnoremap <silent><leader>9 <Cmd>BufferLineGoToBuffer 9<CR>
  
"NAVIGATE BETWEEN WINDOWS
nmap <silent> <S-Left> :wincmd h<CR>
nmap <silent> <S-h> :wincmd h<CR>
nmap <silent> <S-Right> :wincmd l<CR>
nmap <silent> <S-l> :wincmd l<CR>

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-r> :edit!<CR>
" nmap <silent> <A-Left> :wincmd h<CR>
" nmap <silent> <A-Right> :wincmd l<CR>

"bashing
nnoremap <F5> ::! bash %<CR>
nnoremap <F8> :.w !bash<CR>

"TERMINAL
" let g:test#custom_strategies = {'termwrapper': function('TermWrapperStrategy')}
" let g:test#strategy = 'termwrapper'

