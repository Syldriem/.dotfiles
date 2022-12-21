local silent = { silent = true }
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
-- These functions are stored in harpoon.  A plugn that I am developing
vim.keymap.set("n", "<leader>a", mark.add_file, silent)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu, silent)

vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end)
