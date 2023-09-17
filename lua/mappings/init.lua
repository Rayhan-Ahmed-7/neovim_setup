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
map('n','<leader>e',':NvimTreeToggle<CR>',opts)
map('n','<leader>f',':NvimTreeFocus<CR>',opts)
