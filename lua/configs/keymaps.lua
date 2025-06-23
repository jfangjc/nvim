vim.g.mapleader = " "

vim.keymap.set("n", "<leader>f", "<Cmd>Neotree toggle reveal<CR>")
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float)

vim.keymap.set("n", "<C-p>", ":")
vim.keymap.set("n", "<C-o>", "<Cmd>Telescope find_files<CR>")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "q:", "<nop>")
vim.keymap.set("n", "q", "<nop>")

vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

vim.keymap.set("t", "<ESC>", "<C-\\><C-n>", {noremap = true})

--vim.keymap.set("n", "<C-S-f>", vim.cmd.noh)
