vim.g.mapleader = " "

vim.keymap.set("n", "<leader>f", "<Cmd>Neotree toggle<CR>")

vim.keymap.set("n", "<C-p>", ":")
vim.keymap.set("n", "<C-o>", "<Cmd>Telescope find_files<CR>")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "q:", "<nop>")
vim.keymap.set("n", "q", "<nop>")

--vim.keymap.set("n", "<C-S-f>", vim.cmd.noh)
