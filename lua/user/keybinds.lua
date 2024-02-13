local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap


local harpoon = require("harpoon")

-- -- REQUIRED
harpoon:setup()
-- -- REQUIRED
vim.keymap.set("n", "<M-a>", function() harpoon:list():append() end)
vim.keymap.set("n", "<M-h>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

-- write file with localleader + w
keymap("n", "<M-w>", ":wa<cr>", { noremap = true, silent = true, desc = "Write all files" })
-- quit with localleader + q
keymap("n", "<M-q>", ":q<cr>", { noremap = true, silent = true, desc = "Quit all" })
-- close buffer with localleader + x
keymap("n", "<M-x>", ":bd<cr>", { noremap = true, silent = true, desc = "Close Buffer" })
keymap("i", "jk", "<esc>", opts)
keymap("i", "jj", "<esc> :wa<cr>", opts)


keymap("n", "<up>", "", opts)
keymap("n", "<down>", "", opts)
keymap("n", "<left>", "", opts)
keymap("n", "<right>", "", opts)

keymap("i", "<up>", "", opts)
keymap("i", "<down>", "", opts)
keymap("i", "<left>", "", opts)
keymap("i", "<right>", "", opts)

keymap("t", "<up>", "", opts)
keymap("t", "<down>", "", opts)
keymap("t", "<left>", "", opts)
keymap("t", "<right>", "", opts)

lvim.keys.normal_mode["|"] = ":vsp | enew<CR>"
lvim.keys.normal_mode["-"] = ":sp | enew<CR>"

