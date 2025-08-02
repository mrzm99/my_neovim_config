vim.hl = vim.highlight
require("nvim_config.core")
require("nvim_config.lazy")
-- C言語ファイルを開いたときに自動コメント挿入を無効にする
vim.api.nvim_create_autocmd("FileType", {
  pattern = "c, c++, cpp, *.h",
  callback = function()
    vim.opt_local.formatoptions:remove({'r', 'o'})
  end,
})
