return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
			})
		end,
	},
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			vim.cmd("colorscheme rose-pine")
		end,
	},
	{
		"nyoom-engineering/oxocarbon.nvim",
	},

	{
		"shaunsingh/nord.nvim",
	},
    {
        "rebelot/kanagawa.nvim"
    },
    {
        "sainnhe/everforest"
    },
    {
        "zenbones-theme/zenbones.nvim",
        dependencies = "rktjmp/lush.nvim",
        lazy = false,
        priority = 1000,
    },
    {
        'Yazeed1s/oh-lucy.nvim'
    },
}
