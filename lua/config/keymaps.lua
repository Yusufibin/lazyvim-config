-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- Double-clic pour entrer en mode insertion directement
map("n", "<2-LeftMouse>", "i<2-LeftMouse>", { noremap = true })

-- Scroll horizontal avec le pavé tactile
map({ "n", "v" }, "<ScrollWheelLeft>", "5zh", { noremap = true, desc = "Scroll left" })
map({ "n", "v" }, "<ScrollWheelRight>", "5zl", { noremap = true, desc = "Scroll right" })

-- Touche Suppr (Delete) : supprime le caractère devant
map("n", "<Del>", '"_x', { noremap = true })
map("i", "<Del>", "<Delete>", { noremap = true })

-- Select All (Ctrl+A)
map({ "n", "i" }, "<C-a>", "<Esc>ggVG", { noremap = true, desc = "Select All" })

-- Undo / Redo façon éditeur classique
map("n", "<C-z>", "u", { noremap = true, desc = "Undo" })
map("i", "<C-z>", "<Esc>ui", { noremap = true, desc = "Undo" })
map("n", "<C-y>", "<C-r>", { noremap = true, desc = "Redo" })

-- Copier / Coller / Couper avec le presse-papier système
map("v", "<C-c>", '"+y', { noremap = true, desc = "Copier" })
map("v", "<C-x>", '"+d', { noremap = true, desc = "Couper" })
map("v", "<C-v>", '"+p', { noremap = true, desc = "Coller (visual)" })
map("n", "<C-v>", '"+p', { noremap = true, desc = "Coller (normal)" })
map("i", "<C-v>", "<C-r>+", { noremap = true, desc = "Coller (insert)" })

-- Switcher entre buffers avec Ctrl + flèches
vim.keymap.set("n", "<C-Left>", "<cmd>bprevious<cr>", { desc = "Buffer précédent" })
vim.keymap.set("n", "<C-Right>", "<cmd>bnext<cr>", { desc = "Buffer suivant" })
