
vim.cmd [[

let g:fzf_action = {
			\ 'ctrl-t': 'tab split',
			\ 'ctrl-x': 'split',
			\ 'ctrl-h': 'split',
			\ 'ctrl-v': 'vsplit' }

let g:fzf_layout = { 'down':  '40%'}

let g:fzf_tags_command = 'ctags -R'
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

"map <C-p> :Files<CR>
"map <C-h> :History<CR>
]]
