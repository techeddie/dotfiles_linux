" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
         \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'Yohannfra/Nvim-Switch-Buffer'
  Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
  Plug 'mbbill/undotree'
  Plug 'sheerun/vim-polyglot'
  Plug 'jiangmiao/auto-pairs'
  Plug 'tpope/vim-commentary'
  Plug 'sbdchd/neoformat'
  Plug 'ptzz/lf.vim'
  Plug 'rbgrouleff/bclose.vim'
  Plug 'voldikss/vim-floaterm'
  Plug 'mhinz/vim-startify'
  Plug 'vifm/vifm.vim'
  Plug 'junegunn/limelight.vim'
  Plug 'itchyny/lightline.vim'
  Plug 'jeetsukumaran/vim-buffergator'
  Plug 'airblade/vim-rooter'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'frazrepo/vim-rainbow'
  Plug 'NLKNguyen/papercolor-theme'
  Plug 'akinsho/bufferline.nvim'
  Plug 'akinsho/toggleterm.nvim'
  Plug 'LoricAndre/OneTerm.nvim'
  Plug 'unblevable/quick-scope'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim' 
  Plug 'nvim-telescope/telescope-fzy-native.nvim' 
  Plug 'fannheyward/telescope-coc.nvim'
  "GIT PLUGINS
   Plug 'mhinz/vim-signify'
   Plug 'tpope/vim-fugitive' 
   Plug 'tpope/vim-rhubarb'
   Plug 'junegunn/gv.vim'
call plug#end()

  " Plug 'lilydjwg/colorizer'
  " Plug 'pechorin/any-jump.vim'
  " Plug 'vim-airline/vim-airline'
  " Plug 'vim-airline/vim-airline-themes'
  " Plug 'kien/ctrlp.vim'
