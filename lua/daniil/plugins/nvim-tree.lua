return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup({
            filters = {
                git_ignored = false
            }
        })

        vim.keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>")
        vim.keymap.set("n", "<leader>ef", "<cmd>NvimTreeFocus<CR>")
        vim.keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>")
    end,
}
