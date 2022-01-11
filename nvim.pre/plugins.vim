" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
         \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
"
" Stable version of coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Keeping up to date with master
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

"file history
Plug 'mbbill/undotree'

" Better Syntax Support
Plug 'sheerun/vim-polyglot'
" Plug 'vim-syntastic/syntastic'

" File Explorer
"Plug 'scrooloose/NERDTree'
"Automatic quote and bracket completion - Auto pairs for '(' '[' '{'
Plug 'jiangmiao/auto-pairs'

"Comment lines
Plug 'tpope/vim-commentary'

" Session Manager
"Plug 'xolox/vim-session'
"Plug 'xolox/vim-misc'


"Colours for VIM bar"
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Comment Plugin"
"Plug 'scrooloose/nerdcommenter'

"Autoformat"
Plug 'sbdchd/neoformat'

"autonerdtree open"
"Plug 'jistr/vim-nerdtree-tabs'

Plug 'ptzz/lf.vim'
Plug 'rbgrouleff/bclose.vim'


" On-demand lazy load
" Plug 'liuchengxu/vim-which-key'

"TESTING whichkey

"To register the descriptions when using the on-demand load feature,
" use the autocmd hook to call which_key#register(), e.g., register for the Space key:
" autocmd! User vim-which-key call which_key#register('<Space>', 'g:which_key_map')

"floaterm
Plug 'voldikss/vim-floaterm'

"Show last files on startup
Plug 'mhinz/vim-startify'

"vifm
Plug 'vifm/vifm.vim'

"highligh current line
Plug 'junegunn/limelight.vim'

"tabs
Plug 'jeetsukumaran/vim-buffergator'

"repgreip search in project
Plug 'airblade/vim-rooter'

"teleskop
"Plug 'nvim-lua/popup.nvim'
"Plug 'nvim-lua/plenary.nvim'
"Plug 'nvim-telescope/telescope.nvim'
"Plug 'nvim-telescope/telescope-fzy-native.nvim'

"fuzzy finder                                                                                              
" Plug 'kien/ctrlp.vim'

"fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"rainbow brackets
Plug 'frazrepo/vim-rainbow'
" Plug 'morhetz/gruvbox'
Plug 'NLKNguyen/papercolor-theme'
"Sneak Plugin Search arroun
"Plug 'justinmk/vim-sneak'
"rename plugin
"Plug 'lilydjwg/colorizer'
Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
" Plug 'ryanoasis/vim-devicons' cons without colours
Plug 'akinsho/bufferline.nvim'
" Plug 'martinsione/darkplus.nvim'
Plug 'akinsho/toggleterm.nvim'
Plug 'LoricAndre/OneTerm.nvim'
"Plug 's1n7ax/nvim-terminal'
"Plug 'tversteeg/registers.nvim', { 'branch': 'main' }
"Plug 'ray-x/lsp_signature.nvim'

call plug#end()
