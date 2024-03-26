-- Exit
vim.keymap.set("n", "<C-q>", "<cmd>qa<CR>")
vim.keymap.set("n", "<C-Q>", "<cmd>qa!<CR>")

-- Move lines
vim.keymap.set("n", "<F3>", "<cmd>m -2<CR>")
vim.keymap.set("n", "<F4>", "<cmd>m +1<CR>")

-- Windows
vim.keymap.set("n", "<leader><C-Up>", "<cmd>resize +1<CR>")
vim.keymap.set("n", "<leader><C-Down>", "<cmd>resize -1<CR>")
vim.keymap.set("n", "<leader><C-Left>", "<cmd>vertical resize +1<CR>")
vim.keymap.set("n", "<leader><C-Right>", "<cmd>vertical resize -1<CR>")

-- Terminal
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>")
