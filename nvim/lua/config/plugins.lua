local fn = vim.fn

-- AUTOMAGICALLY INSTALL PACKER
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- AUTOCOMMAND THAT RELOADS NEOVIM WHENEVER YOU SAVE THE PLUGINS.LUA FILE
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]
--
-- USE A PROTECTED CALL SO WE DON'T ERROR OUT ON FIRST USE
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end
-- HAVE PACKER USE A POPUP WINDOW
-- packer.init {
--   display = {
--     open_fn = function()
--       return require("packer.util").float { border = "rounded" }
--     end,
--   },
-- }

----------------------------------------------------------------------------
-- MY PLUGINS
return require('packer').startup(function()
  -- Packer can manage itself
  use "wbthomason/packer.nvim"
  -- A better status line
  use {
    "nvim-lualine/lualine.nvim",
    requires = { 
      "kyazdani42/nvim-web-devicons",
      "yorik1984/lualine-theme.nvim",
      "yorik1984/newpaper.nvim",
      opt = true }
  }
  -- use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim

  -- COLORSCHEMES - THEME
  -- use "tomasiser/vim-code-dark"
  use "folke/tokyonight.nvim"
  use "rose-pine/neovim"
  use 'navarasu/onedark.nvim' -- Theme inspired by Atom

  -- SYNTAX HIGHLIGHTING COLORS LANGUAGES--
  -- use "PotatoesMaster/i3-vim-syntax"
  -- CMP PLUGINS
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'


  use "jiangmiao/auto-pairs" --auto pair brackets and more

  -- use "lukas-reineke/indent-blankline.nvim"

  -- SNIPPETS
  -- use "L3MON4D3/LuaSnip" --snippet engine
  -- use "rafamadriz/friendly-snippets" -- a bunch of snippets to use use "jiangmiao/auto-pairs"

  -- LSP
  -- use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/nvim-lsp-installer" -- simple to use language server installer
  -- mason lsp
  use {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
  }

  -- TREESITTER
  -- use {
  --   "nvim-treesitter/nvim-treesitter",
  --   run = ":TSUpdate",
  -- }
  -- use "p00f/nvim-ts-rainbow"

  -- FILE MANAGEMENT --
  -- use "vifm/vifm.vim"
  use "mhinz/vim-startify"
-- use greeter
  -- use {
  --     'goolord/alpha-nvim',
  --     config = function ()
  --         require'alpha'.setup(require'alpha.themes.dashboard'.config)
  --     end
  -- }

  use "mbbill/undotree"
  use "ptzz/lf.vim"
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  --use "lambdalisue/fern.vim"
  --use "lambdalisue/fern-git-status.vim"
  --use "lambdalisue/nerdfont.vim"
  --use "lambdalisue/fern-renderer-nerdfont.vim"
  --use "lambdalisue/fern-hijack.vim"

  -- TERMINAL
  use "voldikss/vim-floaterm"
  use "akinsho/toggleterm.nvim"
  use "junegunn/fzf"
  use "junegunn/fzf.vim"

  -- GIT
  use "lewis6991/gitsigns.nvim"
  use 'kdheepak/lazygit.nvim'

  --BUFFER
  use { 'dracula/vim', as = 'dracula' } --vcscode colorscheme
  -- use "tpope/vim-commentary" --comment with gc
  use 'numToStr/Comment.nvim'
  use "tpope/vim-surround" --surround text
  use "akinsho/bufferline.nvim" --buffer bar / tab and more
  use "moll/vim-bbye" --do not exit windows
  use 'jeetsukumaran/vim-buffergator' --bufferlist and other stuff
  use "nvim-telescope/telescope.nvim"
  use "nvim-telescope/telescope-fzy-native.nvim"
  use 'nvim-telescope/telescope-media-files.nvim'
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  use 'windwp/nvim-spectre' --find and replace
  use "rbgrouleff/bclose.vim" --don't close buffer's windows
  use {
    'VonHeikemen/searchbox.nvim', --search and replace box
    requires = {
      {'MunifTanjim/nui.nvim'}
    }
  }

  -- use "henriquehbr/nvim-startup.lua"  --measure startup time
  use "lewis6991/impatient.nvim" --improve startup time

  --NOTIFY WIDGET
  -- use 'rcarriga/nvim-notify'

  --SCROOL SMOOTH
  -- use 'karb94/neoscroll.nvim'

--SIDEBAR
  use 'sidebar-nvim/sidebar.nvim'

--toggle transparent
use 'xiyaowong/transparent.nvim'

--TAGBAR
-- use 'preservim/tagbar'

  -- Load on an autocommand event
  -- use {'andymass/vim-matchup', event = 'VimEnter'}

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins

  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
