" AUTO-INSTALL VIM-PLUG
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
         \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  "show buffer list and
      Plug 'Yohannfra/Nvim-Switch-Buffer'
  "language server
      Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
  "history tree
      Plug 'mbbill/undotree'
  "language pack
      Plug 'sheerun/vim-polyglot'
  "auto pair brackets and more 
      Plug 'jiangmiao/auto-pairs'
  "comment and uncomment 
      Plug 'tpope/vim-commentary'
  "lf file manger
      Plug 'ptzz/lf.vim'
  "deleting a buffer in Vim without closing the window
      Plug 'rbgrouleff/bclose.vim'
  "floating terminal
      Plug 'voldikss/vim-floaterm'
  "fenr.vim <nerdtree but faster>
      Plug 'lambdalisue/fern.vim'
      Plug 'lambdalisue/fern-git-status.vim'
      Plug 'lambdalisue/nerdfont.vim'
      Plug 'lambdalisue/fern-renderer-nerdfont.vim'
      Plug 'lambdalisue/fern-hijack.vim'
    "nerdtree
      " Plug 'preservim/nerdtree'
      " Plug 'Xuyuanp/nerdtree-git-plugin'
      " Plug 'ryanoasis/vim-devicons'
      " Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  "welcome menu - last files, bookmark...
      Plug 'mhinz/vim-startify'
  "vifm file explorer
      Plug 'vifm/vifm.vim'
  "
      " Plug 'junegunn/limelight.vim'
  "
      Plug 'itchyny/lightline.vim'
  "buffer list
      Plug 'jeetsukumaran/vim-buffergator'

      Plug 'airblade/vim-rooter'
  "fuzzy finder
      Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  "fuzzy finder
      Plug 'junegunn/fzf.vim'
  "syntax highlight and more
      Plug 'frazrepo/vim-rainbow'
  "beautiful theme
      Plug 'NLKNguyen/papercolor-theme'
  "beautiful buffer tabs 
      Plug 'akinsho/bufferline.nvim'
  "beautiful terminal inside neovim
      Plug 'akinsho/toggleterm.nvim'
  "
      " Plug 'LoricAndre/OneTerm.nvim'
  "?
      " Plug 'unblevable/quick-scope'


  "TELESCOPE PLUGINS
      "
        Plug 'nvim-lua/plenary.nvim'
      "
        Plug 'nvim-telescope/telescope.nvim' 
      "fuzzy finder
        Plug 'nvim-telescope/telescope-fzy-native.nvim' 
      "language server
        Plug 'fannheyward/telescope-coc.nvim'
      "smart cd command
        Plug 'jvgrootveld/telescope-zoxide'
      " clipboard manager
        " Plug 'AckslD/nvim-neoclip'

  "GIT PLUGINS
  "show added, modfied or removed lines
       Plug 'mhinz/vim-signify'
  "interacting with git
       Plug 'tpope/vim-fugitive' 
  "jump to github via browser
       Plug 'tpope/vim-rhubarb'
  "git commit browser
       Plug 'junegunn/gv.vim'

call plug#end()

  " Plug 'lilydjwg/colorizer'
  " Plug 'pechorin/any-jump.vim'
  " Plug 'vim-airline/vim-airline'
  " Plug 'vim-airline/vim-airline-themes'
  " Plug 'kien/ctrlp.vim'
  " Plug 'windwp/nvim-autopairs'
  " Plug 'sbdchd/neoformat'
