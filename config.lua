--  Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Forum: https://www.reddit.com/r/lunarvim/
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Discord: https://discord.com/invite/Xb9B4Ny
require("user.themes")
require("user.plugins")
require("user.keybinds")
require('colorizer').setup()
require('neoscroll').setup()
require("notify").setup({
  background_colour = "#000000",
})

lvim.builtin.cmp.formatting = {
  format = require("tailwindcss-colorizer-cmp").formatter
}

lvim.format_on_save = true
lvim.transparent_window = true
lvim.colorscheme = "rose-pine-moon"
lvim.word_wrap = true
vim.opt.relativenumber = true
