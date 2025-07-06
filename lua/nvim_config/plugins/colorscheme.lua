return {
    "AlexvZyl/nordic.nvim",
    lazy = false,
    primary = 1000,
    config = function()
        local colorscheme = require('nordic')

        colorscheme.load()
    end
}
