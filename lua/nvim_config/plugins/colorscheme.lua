return {
    "EdenEast/nightfox.nvim",
    lazy = false,
    config = function()
        local colorscheme = require('nightfox')

        colorscheme.setup({ })
        vim.cmd("colorscheme nordfox")
        vim.api.nvim_set_hl(0, "Normal", { bg = "#171717" })
        vim.api.nvim_set_hl(0, "Comment", { fg = "#808080" })
        vim.api.nvim_set_hl(0, "PreProc", { fg = "#FF99CC" })
    end
}
