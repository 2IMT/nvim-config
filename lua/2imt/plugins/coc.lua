return {
    "neoclide/coc.nvim",
    branch = "release",
    config = function()
        local opts = { silent = true }

        vim.keymap.set("n", "<leader>f", "<cmd>call CocAction('format')<CR>", opts)

        vim.keymap.set("n", "<leader>cdd", "<cmd>CocDiagnostics<CR>")
        vim.keymap.set("n", "<leader>cdn", "<Plug>(coc-diagnostic-next)", opts)
        vim.keymap.set("n", "<leader>cdp", "<Plug>(coc-diagnostic-prev)", opts)

        vim.keymap.set("n", "<leader>cdf", "<Plug>(coc-definition)", opts)
        vim.keymap.set("n", "<leader>ctd", "<Plug>(coc-type-definition)", opts)
        vim.keymap.set("n", "<leader>cim", "<Plug>(coc-implementation)", opts)
        vim.keymap.set("n", "<leader>cdr", "<Plug>(coc-references)", opts)

        vim.keymap.set("n", "<leader>cac", "<Plug>(coc-codeaction-cursor)", opts)
        vim.keymap.set("x", "<leader>cas", "<Plug>(coc-codeaction-selected)", opts)
        vim.keymap.set("n", "<leader>cas", "<Plug>(coc-codeaction-source)", opts)
        vim.keymap.set("n", "<leader>car", "<Plug>(coc-codeaction-refactor)", opts)
        vim.keymap.set("x", "<leader>car", "<Plug>(coc-codeaction-refactor-selected)", opts)

        vim.keymap.set("n", "<leader>cr", "<Plug>(coc-rename)", opts)

        vim.keymap.set("n", "<leader>cl", "<Plug>(coc-codelens-action)",
            { silent = true, nowait = true })

        vim.keymap.set("n", "K", function()
            local cw = vim.fn.expand("<cword>")
            if vim.fn.index({ "vim", "help" }, vim.bo.filetype) >= 0 then
                vim.api.nvim_command("h " .. cw)
            elseif vim.api.nvim_eval("coc#rpc#ready()") then
                vim.fn.CocActionAsync("doHover")
            else
                vim.api.nvim_command("!" .. vim.o.keywordprg .. " " .. cw)
            end
        end, opts)
    end
}
