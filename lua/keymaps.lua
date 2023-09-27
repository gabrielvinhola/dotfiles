--Disable arrow keys--
vim.keymap.set('', '<Up>', '<Nop>', {})
vim.keymap.set('', '<Down>', '<Nop>', {})
vim.keymap.set('', '<Left>', '<Nop>', {})
vim.keymap.set('', '<Right>', '<Nop>', {})
--Windows--
--Moving Windows--
vim.keymap.set('', 'sh', '<C-w>h', {})
vim.keymap.set('', 'sj', '<C-w>j', {})
vim.keymap.set('', 'sk', '<C-w>k', {})
vim.keymap.set('', 'sl', '<C-w>l', {})
--Split Window--
vim.keymap.set('', 'ss', ':split<Return><C-w>w', {})
vim.keymap.set('', 'sv', ':vsplit<Return><C-w>w', {})
--Resize Window--
vim.keymap.set('n', '<C-w><Left>', '<C-w><', {})
vim.keymap.set('n', '<C-w><Right>', '<C-w>>', {})
vim.keymap.set('n', '<C-w><Up>', '<C-w>+', {})
vim.keymap.set('n', '<C-w><Down>', '<C-w>-', {})
