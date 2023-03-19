-- Leader
-- vim.g.mapleader = '\\'

local keymap = vim.keymap

keymap.set('n', 'x', '"_x')

-- Delete without yank
keymap.set('', 'nd', '"_d')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')
-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- Terminal
keymap.set('n', '<C-w>t', ':terminal<Return>')
-- keymap.set('n', '<C-w>T', ':split<Return>:resize 25<Return><C-w>w:terminal<Return>')

-- FileTree
keymap.set('', '<C-n>', ':Neotree toggle<Return>')
-- keymap.set('', '<C-n>', ':NvimTreeToggle<Return>')

-- BarBar
keymap.set('', '<Tab>', ':BufferNext<Return>')
keymap.set('', 'tc', ':BufferClose<Return>')
