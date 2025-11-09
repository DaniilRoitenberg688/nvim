return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require('neo-tree').setup({
            close_if_last_window = true,
            enable_git_status = true,
            window = {
                position = "current",
            },
            git_status = {
                symbols = {
                    -- Change type
                    added = "", -- or "✚", but this is redundant info if you use git_status_colors on the name
                    modified = "", -- or "", but this is redundant info if you use git_status_colors on the name
                    deleted = "✖", -- this can only be used in the git_status source
                    renamed = "󰁕", -- this can only be used in the git_status source
                    -- Status type
                    untracked = "",
                    ignored = "",
                    unstaged = "󰄱",
                    staged = "",
                    conflict = "",
                },
            },
            source_selector = {
               --  winbar = true,
                statusline = true
            },
            filesystem = {
                filtered_items = {
                    hide_dotfiles = false,
                    hide_gitignored = false,
                    hide_hidden = false
                }
            },
            hijack_netrw_behavior = "open_current",
        }
        )

        vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal current <CR>')
        --vim.keymap.set('n', '<C-n>', ':Explore')
    end
}
