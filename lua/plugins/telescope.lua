return  {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.3',
	dependencies =  { 'nvim-lua/plenary.nvim' },
	config = function()
	local t = require('telescope')
	local builtin = require('telescope.builtin')
	t.setup{
		defaults = {
			file_ignore_patterns = {'.git', 'node_modules', 'target'}
		}
	}
	vim.keymap.set('n', ';f', builtin.find_files, {})
	vim.keymap.set('n', ';e', builtin.diagnostics, {})
	vim.keymap.set('n', ';r', builtin.live_grep, {})
	end
}
