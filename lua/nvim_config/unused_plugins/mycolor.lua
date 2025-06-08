local M = {}

-- Define your color palette
local palette = {
    bg = "#101010",
    fg = "#cdd6f4",
    red = "#963232",
    green = "#64AA64",
    yellow = "#C8C800",
    blue = "#89b4fa",
    magenta = "#cba6f7",
    cyan = "#94e2d5",
    white = "#bac2de",
    black = "#11111b",
    comment = "#6c7086",
    selection = "#585b70",
    purple = "#5055C8",
}

function M.setup()
    -- Set terminal colors to true
    vim.opt.termguicolors = true

    -- Clear existing highlights (optional, good for a fresh start)
    vim.cmd("highlight clear")
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end

    -- Set background option for light/dark themes
    vim.o.background = "dark"

    -- Set the Normal group
    vim.api.nvim_set_hl(0, "Normal", { fg = palette.fg, bg = palette.bg })

    -- Basic syntax highlighting
    vim.api.nvim_set_hl(0, "Comment", { fg = palette.comment, italic = true })
    vim.api.nvim_set_hl(0, "Constant", { fg = palette.magenta })
    vim.api.nvim_set_hl(0, "String", { fg = palette.green })
    vim.api.nvim_set_hl(0, "Number", { fg = palette.magenta })
    vim.api.nvim_set_hl(0, "Boolean", { fg = palette.magenta })
    vim.api.nvim_set_hl(0, "Identifier", { fg = palette.blue })
    vim.api.nvim_set_hl(0, "Function", { fg = palette.red })
    vim.api.nvim_set_hl(0, "Statement", { fg = palette.cyan, bold = true })
    vim.api.nvim_set_hl(0, "Keyword", { fg = palette.red })
    vim.api.nvim_set_hl(0, "Type", { fg = palette.green })
    vim.api.nvim_set_hl(0, "Error", { fg = palette.red, bg = palette.black })
    vim.api.nvim_set_hl(0, "Todo", { fg = palette.blue, bold = true })

    -- UI elements
    vim.api.nvim_set_hl(0, "Visual", { bg = palette.selection })
    vim.api.nvim_set_hl(0, "Search", { fg = palette.black, bg = palette.yellow })
    vim.api.nvim_set_hl(0, "IncSearch", { fg = palette.black, bg = palette.orange, reverse = true })
    vim.api.nvim_set_hl(0, "LineNr", { fg = palette.comment })
    vim.api.nvim_set_hl(0, "CursorLineNr", { fg = palette.yellow, bold = true })
    vim.api.nvim_set_hl(0, "CursorLine", { bg = palette.selection })
    vim.api.nvim_set_hl(0, "ColorColumn", { bg = palette.black })
    vim.api.nvim_set_hl(0, "VertSplit", { fg = palette.comment })
    vim.api.nvim_set_hl(0, "NonText", { fg = palette.comment })
    vim.api.nvim_set_hl(0, "FoldColumn", { fg = palette.comment, bg = palette.bg })
    vim.api.nvim_set_hl(0, "Folded", { fg = palette.comment, bg = palette.selection })

    -- Pmenu (popup menu for completion)
    vim.api.nvim_set_hl(0, "Pmenu", { fg = palette.fg, bg = palette.selection })
    vim.api.nvim_set_hl(0, "PmenuSel", { fg = palette.yellow, bg = palette.blue })
    vim.api.nvim_set_hl(0, "PmenuSbar", { bg = palette.comment })
    vim.api.nvim_set_hl(0, "PmenuThumb", { bg = palette.fg })

    -- StatusLine and TabLine
    vim.api.nvim_set_hl(0, "StatusLine", { fg = palette.fg, bg = palette.selection })
    vim.api.nvim_set_hl(0, "StatusLineNC", { fg = palette.comment, bg = palette.black })
    vim.api.nvim_set_hl(0, "TabLine", { fg = palette.comment, bg = palette.black })
    vim.api.nvim_set_hl(0, "TabLineFill", { bg = palette.black })
    vim.api.nvim_set_hl(0, "TabLineSel", { fg = palette.yellow, bg = palette.blue })

    -- Diagnostics (LSP)
    vim.api.nvim_set_hl(0, "DiagnosticError", { fg = palette.red })
    vim.api.nvim_set_hl(0, "DiagnosticWarning", { fg = palette.yellow })
    vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = palette.blue })
    vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = palette.green })
    -- You might also want to set `DiagnosticUnderlineError`, etc.
    vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { underline = true, sp = palette.red })
    vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarning", { underline = true, sp = palette.yellow })
    vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { underline = true, sp = palette.blue })
    vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { underline = true, sp = palette.green })

    -- Custom highlight for specific plugins (e.g., NvimTree)
    vim.api.nvim_set_hl(0, "NvimTreeRootFolder", { fg = palette.blue, bold = true })
    vim.api.nvim_set_hl(0, "NvimTreeFolderName", { fg = palette.fg })
    vim.api.nvim_set_hl(0, "NvimTreeFileName", { fg = palette.fg })
    vim.api.nvim_set_hl(0, "NvimTreeSpecialFile", { fg = palette.yellow, underline = true })

    -- Add more highlight groups as needed
end

return M
