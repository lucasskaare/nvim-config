require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<C-j>", ":ToggleTerm direction=float<CR>", { desc = "Toggleterm fullscreen terminal" })
map("t", "<C-j>", "<C-\\><C-n>:Toggleterm direction=float<CR>", { desc = "Toggleterm fullscreen terminal" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
