
return {
	"olimorris/onedarkpro.nvim",
	name = "onedark",
	config = function()
		require("onedarkpro").setup({
			styles = {
				transparency = true,
			},
            disable_italics = true,
			commentStyle = { italic = false },
			keywordStyle = { italic = false },
			overrides = function()
				return {
					["@variable.builtin"] = { italic = false },
				}
			end,
		})
--        vim.cmd("colorscheme onedark")
	end,
}
