vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'kdheepak/lazygit.nvim'
  use {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    requires = {
      { 'nvim-lua/plenary.nvim' },
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
        cond = function()
          return vim.fn.executable 'make' == 1
        end
      },
      { "kdheepak/lazygit.nvim" }
    },
    config = function()
      require("telescope").load_extension("lazygit")
    end,
  }

  -- color theme
  use('catppuccin/nvim', { name = 'catppuccin' })

  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use('nvim-treesitter/playground')
  use('ThePrimeagen/harpoon')
  use('mbbill/undotree')
  use('lukas-reineke/indent-blankline.nvim', { main = "ibl" })
  use('akinsho/toggleterm.nvim', { tag = '*' })
  use('windwp/nvim-autopairs')
  use('lewis6991/gitsigns.nvim')
  use('numToStr/Comment.nvim')

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },             -- Required
      { 'williamboman/mason.nvim' },           -- Optional
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },                                     -- Required
      { 'hrsh7th/cmp-nvim-lsp',             after = 'nvim-cmp' }, -- Required
      { 'hrsh7th/cmp-buffer',               after = 'nvim-cmp' }, -- Optional
      { 'hrsh7th/cmp-path',                 after = 'nvim-cmp' }, -- Optional
      { 'hrsh7th/cmp-nvim-lua' },                                 -- Optional
      { 'saadparwaiz1/cmp_luasnip' },                             -- Optional

      -- Snippets
      { 'L3MON4D3/LuaSnip' },             -- Required
      { 'rafamadriz/friendly-snippets' }, -- Optional
      { 'j-hui/fidget.nvim'}
    }
  }

  use("ThePrimeagen/vim-be-good")
  use {
    "folke/trouble.nvim",
    dependecies = { "nvim-tree/nvim-web-devicons" }
  }

  use 'pangloss/vim-javascript'    --JS support
  use 'leafgarland/typescript-vim' --TS support
  use 'maxmellon/vim-jsx-pretty'   --JS and JSX syntax

  --debuggging
  use 'rcarriga/nvim-dap-ui'
  use 'nvim-telescope/telescope-dap.nvim'

end)
