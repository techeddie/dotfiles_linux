"COPY FROM CLIPBOARD
	set clipboard=unnamedplus
"COLOR_THEME
	" set background=dark
	" colorscheme slate "alternative
	colorscheme PaperColor
	" let g:airline_theme='papercolor'
 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"SYNTAX
	syntax on
"SETS
	set cursorline
	set nu
	set nowrap
	set number
	set autoread
	set splitbelow splitright
	set fillchars+=vert:\
	set nobackup
	set noerrorbells
	set tabstop=4 
	set softtabstop=4
	set noswapfile
	set undodir=~/.config/nvim/undodir
	set undofile
	set incsearch
	set encoding=UTF-8
	set exrc "testing"
	set relativenumber
	set nohlsearch
	set hidden "testing"
	set scrolloff=8
	set splitright
	set autoread
	" There are certain files that we would never want to edit with Vim. Wildmenu will ignore files with these extensions.
	set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
	" set cursorline
	set ignorecase
	" set spell
	set smartcase
	set history=200
	set shortmess+=c	"don't give |ins-completion-menu| messages.
	set signcolumn=yes "always show signcolumns
	set wildmenu "Enable auto completion menu after pressing TAB.
	set wildmode=full "Enable auto completion menu after pressing TAB.

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
	nnoremap <M-7> <C-W><C-H>:call Splitresize()<CR>
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
""SYNTAX
    "set statusline+=%#warningmsg#
    "set statusline+=%{SyntasticStatuslineFlag()}
    "set statusline+=%*
    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    " let g:syntastic_check_on_wq = 0
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"FZF""
	let g:fzf_tags_command = 'ctags -R'
	" Border color
	" let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }
	let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
	let $FZF_DEFAULT_COMMAND="rg --files --hidden"
	" Get Files
	command! -bang -nargs=? -complete=dir Files
			\ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)
	" Get text in files with Rg
	command! -bang -nargs=* Rg
		\ call fzf#vim#grep(
		\	 'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
		\	 fzf#vim#with_preview(), <bang>0)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ripgrep advanced
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
"color term
" hi Normal ctermfg=Blue ctermbg=brown
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

	"syntax match Tab /\t/
	" hi Tab gui=underline guifg=blue ctermbg=blue
 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"CUSTOM COMMANDS
	command! Config execute "e ~/.config/nvim/settings.vim"
	command! Settings execute "e ~/.config/nvim/settings.vim"
	command! PlugConfig execute "e ~/.config/nvim/plugins.vim"
	command! Init execute "e ~/.config/nvim/init.vim"
	command! Keys execute "e ~/.config/nvim/keys.vim"
	command! Filename execute ":echo expand('%:p')"

