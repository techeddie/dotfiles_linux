"NEOVIM CONFIG FILE - READ FROM TOP TO BUTTOM

source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/plug-config/lightline.vim
source $HOME/.config/nvim/plug-config/buffertabs.vim
source $HOME/.config/nvim/plug-config/startify.vim
source $HOME/.config/nvim/plug-config/toggleterm.vim
source $HOME/.config/nvim/plug-config/rg.vim
source $HOME/.config/nvim/plug-config/buffergator.vim
source $HOME/.config/nvim/plug-config/quick-scope.vim
source $HOME/.config/nvim/plug-config/vim-rainbow.vim
source $HOME/.config/nvim/plug-config/switch-buffer.vim
source $HOME/.config/nvim/plug-config/signify.vim
source $HOME/.config/nvim/plug-config/git.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/settings.vim
source $HOME/.config/nvim/keys.vim
source $HOME/.config/nvim/plug-config/telescope.vim
source $HOME/.config/nvim/plug-config/fern.vim


"LOAD LUA CONFIG
lua require('tele')
lua require('zoxide')
lua require('telescope').load_extension('fzy_native')

" source $HOME/.config/nvim/plug-config/ctrlp.vim
" source $HOME/.config/nvim/plug-config/coc_fzf.vim
