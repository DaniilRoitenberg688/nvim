return {
	'nvim-telescope/telescope.nvim', tag = 'v0.2.0',
	dependencies = { 'nvim-lua/plenary.nvim' },

	config = function() 

		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<C-o>', builtin.find_files, { desc = 'Telescope find files' })
		vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Telescope find files' })
	end 
}
