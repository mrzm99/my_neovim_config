--[[
return {
    "tomasiser/vim-code-dark",
    lazy = false,
    config = function()

        vim.cmd("colorscheme codedark")
        vim.api.nvim_set_hl(0, "@keyword", { fg = "#D47EC0"})
        vim.api.nvim_set_hl(0, "Comment", { fg = "#808080" })
        vim.api.nvim_set_hl(0, "PreProc", { fg = "#FF99CC" })
    end
}
--]]
return {
    "mhartington/oceanic-next",
    lazy = false,
    config = function()
        vim.cmd("colorscheme OceanicNext")
    end
}
