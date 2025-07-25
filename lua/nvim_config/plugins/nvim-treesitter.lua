return {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        local palette = {
            red = "#993F3A",
            orange = "#C27638",
            blue = "#6671C0",
            light_blue = "#38C2C2",
            green = "#8DC951",
            purple = "#6662A4",
            yellow = "#F6E85e",
            black = "#202020",
            white = "#E7E7E7",
            white_blue = "#A5D0D1",
            gray = "#B7B7B7",
            pink = "#B04DAB",
            lightgreen = "#32CD32",
        }

        configs.setup({
            ensure_installed = { "c", "lua", "vim" },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    --[[
    --Syntax-relatedsetting
    vim.api.nvim_set_hl(0,"Comment",{fg=palette.gray })
    vim.api.nvim_set_hl(0,"Constant",{fg=palette.red})
    vim.api.nvim_set_hl(0,"String",{fg=palette.green})
    vim.api.nvim_set_hl(0,"Character",{fg=palette.green})
    vim.api.nvim_set_hl(0,"Number",{fg=palette.red})
    vim.api.nvim_set_hl(0,"Boolean",{fg=palette.red})
    vim.api.nvim_set_hl(0,"Float",{fg=palette.red})
    vim.api.nvim_set_hl(0,"Identifier",{fg=palette.red})
    vim.api.nvim_set_hl(0,"Function",{fg=palette.blue })
    vim.api.nvim_set_hl(0,"Statement",{fg=palette.red})
    vim.api.nvim_set_hl(0,"Conditional",{fg=palette.red})
    vim.api.nvim_set_hl(0,"Repeat",{fg=palette.red})
    vim.api.nvim_set_hl(0,"Label",{fg=palette.red})
    vim.api.nvim_set_hl(0,"Operator",{fg=palette.red})
    vim.api.nvim_set_hl(0,"Keyword",{fg=palette.red})
    vim.api.nvim_set_hl(0,"Exception",{fg=palette.red})
    vim.api.nvim_set_hl(0,"PreProc",{fg=palette.red})
    vim.api.nvim_set_hl(0,"Include",{fg=palette.orange })
    vim.api.nvim_set_hl(0,"Define",{fg=palette.red})
    vim.api.nvim_set_hl(0,"Macro",{fg=palette.red})
    vim.api.nvim_set_hl(0,"PreCondit",{fg=palette.red})
    vim.api.nvim_set_hl(0,"Type",{fg=palette.green })
    vim.api.nvim_set_hl(0,"StorageClass",{fg=palette.red})
    vim.api.nvim_set_hl(0,"Structure",{fg=palette.red})
    vim.api.nvim_set_hl(0,"Typedef",{fg=palette.green })
    vim.api.nvim_set_hl(0,"Special",{fg=palette.red})
    vim.api.nvim_set_hl(0,"SpecialChar",{fg=palette.red})
    vim.api.nvim_set_hl(0,"Tag",{fg=palette.red})
    vim.api.nvim_set_hl(0,"Delimiter",{fg=palette.red})
    vim.api.nvim_set_hl(0,"SpecialComment",{fg=palette.red})
    vim.api.nvim_set_hl(0,"Debug",{fg=palette.red})
    vim.api.nvim_set_hl(0,"Underlined",{fg=palette.red})
    vim.api.nvim_set_hl(0,"Ignore",{fg=palette.red})
    vim.api.nvim_set_hl(0,"Error",{fg=palette.red})
    vim.api.nvim_set_hl(0,"Todo",{fg=palette.red})
    
    --UI/Editor-relatedsetting
    vim.api.nvim_set_hl(0,"ColorColumn",{fg=palette.red})
    vim.api.nvim_set_hl(0,"Conceal",{fg=palette.red})
    vim.api.nvim_set_hl(0,"FoldColumn",{fg=palette.red})
    vim.api.nvim_set_hl(0,"EndOfBuffer",{fg=palette.red})
    vim.api.nvim_set_hl(0,"TermCursor",{fg=palette.red})
    vim.api.nvim_set_hl(0,"ErrorMsg",{fg=palette.red})
    vim.api.nvim_set_hl(0,"WarningMsg",{fg=palette.red})
    vim.api.nvim_set_hl(0,"StderrMsg",{fg=palette.red})
    vim.api.nvim_set_hl(0,"StdoutMsg",{fg=palette.red})
    vim.api.nvim_set_hl(0,"WinSeparator",{fg=palette.red})
    vim.api.nvim_set_hl(0,"Folded",{fg=palette.red})
    vim.api.nvim_set_hl(0,"FoldColumn",{fg=palette.red})
    vim.api.nvim_set_hl(0,"SignColumn",{fg=palette.red})
    vim.api.nvim_set_hl(0,"Substitute",{fg=palette.red})
    vim.api.nvim_set_hl(0,"LineNr",{fg=palette.white_blue})
    vim.api.nvim_set_hl(0,"LineNrAbove",{fg=palette.white_blue})
    vim.api.nvim_set_hl(0,"LineNrBelow",{fg=palette.white_blue})
    vim.api.nvim_set_hl(0,"CursorLineNr",{fg=palette.white_blue})
    vim.api.nvim_set_hl(0,"CursorLineFold",{fg=palette.red})
    vim.api.nvim_set_hl(0,"CursorLineSign",{fg=palette.red})
    vim.api.nvim_set_hl(0,"NodeMsg",{fg=palette.red})
    vim.api.nvim_set_hl(0,"MsgArea",{fg=palette.red})
    vim.api.nvim_set_hl(0,"MsgSeparator",{fg=palette.red})
    vim.api.nvim_set_hl(0,"MoreMsg",{fg=palette.red})
    vim.api.nvim_set_hl(0,"NonText",{fg=palette.red})
    vim.api.nvim_set_hl(0,"Normal",{fg=palette.white_blue,bg=palette.black})
    vim.api.nvim_set_hl(0,"NormalFloat",{fg=palette.red})
    vim.api.nvim_set_hl(0,"Pmenu",{fg=palette.red})
    vim.api.nvim_set_hl(0,"PmenuSel",{fg=palette.red})
    vim.api.nvim_set_hl(0,"PmenuKind",{fg=palette.red})
    vim.api.nvim_set_hl(0,"PmenuKindSel",{fg=palette.red})
    vim.api.nvim_set_hl(0,"PmenuExtra",{fg=palette.red})
    vim.api.nvim_set_hl(0,"PmenuSbar",{fg=palette.red})
    vim.api.nvim_set_hl(0,"PmenuThumb",{fg=palette.red})
    vim.api.nvim_set_hl(0,"ComplMathIns",{fg=palette.red})
    vim.api.nvim_set_hl(0,"Question",{fg=palette.red})
    vim.api.nvim_set_hl(0,"Changed",{fg=palette.red})
    vim.api.nvim_set_hl(0,"CurSearch",{fg=palette.red})
    vim.api.nvim_set_hl(0,"Cursor",{fg=nil})
    vim.api.nvim_set_hl(0,"lCursor",{fg=palette.red})
    vim.api.nvim_set_hl(0,"CursorIM",{fg=palette.red})
    vim.api.nvim_set_hl(0,"CursorColumn",{fg=palette.red})
    vim.api.nvim_set_hl(0,"CursorLine",{fg=nil})
    vim.api.nvim_set_hl(0,"Directory",{fg=palette.light_blue})
    vim.api.nvim_set_hl(0,"DiffAdd",{fg=palette.red})
    vim.api.nvim_set_hl(0,"ColorColumn",{fg=palette.red})
    vim.api.nvim_set_hl(0,"MatchParen",{fg=palette.red})
    vim.api.nvim_set_hl(0,"Pmenu",{fg=palette.red})
    vim.api.nvim_set_hl(0,"IncSearch",{fg=palette.red})
    vim.api.nvim_set_hl(0,"Search",{fg=palette.red})
    vim.api.nvim_set_hl(0,"Visual",{fg=palette.red})
    vim.api.nvim_set_hl(0,"VisualNOS",{fg=palette.red})
    vim.api.nvim_set_hl(0,"TabLine",{fg=palette.red})
    vim.api.nvim_set_hl(0,"StatusLine",{fg=palette.red})
    vim.api.nvim_set_hl(0,"StatusLineNC",{fg=palette.red})
    vim.api.nvim_set_hl(0,"VerSplit",{fg=palette.red})
    vim.api.nvim_set_hl(0,"SpellBac",{fg=palette.red})
    vim.api.nvim_set_hl(0,"SpellLocal",{fg=palette.red})
    vim.api.nvim_set_hl(0,"SpellRare",{fg=palette.red})
    vim.api.nvim_set_hl(0,"QuickFixLine",{fg=palette.red})
    vim.api.nvim_set_hl(0,"Whitespace",{fg=palette.red})
    vim.api.nvim_set_hl(0,"ModeMsg",{fg=palette.red})
    vim.api.nvim_set_hl(0,"SpippetTabstop",{fg=palette.red})
    vim.api.nvim_set_hl(0,"SpecialKey",{fg=palette.red})
    vim.api.nvim_set_hl(0,"SpellCap",{fg=palette.red})
    vim.api.nvim_set_hl(0,"StatusLineTerm",{fg=palette.red})
    vim.api.nvim_set_hl(0,"StatusLineTermNC",{fg=palette.red})
    vim.api.nvim_set_hl(0,"Title",{fg=palette.yellow})
    vim.api.nvim_set_hl(0,"ScrllBar",{fg=palette.red})

    --Diff-relatedsetting
    vim.api.nvim_set_hl(0,"Added",{fg=palette.red})
    vim.api.nvim_set_hl(0,"Changed",{fg=palette.red})
    vim.api.nvim_set_hl(0,"Removed",{fg=palette.red})
    vim.api.nvim_set_hl(0,"DiffAdd",{fg=palette.red})
    vim.api.nvim_set_hl(0,"DiffChanged",{fg=palette.red})
    vim.api.nvim_set_hl(0,"DiffDelete",{fg=palette.red})
    vim.api.nvim_set_hl(0,"DiffText",{fg=palette.red})
    vim.api.nvim_set_hl(0,"DiffTextAdd",{fg=palette.red})

    --nvim-treesittercapturegroups
    vim.api.nvim_set_hl(0,"@variable",{fg="#E4F7FF"})
    vim.api.nvim_set_hl(0,"@variable.builtin",{fg=palette.white})
    vim.api.nvim_set_hl(0,"@variable.parameter",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@variable.parameter.builtin",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@variable.member",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@constant",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@constant.builtin",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@constant.macro",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@module",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@module.builtin",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@label",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@string",{fg=palette.green })
    vim.api.nvim_set_hl(0,"@string.documentation",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@string.regexp",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@string.escape",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@string.special",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@string.special.symbol",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@string.special.path",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@string.special.url",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@character",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@character.special",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@boolean",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@number",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@number.float",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@type",{fg=palette.green })
    vim.api.nvim_set_hl(0,"@type.builtin",{fg=palette.green })
    vim.api.nvim_set_hl(0,"@type.definition",{fg=palette.green })
    vim.api.nvim_set_hl(0,"@attribute",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@attribute.builtin",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@function",{fg=palette.blue })
    vim.api.nvim_set_hl(0,"@function.builtin",{fg=palette.blue })
    vim.api.nvim_set_hl(0,"@function.call",{fg=palette.blue })
    vim.api.nvim_set_hl(0,"@function.macro",{fg=palette.blue })
    vim.api.nvim_set_hl(0,"@function.method",{fg=palette.blue })
    vim.api.nvim_set_hl(0,"@function.method.calll",{fg=palette.blue })
    vim.api.nvim_set_hl(0,"@constructor",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@operatro",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@keyword",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@keyword.coroutine.builtin",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@keyword.function",{fg=palette.blue })
    vim.api.nvim_set_hl(0,"@keyword.operator",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@keyword.import",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@keyword.type",{fg=palette.green })
    vim.api.nvim_set_hl(0,"@keyword.modifier",{fg=palette.gray })
    vim.api.nvim_set_hl(0,"@keyword.repeat",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@keyword.return",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@keyword.debug",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@keyword.exception",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@keyword.conditional",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@keyword.conditional.ternary",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@keyword.directive",{fg=palette.orange })
    vim.api.nvim_set_hl(0,"@keyword.directive.define",{fg=palette.orange })
    vim.api.nvim_set_hl(0,"@punctuation.delimiter",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@punctuation.bracket",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@punctuation.special",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@comment",{fg=palette.gray })
    vim.api.nvim_set_hl(0,"@comment.documentation",{fg=palette.gray })
    vim.api.nvim_set_hl(0,"@comment.todo",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@comment.error",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@comment.warning",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@comment.note",{fg=palette.gray })
    vim.api.nvim_set_hl(0,"@markup.strong",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@markup.italic",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@markup.strikethrough",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@markup.underline",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@markup.heading",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@markup.heading.1",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@markup.heading.2",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@markup.heading.3",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@markup.heading.4",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@markup.heading.5",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@markup.heading.6",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@markup.quote",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@markup.math",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@markup.link",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@markup.link.label",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@markup.link.url",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@markup.raw",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@markup.raw.block",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@markup.list",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@markup.list.checked",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@markup.list.unchecked",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@diff.plus",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@diff.minus",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@diff.delta",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@tag",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@tag.builtin",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@tag.attribute",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@tag.delimiter",{fg=palette.red})
    vim.api.nvim_set_hl(0,"@filename",{fg=palette.white_blue})

    --Nvim-Tree-related
    vim.api.nvim_set_hl(0,"NvimTreeFolderIcon",{fg="#80989B"})
    vim.api.nvim_set_hl(0,"NvimTreeFileName",{fg=palette.red})
    --]]
    end
}
