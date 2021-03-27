local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end


return require('packer').startup(function()
  -- Packer can manage itself
  use {'wbthomason/packer.nvim', opt = true}

  -- Explorer
  use 'kyazdani42/nvim-tree.lua'

  -- Telescope
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-media-files.nvim'


  -- Autocomplete
  use 'hrsh7th/nvim-compe'
  use 'kevinhwang91/nvim-bqf'
  use 'windwp/nvim-autopairs'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/vim-vsnip'
  use 'glepnir/lspsaga.nvim'
  use 'onsails/lspkind-nvim'
  use 'kosayoda/nvim-lightbulb'
  use 'mfussenegger/nvim-jdtls'
  use 'mfussenegger/nvim-dap'

  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'nvim-treesitter/playground'
  use 'p00f/nvim-ts-rainbow'

  -- Devicons
  use 'kyazdani42/nvim-web-devicons'

  -- Statusline
  use 'glepnir/galaxyline.nvim'

  -- Colorscheme
  use 'arcticicestudio/nord-vim'

  -- Colorizer for colorvalues
  use 'norcalli/nvim-colorizer.lua'

  -- Git
  use 'lewis6991/gitsigns.nvim'

end)
