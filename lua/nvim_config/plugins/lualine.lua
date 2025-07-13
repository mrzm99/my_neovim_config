return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local lualine = require("lualine")
        local ts_ctx = require("treesitter-context")

        lualine.setup({
            options = {
                icons_enabled = true,
                theme = "seoul256",
            },
            sections = {
                lualine_b = { "filename" },
                lualine_c = {
                                function()
                                    return ts_ctx.get_context()
                                end
                            },
            },
        })
    end
}
