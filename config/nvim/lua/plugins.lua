-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- Post-install/update hook with neovim command
  -- use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'arcticicestudio/nord-vim'
end)
