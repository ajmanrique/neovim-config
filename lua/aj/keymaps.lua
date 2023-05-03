-- Aliases
local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
local cmd = vim.cmd

map('', '<up>', '<nop>', {noremap = true})
map('', '<down>', '<nop>', {noremap = true})
map('', '<left>', '<nop>', {noremap = true})
map('', '<right>', '<nop>', {noremap = true})

map('i', '<C-k>', '<up>', default_opts)
map('i', '<C-j>', '<down>', default_opts)
map('i', '<C-h>', '<left>', default_opts)
map('i', '<C-l>', '<right>', default_opts)

vim.g.mapleader = " "
vim.keymap.set('n', '<leader>pv', cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>c", cmd.bdelete)

vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set("n", "<F3>", cmd.NvimTreeToggle)
vim.keymap.set("n", "<F2>", cmd.NvimTreeFindFileToggle)
