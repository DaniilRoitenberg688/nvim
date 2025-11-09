return {
    "ThePrimeagen/harpoon",

    config = function ()
        vim.keymap.set('n', '<C-a>', require("harpoon.mark").add_file, { noremap = true, silent = true } )
        vim.keymap.set('n', '<C-s>', require("harpoon.ui").toggle_quick_menu, { noremap = true, silent = true } )
        vim.keymap.set('n', '<leader>1', ':lua require("harpoon.ui").nav_file(1)<CR>', { noremap = true, silent = true } )
        vim.keymap.set('n', '<leader>2', ':lua require("harpoon.ui").nav_file(2)<CR>', { noremap = true, silent = true } )
        vim.keymap.set('n', '<leader>3', ':lua require("harpoon.ui").nav_file(3)<CR>', { noremap = true, silent = true } )
        vim.keymap.set('n', '<leader>4', ':lua require("harpoon.ui").nav_file(4)<CR>', { noremap = true, silent = true } )
        vim.keymap.set('n', '<leader>5', ':lua require("harpoon.ui").nav_file(5)<CR>', { noremap = true, silent = true } )
        vim.keymap.set('n', '<leader>6', ':lua require("harpoon.ui").nav_file(6)<CR>', { noremap = true, silent = true } )
        vim.keymap.set('n', '<leader>7', ':lua require("harpoon.ui").nav_file(7)<CR>', { noremap = true, silent = true } )

    end
}
