local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent= true }

vim.g.mapleader = ' '
-- n = normal mode, <leader>e = leader key + e to run the command
-- :NvimTreeToogle = is the command to toggle the file explorer
-- <CR> is special key that simulates pressing the enter key
-- noremap = true => stands for no recursive mapping. when you create a key mapping in neovim without noremap the mapping can be recursively expanded. This means that if you create another mapping that uses the first mapping, the second mapping will also trigger the first one. potentially causing unexpected behavior or infinite loops.
-- For example --
--
-- -- Mapping 1 without noremap
-- map('n', 'a', 'b')
--
-- -- Mapping 2 with noremap
-- map('n', 'c', 'a')
-- Now when we press c it executes "a" and since a key is mapped to b it executes b
-- c => a => b 
-- and to prevent this we use noremap true
-- silent = true => suppresses the display of command execution messages.
map('n','<C-n>',':NvimTreeToggle<CR>',opts)
map('n','<leader>e',':NvimTreeFocus<CR>',opts)

-- Move to previous/next
map('n', '<S-Tab>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<Tab>', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<leader>1', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<leader>2', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<leader>3', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<leader>4', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<leader>5', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<leader>6', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<leader>7', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<leader>8', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<leader>9', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<leader>0', '<Cmd>BufferLast<CR>', opts)
-- Pin/unpin buffer
map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
