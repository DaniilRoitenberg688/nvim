return {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup({
            opleader = {
                ---Line-comment keymap
              line = '<leader>/',
                ---Block-comment keymap
                block = '<leader>/',
            },
            toggler = {
                ---Line-comment toggle keymap
                line = '<leader>\\',
                ---Block-comment toggle keymap
                block = '<leader>\\',
            },
        })
    end
}
