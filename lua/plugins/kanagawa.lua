return {
	"rebelot/kanagawa.nvim",
	config = function()
		require("kanagawa").setup({
            transparent = true,
			disable_italics = true,
			commentStyle = { italic = false },
			keywordStyle = { italic = false },
			overrides = function()
				return {
					["@variable.builtin"] = { italic = false },
				}
			end,
		})

--        vim.cmd("colorscheme kanagawa-dragon")
    vim.cmd("colorscheme kanagawa-wave")
	end,
}
