return {
    "neoclide/coc.nvim",
    branch = "release",
    config = function()
        vim.keymap.set("n", "<leader>f", "<cmd>call CocAction('format')<CR>")

        vim.keymap.set("n", "<leader>cdd", "<cmd>CocDiagnostics<CR>")
        vim.keymap.set("n", "<leader>cdn", "<Plug>(coc-diagnostic-next)")
        vim.keymap.set("n", "<leader>cdp", "<Plug>(coc-diagnostic-prev)")

        vim.keymap.set("n", "<leader>cdf", "<Plug>(coc-definition)")
        vim.keymap.set("n", "<leader>ctd", "<Plug>(coc-type-definition)")
        vim.keymap.set("n", "<leader>cim", "<Plug>(coc-implementation)")
        vim.keymap.set("n", "<leader>cdr", "<Plug>(coc-references)")

        vim.keymap.set("n", "<leader>cac", "<Plug>(coc-codeaction-cursor)")
        vim.keymap.set("x", "<leader>cas", "<Plug>(coc-codeaction-selected)")
        vim.keymap.set("n", "<leader>cas", "<Plug>(coc-codeaction-source)")
        vim.keymap.set("n", "<leader>car", "<Plug>(coc-codeaction-refactor)")
        vim.keymap.set("x", "<leader>car", "<Plug>(coc-codeaction-refactor-selected)")

        vim.keymap.set("n", "<leader>cr", "<Plug>(coc-rename)")

        vim.keymap.set("n", "<leader>cl", "<Plug>(coc-codelens-action)")
    end
}
