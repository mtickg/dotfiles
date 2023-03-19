return {
  'folke/neodev.nvim',
  'folke/which-key.nvim',
  { 
    'folke/neoconf.nvim',
      config = function()
        require("Neoconf").setup()
      end,  
  },
  {
    'williamboman/mason.nvim',
    config = function()
      require("mason").setup()
    end,
  },
  {
    'williamboman/mason-lspconfig.nvim',
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "sumneko_lua" },
      })
    end,
  },
  'neovim/nvim-lspconfig',
  'nvim-tree/nvim-web-devicons',
  'nvim-lua/plenary.nvim',
  'MunifTanjim/nui.nvim',
  'folke/tokyonight.nvim',
  {
    'mtickg/onefinn.nvim',
      lazy = false, -- make sure we load this during startup if it is your main colorscheme
      priority = 1000, -- make sure to load this before all the other start plugins
      config = function()
        vim.cmd([[colorscheme onefinn]])
      end,
  },
  'nvim-lualine/lualine.nvim',
  'nvim-neo-tree/neo-tree.nvim',
  {
    'cshuaimin/ssr.nvim',
      -- init is always executed during startup, but doesn't load the plugin yet.
      init = function()
        vim.keymap.set({ 'n', 'x' }, '<leader>cR', function()
          -- this require will automatically load the plugin
          require('ssr').open()
        end, { desc = "Structural Replace" })
      end,
  },
}
