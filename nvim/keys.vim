""""""""""""""""""""""""""""""""""""""""""""""""""""
"RELOAD SESSION
nnoremap <C-r> :source $HOME/.config/nvim/init.vim <CR>

""##########################################################""
"LEADER SECTION
  "LEADER KEY = SPACE
let mapleader=" "

"SPACE COMMANDS
nnoremap <Leader>r :source $HOME/.config/nvim/init.vim<CR>

"EXPLORER
nnoremap <Leader>e :Lf<CR>
" nnoremap <Leader>l :Lf<CR>
" nnoremap <M-l> :Lf<CR>

"WELCOME MANAGER
" nnoremap <Leader>s :Startify<CR>
" nnoremap <Leader>m :Startify<CR>

"SAVE QUIT 
nnoremap <Leader>w :w!<CR>
nnoremap <Leader>x :q!<CR>
nnoremap <Leader>q :Bclose!<CR>

"OPEN NEW FILE FROM CURRENT BUFFER PATH
"o = open regular
"oh = open horizonzal
"ov = open vertical
"ov = open tabbed
"
" map <leader>o :e <C-R>=expand("%:p:h") . "/" <CR>
map <leader>oh :sp <C-R>=expand("%:p:h") . "/" <CR>
map <leader>ov :vsp <C-R>=expand("%:p:h") . "/" <CR>
map <leader>ot :tabe <C-R>=expand("%:p:h") . "/" <CR>
map <leader>o :Of<CR>
map <leader>ocp :Of<CR>
map <leader>nh :set nohlsearch<CR>
map <leader>nhl :set nohlsearch<CR>
map <leader>nhls :set nohlsearch<CR>
map <leader>hl :set hlsearch<CR>
map <leader>hs :set hlsearch<CR>

map <leader>gd :Git diff<CR>

" Map the leader key + q to toggle quick-scope's highlighting in normal/visual mode.
" Note that you must use nmap/xmap instead of their non-recursive versions (nnoremap/xnoremap).
" nmap <leader>q <plug>(QuickScopeToggle)
" xmap <leader>q <plug>(QuickScopeToggle)

"COMMAND MODE REPLACEMENT
" noremap ; :
noremap + :
noremap - :

"HISTORY TREE
nnoremap <Leader>h :UndotreeShow<CR> :UndotreeFocus<CR>
" nnoremap <M-u> :UndotreeToggle<CR> :vertical:resize -8<CR> :UndotreeFocus<CR>
nnoremap <S-u> :UndotreeToggle<CR> :vertical:resize -8<CR> :UndotreeFocus<CR>

"RESIIZE PANELS
noremap <silent> <Leader>+ :exe "vertical resize +36"<CR>
nmap <silent> <Leader>- :exe "vertical resize -35"<CR>

"PLUGIN MANAGER
nnoremap <Leader>pi :PlugInstall<CR>
nnoremap <Leader>ps :PlugStatus<CR>
nnoremap <Leader>pu :PlugUpdate<CR>
nnoremap <Leader>pg :PlugUpgrade<CR>

"COMMENT CURRENT LINE
nnoremap <Leader>c :Commentary<CR>

"PASTE CURRENT LINE TO NEXT LINE
nnoremap <Leader>y Yp

"RUN FUZZY FINDER
" nnoremap <Leader>f :Lf<CR>
nnoremap <Leader>l :Lf<CR>

"UPPERCASE
nnoremap <Leader>u gUU

"Mappings
nnoremap <Leader>? :Maps<CR>
""##########################################################""

"ESC REPLACEMENT
inoremap ö <esc>
noremap ; <esc>
" inoremap ß <esc>

"WRAP UNWRAP
nnoremap <C-a><C-w> :set wrap<CR>
nnoremap <C-a><C-e> :set nowrap<CR>
"
"TABBING
" nnoremap <C-a><C-n> :bn<CR>
" nnoremap <C-a><C-p> :bp<CR>
nnoremap <C-n> :tabnew<CR>
" nnoremap <M-n> :tabnew<CR>

"SHOW BUFFERS VIA FZF
nnoremap <C-b> ::BuffergatorOpen<CR>
nnoremap <C-l> ::BuffergatorOpen<CR>
" nnoremap <M-b> ::Buffers<CR>

"SPLIT VERTICAL (V) HORIZONTAL (H)
nnoremap <M-v> ::vsplit<CR>
nnoremap <M-h> ::split<CR>

"COPY AND PASTE CURRENT LINE
noremap <M-y> Yp 

nnoremap <silent> <Leader>+ :exe "vertical resize +35"<CR>
nnoremap <silent> <Leader>- :exe "vertical resize -35"<CR>


"RESIZE
nnoremap <silent> <Leader>+ :exe "vertical resize +35"<CR>
nnoremap <silent> <Leader>- :exe "vertical resize -35"<CR>

"FUNCTION KEYS MAPPING
" nnoremap <F1> :Startify<CR>
nnoremap <F3> :OneTerm<CR>
nnoremap <F2> :Vifm<CR>

"FUZZY FIND THROUGH LINES
" nnoremap <C-f> :BLines<CR>
" nnoremap // :BLines<CR>
nnoremap <C-h> :History!<CR>

"FUZZY REPGRIP
" nnoremap <M-g> :Rg!<CR>
" nnoremap ?? :Rg!<CR>

"SAVE WRITE QUIT OPERATIONS
noremap <F7> :q!<CR>
inoremap <F7> :q!<CR>
noremap <F10> :write!<CR>
noremap <M-s> :write!<CR>
nnoremap <C-x> :Bclose!<CR>
nnoremap <M-k> <c-w>q
nnoremap <M-u> <c-w>q
nnoremap <M-q> <c-w>q
nnoremap <C-q> :Bclose!<CR>
nnoremap <C-s> :w!<CR>
noremap ü :w! <Cr>
noremap ä :w! <Cr>
nnoremap <C-z> :redo<CR>
nnoremap <C-k> :qall!<CR>
nnoremap ß :qall!<CR>
nnoremap <F4> :qall!<CR>
" nnoremap <A-q> :Bclose!<CR>

"GO UP AND DOWN
noremap <C-Up> <C-y>
noremap <C-Down> <C-e>

"CHANGE CURRENT WORD
noremap cw ce


"CHANGE 2 SPLIT WINDOWS FROM VERT TO HORIZ TO VERT
map <Leader>tv <C-w>t<C-w>H
map <Leader>th <C-w>t<C-w>K

"save in insert mode and 
"SWITCH BACK TO NORMAL MODE
inoremap <M-s> <C-O>:w<CR><Esc>
inoremap <M-o> <C-O>:w<CR><Esc>
inoremap ü <C-O>:w<CR><Esc>
inoremap ä <C-O>:w<CR><Esc>

"terminal window
nnoremap <F9> :FloatermToggle<CR>
"MOVE MARKED LINE UP AND DOWN
xnoremap <C-Up> :move '<-2<CR>gv-gv
xnoremap <C-Down> :move '>+1<CR>gv-gv

"DD NOT YANK TO CLIPBOARD
nnoremap d "xd
vnoremap d "xd

"BUFFER
" nnoremap <silent>be :BufferLineSortByExtension<CR>
" nnoremap <silent>bd :BufferLineSortByDirectory<CR>
" nnoremap <silent> gb :BufferLinePick<CR>
" nnoremap <silent> gD :BufferLinePickClose<CR>

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

  "USING ALT KEY
nnoremap <M-Up> :wincmd k<CR>
nnoremap <M-Left> :wincmd h<CR>
nnoremap <M-Right> :wincmd l<CR>
nnoremap <M-Down> :wincmd j<CR>

  "USING SHIFT KEY
nnoremap <S-k> :wincmd k<CR>
nnoremap <S-h> :wincmd h<CR>
nnoremap <S-l> :wincmd l<CR>
nnoremap <S-j> :wincmd j<CR>

"BASHING - EXECUTE FILE OR CURRENT LINE
nnoremap <F5> ::! bash %<CR>
nnoremap <F8> :.w !bash<CR>


"PATH COMMANDS
"get current path from buffer
command Gp :cd %:h
command Cwd :cd %:h
command Cp :cd %:h
command Wd :cd %:h
"get current path from buffer
command Of :edit %:h
"get content
command Gf :read !ls 
"jump to mark
noremap - '

"SCROOL SMOOTH DOWN via ALT
nnoremap <M-e> <C-e>

"INSERT A NEWLINE WITHOUT ENTERING IN INSERT MODE, VIM
" nmap <CR> :a<CR><CR>.<CR>
nmap oo :a<CR><CR>.<CR>
nmap nl :a<CR><CR>.<CR>
nnoremap 8 :s/\n/\r\r/g<CR>

"WELCOME SCREEN
nnoremap <F1> :Startify<CR>
nnoremap <M-m> :Startify<CR>
nnoremap <C-m> :Startify<CR>

"TOGGLE VIM RAINBOW HIGHLIGHTING
nnoremap <M-6> :RainbowToggle<CR>

"TABBING LEFT AND RIGHT
nnoremap <S-Right> :bn<CR>
nnoremap <S-Left> :bp<CR>
nnoremap <M-l> :bn<CR>
