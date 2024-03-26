return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        require("toggleterm").setup({})

        vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm size=11<CR>")
    end
}
