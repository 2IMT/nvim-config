return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
        local bufferline = require('bufferline')
        bufferline.setup {
            options = {
                buffer_close_icon = '',
            }
        }
    end
}
