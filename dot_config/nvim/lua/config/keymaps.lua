-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
-- local opts = { noremap = true, silent = true, desc}

-- Delete a word bacward
keymap.set("n", "dw", 'vb"_d')

-- Select all
-- keymap.set("n", "<C-s>a", "gg<S-v>G")

-- Disable continuations
keymap.set("n", "<Leader>o", "o<Esc>^Da", { noremap = true, silent = true, desc = "Disable o Cont.." })
keymap.set("n", "<Leader>O", "O<Esc>^Da", { noremap = true, silent = true, desc = "Disable O Cont.." })

-- New Tab
keymap.set("n", "nte", ":tabedit")
