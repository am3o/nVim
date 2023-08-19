vim.g.mapleader = " "

vim.keymap.set("n", "<leader>vp", vim.cmd.Ex, { silent = true, desc = "[V]iew [P]roject" })
vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format, { silent = true, desc = "[F]ormat [F]ile" })

-- Navigation
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-o>", "<C-o>zz")

-- Functions
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
