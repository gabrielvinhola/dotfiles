local opts = vim.o
opts.encoding = 'utf-8'
opts.number = true
opts.relativenumber = true
opts.termguicolors = true
opts.winblend = 0
opts.wildoptions = 'pum'
opts.pumblend = 5

local ok, theme = pcall(require, 'tokyonight')
if not ok then return end
vim.api.nvim_command('colorscheme tokyonight')
