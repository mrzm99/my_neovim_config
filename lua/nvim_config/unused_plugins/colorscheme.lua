return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        local bg = "#011628"
        local bg_dark = "#011423"
        local bg_highlight = "#143652"
        local bg_search = "#0A64AC"
        local bg_visual = "#275378"
        local fg = "#CBE0F0"
        local fg_dark = "#B4D0E9"
        local fg_gutter = "#627E97"
        local border = "#547998"

        require("tokyonight").setup({
            style = "storm",
            on_colors = function(colors)
                colors.bg = bg
                colors.bg_dark = bg_dark
                colors.bg_highligth = bg_highlgith
                colors.bg_popup = bg_dark
                colors.bg_search = bg_search
                colors.sidebar = bg_dark
                colors.statusline = bg_dark
                colors.visual = bg_visula
                colors.border = border
                colors.fg = fg
                colors.fg_dark = fg_dark
                colors.float = fg
                colors.gutter = fg_gutter
                colors.fg_sidebar = fg_dark
            end
        })
        vim.cmd("colorscheme tokyonight")
    end
}
