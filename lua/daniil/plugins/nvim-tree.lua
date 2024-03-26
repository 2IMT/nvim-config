return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup({
            sync_root_with_cwd = true,
            filters = {
                git_ignored = false
            },
            diagnostics = {
                enable = true
            }
        })

        vim.keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>")
        vim.keymap.set("n", "<leader>ef", "<cmd>NvimTreeFocus<CR>")
        vim.keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>")
    end,
}
