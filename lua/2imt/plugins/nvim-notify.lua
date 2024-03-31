return {
    "rcarriga/nvim-notify",
    priority = 999,
    config = function()
        vim.notify = require("notify")

        vim.keymap.set("n", "<leader>nd", function()
            vim.notify.dismiss()
        end)
    end
}
