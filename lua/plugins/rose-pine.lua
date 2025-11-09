-- lua/plugins/rose-pine.lua
return {
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()
		require("rose-pine").setup({
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

--		vim.cmd("colorscheme rose-pine")
	end,
}
