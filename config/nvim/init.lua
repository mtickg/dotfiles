local vim = vim
local api = vim.api

require('plugins')

vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.smarttab = true
-- don't want case sensitive searches
vim.o.ignorecase = true
-- but still want search to be smart. If i type a upper case thing, do a case
vim.o.smartcase = true
vim.o.clipboard = "unnamedplus"

-- colorscheme
-- vim.cmd [[set termguicolors]]
api.nvim_command [[colorscheme nord]]
