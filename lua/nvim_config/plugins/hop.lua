return {
    "phaazon/hop.nvim",
    branch = "v2",
    config = function()
        local hop = require("hop")
        local keymap = vim.keymap

        hop.setup({
            multi_windows = true,
        })
        keymap.set("n", "<leader>mc", "<cmd>HopChar1<CR>", { desc = " ", noremap = true })
        keymap.set("n", "<leader>mw", "<cmd>HopWord<CR>", { desc = " ", noremap = true })
    end
}
