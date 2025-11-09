

vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set relativenumber")
vim.cmd("set number")
vim.cmd('nnoremap <Tab> <C-w>')
vim.cmd('noremap <BS> $')
vim.cmd('map <esc> :noh <CR>')
vim.api.nvim_set_keymap('v', '<C-y>', '"+y', { noremap = true, silent = true } )
vim.api.nvim_set_keymap('n', '<C-y>y', '"+yy', { noremap = true, silent = true } )
vim.cmd("noremap <C-p> \"+p")
vim.cmd("noremap <C-A-p> o<Esc>\"+p")
vim.cmd("inoremap <C-P> \"+p")
vim.cmd("map <C-d> <C-d>zz")
vim.cmd("map <C-u> <C-u>zz")
vim.opt.scrolloff = 8
--setup barbar
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<A-h>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-l>', '<Cmd>BufferNext<CR>', opts)

-- Re-order to previous/next
map('n', '<A-H>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<A-L>', '<Cmd>BufferMoveNext<CR>', opts)
--
---- Goto buffer in position...
map('n', '<C-1>', ':BufferGoto 1<CR>', opts)
map('n', '<C-2>', ':BufferGoto 2<CR>', opts)
map('n', '<C-3>', ':BufferGoto 3<CR>', opts)
map('n', '<C-4>', ':BufferGoto 4<CR>', opts)
map('n', '<C-5>', ':BufferGoto 5<CR>', opts)
map('n', '<C-6>', ':BufferGoto 6<CR>', opts)
map('n', '<C-7>', ':BufferGoto 7<CR>', opts)
map('n', '<C-8>', ':BufferGoto 8<CR>', opts)
map('n', '<C-9>', ':BufferGoto 9<CR>', opts)
map('n', '<C-0>', ':BufferLast<CR>', opts)
--
---- Pin/unpin buffer
map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
--
---- Goto pinned/unpinned buffer
----                 :BufferGotoPinned
----                 :BufferGotoUnpinned
--
---- Close buffer
map('n', '<C-x>', '<Cmd>BufferClose<CR>', opts)
--
---- Wipeout buffer
----                 :BufferWipeout
--
---- Close commands
----                 :BufferCloseAllButCurrent
----                 :BufferCloseAllButPinned
----                 :BufferCloseAllButCurrentOrPinned
----                 :BufferCloseBuffersLeft
----                 :BufferCloseBuffersRight
--
---- Magic buffer-picking mode
--map('n', '<C-p>',   '<Cmd>BufferPick<CR>', opts)
--map('n', '<C-s-p>', '<Cmd>BufferPickDelete<CR>', opts)
--
---- Sort automatically by...
--map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
--map('n', '<Space>bn', '<Cmd>BufferOrderByName<CR>', opts)
--map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
--map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
--map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)
--
---- Other:
---- :BarbarEnable - enables barbar (enabled by default)
---- :BarbarDisable - very bad command, should never be used



