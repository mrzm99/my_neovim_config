return {
    "rockerBoo/boo-colorscheme-nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("boo-colorscheme").setup({
        })
    vim.cmd("colorscheme forest_stream")
    end
}
