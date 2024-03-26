return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
        local bufferline = require('bufferline')
        bufferline.setup {
            options = {
                buffer_close_icon = "",
                diagnostics = "coc"
            }
        }

        vim.keymap.set("n", "<leader>5", "<cmd>BufferLineCycleNext<CR>")
        vim.keymap.set("n", "<leader>4", "<cmd>BufferLineCyclePrev<CR>")
        vim.keymap.set("n", "<leader>bcl", "<cmd>BufferLineCloseLeft<CR>")
        vim.keymap.set("n", "<leader>bcr", "<cmd>BufferLineCloseRight<CR>")
        vim.keymap.set("n", "<leader>bco", "<cmd>BufferLineCloseOthers<CR>")
        vim.keymap.set("n", "<leader>bg", "<cmd>BufferLinePick<CR>")
        vim.keymap.set("n", "<leader>bpc", "<cmd>BufferLinePickClose<CR>")
    end
}
