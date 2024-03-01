local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

local harpoon = require("harpoon")
harpoon:setup()
lvim.builtin.which_key.mappings['h'] = {}

vim.keymap.set("n", "<spce>ha", function() harpoon:list():append() end)
vim.keymap.set("n", "<space>hh", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

-- Change '<C-g>' here to any keycode you like.
vim.keymap.set('i', '<M-y>', function() return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
vim.keymap.set('i', '<M-Space>', function() return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
vim.keymap.set('i', '<M-n>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true })
vim.keymap.set('i', '<M-b>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true })
vim.keymap.set('i', '<M-c>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
-- space space ti open files finder
keymap("n", "<Space><Space>", ":Telescope find_files<cr>", opts)
keymap("n", "<M-w>", ":wa<cr>", { noremap = true, silent = true, desc = "Write all files" })
keymap("n", "<M-q>", ":q<cr>", { noremap = true, silent = true, desc = "Quit all" })
keymap("n", "<M-x>", ":bd<cr>", { noremap = true, silent = true, desc = "Close Buffer" })

keymap("i", "jk", "<esc>", opts)
keymap("i", "jj", "<esc> :wa<cr>", opts)


vim.api.nvim_set_keymap('i', '<C-j>', '<Esc>:normal! 5j<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-k>', '<Esc>:normal! 5k<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', ':normal! 3j<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', ':normal! 3k<CR>', { noremap = true, silent = true })


keymap("n", "<up>", "", opts)
keymap("n", "<down>", "", opts)
keymap("n", "<left>", "", opts)
keymap("n", "<right>", "", opts)


lvim.keys.normal_mode["|"] = ":vsp | enew<CR>"
lvim.keys.normal_mode["-"] = ":sp | enew<CR>"
