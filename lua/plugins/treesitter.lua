return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = { "lua", "python", "rust", "html", 'c', 'css', 'csv', 'desktop', 'dockerfile', 'jinja', 'json', 'toml', 'vue', 'javascript', 'go'},
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
