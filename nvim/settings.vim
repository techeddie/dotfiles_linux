"COPY FROM CLIPBOARD
	set clipboard=unnamedplus
"COLOR_THEME
	" colorscheme slate "alternative
	colorscheme PaperColor
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"SYNTAX
	syntax on
"SETS
	" set nobackup
	" set nohlsearch
	" set foldmethod=indent
	" set signcolumn=yes "always show signcolumns
	set cursorline
	set foldenable
	set foldlevelstart=4
	set foldmethod=syntax
	set foldcolumn=3
	set nu
	set nowrap
	set number
	set autoread
	set splitbelow splitright
	set fillchars+=vert:\
	set noerrorbells
	set tabstop=4 
	set softtabstop=4
	set noexpandtab
	set noswapfile
	set undodir=~/.config/nvim.undodir
	set undofile
	set incsearch
	set encoding=UTF-8
	set exrc 
	set relativenumber
	set hidden
	set scrolloff=8
	set splitright
	set autoread
	set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
	set ignorecase
	set smartcase
	set history=200
	set shortmess+=c	"don't give |ins-completion-menu| messages.
	set signcolumn=yes:2
	set wildmenu "Enable auto completion menu after pressing TAB.
	
	"testing
	set wildmode=full "Enable auto completion menu after pressing TAB.
	" set list
	" set listchars=tab:▸\ ,trail:·
	set scrolloff=8
	set sidescrolloff=8
	set nojoinspaces
	set backup
	set backupdir=~/.local/share/nvim/backup//
	set updatetime=300 " Reduce time for highlighting other references
	set redrawtime=10000 " Allow more time for loading syntax on large files

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"SET WILDMODE=LIST:LONGEST "MAKE WILDMENU BEHAVE LIKE SIMILAR TO BASH COMPLETION.
	let g:python3_host_prog = '/usr/bin/python3'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"SPLIT WINDOWS AND FOCUS
	function Splitresize()
			let hmax = max([winwidth(0), float2nr(&columns*0.66), 90])
			let vmax = max([winheight(0), float2nr(&lines*0.66), 25])
			exe "vertical resize" . (min([hmax, 140]))
			exe "resize" . (min([vmax, 60]))
	endfunction
 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"MOVE BETWEEN SPLITS WITHOUT THE CTRL-W PREFIX
	nnoremap <M-5> <C-W><C-H>:call Splitresize()<CR>
	nnoremap <M-8> <C-W><C-L>:call Splitresize()<CR>
	nnoremap <M-9> <C-W><C-J>:call Splitresize()<CR>
	nnoremap <M-0> <C-W><C-K>:call Splitresize()<CR>
 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"AUTOMAGICALLY RESIZE SPLITS WHEN THE HOST IS RESIZED
	autocmd VimResized * wincmd =
 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"MAKE BACKSPACE DELETE IN NORMAL MODE
	nnoremap <BS>	<BS>x
	xnoremap <BS> x
	inoremap <C-BS> <C-w>
 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MAKE VISUAL SELECTION MORE VISIBLE
	hi visual term=reverse cterm=reverse guibg=darkYellow
 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" So that I don't have to hit esc
	inoremap jk <esc>
	inoremap kj <esc>
	inoremap ö <esc>
	" inoremap ü :w! <Cr>
	inoremap ß <esc>
 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""SYNTASTIC
    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RIPGREP ADVANCED
	function! RipgrepFzf(query, fullscreen)
		let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
		let initial_command = printf(command_fmt, shellescape(a:query))
		let reload_command = printf(command_fmt, '{q}')
		let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
		call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
	endfunction

	command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

	" Git grep
	command! -bang -nargs=* GGrep
		\ call fzf#vim#grep(
		\	 'git grep --line-number '.shellescape(<q-args>), 0,
		\	 fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"COLOR TERM
	" hi Normal ctermfg=Blue ctermbg=brown
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"GIT - SHOW CHANGES IN CURRENT FILE
	" autocmd VimEnter * SignifyToggleHighlight
""""""""""""""""""""""""""""""""""""""""""""""""""""
"LETS
	let g:session_autosave = 'no'
	" Enable alignment
	let g:neoformat_basic_format_align = 1
	" Enable tab to space conversion
	let g:neoformat_basic_format_retab = 1
	" Enable trimmming of trailing whitespace
	let g:neoformat_basic_format_trim = 1
	"let g:airline_theme='<theme>' " <theme> is a valid theme name"
	" <theme> is a valid theme name
	" let g:airline_theme='dark theme with powerline symbols'
	" let g:airline#extensions#tabline#enabled = 1
	" let g:airline#extensions#tabline#buffer_nr_show = 1

	" Floaterm
	let g:floaterm_gitcommit='floaterm'
	let g:floaterm_autoinsert=1
	let g:floaterm_width=0.8
	let g:floaterm_height=0.8
	let g:floaterm_wintitle=0
	let g:floaterm_autoclose=1

	"zoxide
	let g:zoxide_prefix = 'jump'
	"syntax match Tab /\t/
	" hi Tab gui=underline guifg=blue ctermbg=blue
 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"SET SYNTAX ON FILE
	augroup filetypedetect
		autocmd BufNew,BufNewFile,BufRead config :set syntax=bash
	augroup END

 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"AUTO OPEN FERN EXPLORER
	" augroup my-fern-startup
	"   autocmd! *
	"   autocmd VimEnter * ++nested Fern . -drawer -width=30 -toggle | wincmd p
	" augroup END
 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"AUTO OPEN NERDTREE
	" autocmd VimEnter * NERDTree | wincmd p
" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
	" autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    " \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"CUSTOM COMMANDS
	command! C execute "e ~/.config/nvim/settings.vim"
	command! S execute "e ~/.config/nvim/settings.vim"
	command! P execute "e ~/.config/nvim/plugins.vim"
	command! I execute "e ~/.config/nvim/init.vim"
	command! K execute "e ~/.config/nvim/keys.vim"
	command! Config execute "e ~/.config/nvim/settings.vim"
	command! Settings execute "e ~/.config/nvim/settings.vim"
	command! Pc execute "e ~/.config/nvim/plugins.vim"
	command! Init execute "e ~/.config/nvim/init.vim"
	command! Keys execute "e ~/.config/nvim/keys.vim"
	command! Filename execute ":echo expand('%:p')"
	command! Gn execute ":echo expand('%:p')"
	command! CommandHistory execute ":Telescope command_history sorting_strategy=ascending"
	command! Mappings execute ":Maps"
	command! GetCommands execute ":Telescope coc commands"
	command! GDiff execute ":SignifyDiff"
	command! Ga execute ":Git add %"
	command! HighlightChanges execute ":SignifyToggleHighlight"
