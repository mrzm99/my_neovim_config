return {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        local palette = {
            red = "#ff0000",
            blue = "#0000ff",
            powderblue = "#b0e0e6",
            steelblue = "#4682b4",
            green = "#008000",
            aqua = "#00ffff",
            midiumaquamarine = "#66cdaa",
            darkturquoise = "#00ced1",
            purple = "#6662a4",
            yellow = "#f6e85e",
            black = "#000000",
            white = "#ffffff",
            gray = "#808080",
            lightgreen = "#32cd32",
            teal = "#008080",
        }

        configs.setup({
            ensure_installed = { "c", "lua", "vim" },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })

        -- Syntax-related setting 
        vim.api.nvim_set_hl(0, "Comment", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "Constant", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "String", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "Identifier", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "Function", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "Statement", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "PreProc", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "Type", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "Special", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "UnderLined", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "Ignore", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "Error", { fg = palette.purple })
        
        -- UI/Editor-related setting
        vim.api.nvim_set_hl(0, "Normal", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "NormalFloat", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "NormalNC", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "NonText", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "LineNr", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "CursorLineNr", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "Folded", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "FoldColumn", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "SignColumn", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "CusorLine", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "CursorColumn", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "ColorColumn", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "MatchParen", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "Pmenu", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "IncSearch", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "Search", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "Visual", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "VisualNOS", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "TabLine", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "StatuLine", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "StatusLineNC", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "VertSplit", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "WinSeparator", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "Title", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "ErrorMsg", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "WarningMsg", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "MoreMsg", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "Question", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "Directory", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "Conceal", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "SpellBad", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "SpellLocal", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "SpellRare", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "QuickFixLine", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "Whitespace", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "ModeMsg", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "MsgArea", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "MsgSeparator", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "Folded", { fg = palette.purple })
        vim.api.nvim_set_hl(0, "FoldColumn", { fg = palette.purple })
         
        -- Diff-related setting

        -- nvim-treesitter capture groups 
        vim.api.nvim_set_hl(0, "@keyword.function", { fg = palette.purple }) 
        vim.api.nvim_set_hl(0, "@keyword.operator", { fg = palette.white }) 
        vim.api.nvim_set_hl(0, "@keyword.return", { fg = palette.red }) 
        vim.api.nvim_set_hl(0, "@keyword.directive", { fg = palette.red })
        vim.api.nvim_set_hl(0, "@variable.builtin", { fg = palette.red }) 
        vim.api.nvim_set_hl(0, "@variable.parameter", { fg = palette.red }) 
        vim.api.nvim_set_hl(0, "@variable.member", { fg = palette.gray })
        vim.api.nvim_set_hl(0, "@function.builtin", { fg = palette.purple }) 
        vim.api.nvim_set_hl(0, "@function.call", { fg = palette.purple }) 
        vim.api.nvim_set_hl(0, "@function.macro", { fg = palette.red }) 
        vim.api.nvim_set_hl(0, "@type.buildin", { fg = palette.red }) 
        vim.api.nvim_set_hl(0, "@type.definition", { fg = palette.green }) 
        vim.api.nvim_set_hl(0, "@constant.bulitin", { fg = palette.yellow }) 
        vim.api.nvim_set_hl(0, "@constant.macro", { fg = palette.yellow })
        vim.api.nvim_set_hl(0, "@conditional", { fg = palette.yellow })
        vim.api.nvim_set_hl(0, "@repeat", { fg = palette.yellow })
        vim.api.nvim_set_hl(0, "@string", { fg = palette.green }) 
        vim.api.nvim_set_hl(0, "@character", { fg = palette.green })
        vim.api.nvim_set_hl(0, "@number", { fg = palette.green }) 
        vim.api.nvim_set_hl(0, "@boolean", { fg = palette.red }) 
        vim.api.nvim_set_hl(0, "@comment", { fg = palette.gray }) 
        vim.api.nvim_set_hl(0, "@operator", { fg = palette.gray }) 
        vim.api.nvim_set_hl(0, "@punctuation", { fg = palette.white }) 
        vim.api.nvim_set_hl(0, "@include", { fg = palette.white })
        vim.api.nvim_set_hl(0, "@constructor", { fg = palette.gray }) 
        vim.api.nvim_set_hl(0, "@tag", { fg = palette.red }) 
        vim.api.nvim_set_hl(0, "@field", { fg = palette.gray }) 
        vim.api.nvim_set_hl(0, "@attribute", { fg = palette.red }) 
        vim.api.nvim_set_hl(0, "@label", { fg = palette.red }) 
        vim.api.nvim_set_hl(0, "@propery", { fg = palette.red })

        -- Text/Markup Specific Categories
    end
}
